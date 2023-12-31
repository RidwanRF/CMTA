// 
// fx_pre_vehicle.fx
//

//---------------------------------------------------------------------
// Variables
//---------------------------------------------------------------------
float3 sElementOffset = float3(0,0,0);
float3 sWorldOffset = float3(0,0,0);

float3 sCameraPosition = float3(0,0,0);
float3 sCameraForward = float3(0,0,0);
float3 sCameraUp = float3(0,0,0);

float sFov = 1;
float sAspect = 1;
float2 sMoveObject2D = float2(0,0);
float2 sScaleObject2D = float2(1,1);
float2 sRealScale2D = float2(1,1);
float sAlphaMult = 1;
float sProjZMult = 2;

float4 sColorFilter1 = float4(0,0,0,0);
float4 sColorFilter2 = float4(0,0,0,0);

//---------------------------------------------------------------------
// Include some common stuff
//---------------------------------------------------------------------
texture gTexture0 < string textureState="0,Texture"; >;
texture gTexture1 < string textureState="1,Texture"; >;
float4x4 gProjection : PROJECTION;
float4x4 gWorld : WORLD;
float4x4 gWorldView : WORLDVIEW;
texture secondRT < string renderTarget = "yes"; >;
float gTime : TIME;
float3 gCameraDirection = float3(0,0,-1);
float4 gLightAmbient : LIGHTAMBIENT;
float4 sLightDiffuse : LIGHTDIFFUSE;
float4 gLight1Specular < string lightState="1,Specular"; >;
int gLighting < string renderState="LIGHTING"; >;  
float4 gGlobalAmbient < string renderState="AMBIENT"; >;
int gAmbientMaterialSource < string renderState="AMBIENTMATERIALSOURCE"; >;
int gDiffuseMaterialSource < string renderState="DIFFUSEMATERIALSOURCE"; >;
int gEmissiveMaterialSource < string renderState="EMISSIVEMATERIALSOURCE"; >; 
float4 gMaterialAmbient < string materialState="Ambient"; >;
float4 gMaterialDiffuse < string materialState="Diffuse"; >;
float4 gMaterialSpecular < string materialState="Specular"; >;
float4 gMaterialEmissive < string materialState="Emissive"; >;
float gMaterialSpecPower < string materialState="Power"; >;
int CUSTOMFLAGS <string createNormals = "yes"; string skipUnusedParameters = "yes"; >;
static float4 gLightDiffuse = (sLightDiffuse.r + sLightDiffuse.g + sLightDiffuse.b) < 0.005 ? sLightDiffuse : float4(0.2,0.2,0.2,1);
int gStage1ColorOp < string stageState="1,COLOROP"; >;
float4 gTextureFactor < string renderState="TEXTUREFACTOR"; >;          
float3 gLightDirection = float3(0.507,-0.2,-0.507);

//---------------------------------------------------------------------
// Sampler for the main texture
//---------------------------------------------------------------------
sampler Sampler0 = sampler_state
{
    Texture = (gTexture0);
};

sampler Sampler1 = sampler_state
{
    Texture = (gTexture1);
};

//---------------------------------------------------------------------
// Structure of data sent to the vertex shader
//---------------------------------------------------------------------
struct VSInput
{
  float3 Position : POSITION0;
  float3 Normal : NORMAL0;
  float4 Diffuse : COLOR0;
  float2 TexCoord0 : TEXCOORD0;
  float2 TexCoord1 : TEXCOORD1;
};

//---------------------------------------------------------------------
// Structure of data sent to the pixel shader ( from the vertex shader )
//---------------------------------------------------------------------
struct PSInput
{
  float4 Position : POSITION0;
  float4 Diffuse : COLOR0;
  float3 Specular : COLOR1;
  float2 TexCoord0 : TEXCOORD0;
  float3 TexCoord1 : TEXCOORD1;
  float3 Normal : TEXCOORD2;
  float4 vPosition : TEXCOORD3;
  float2 Depth : TEXCOORD4;
};

//--------------------------------------------------------------------------------------
// createViewMatrix
//--------------------------------------------------------------------------------------
float4x4 createViewMatrix( float3 pos, float3 fwVec, float3 upVec )
{
    float3 zaxis = normalize( fwVec);    // The "forward" vector.
    float3 xaxis = normalize( cross( -upVec, zaxis ));// The "right" vector.
    float3 yaxis = cross( xaxis, zaxis );     // The "up" vector.

    // Create a 4x4 view matrix from the right, up, forward and eye position vectors
    float4x4 viewMatrix = {
        float4(      xaxis.x,            yaxis.x,            zaxis.x,       0 ),
        float4(      xaxis.y,            yaxis.y,            zaxis.y,       0 ),
        float4(      xaxis.z,            yaxis.z,            zaxis.z,       0 ),
        float4(-dot( xaxis, pos ), -dot( yaxis, pos ), -dot( zaxis, pos ),  1 )
    };
    return viewMatrix;
}

//------------------------------------------------------------------------------------------
// createProjectionMatrix
//------------------------------------------------------------------------------------------
float4x4 createProjectionMatrix(float near_plane, float far_plane, float fov_horiz, float fov_aspect, float2 ss_mov, float2 ss_scale)
{
    float h, w, Q;

    w = 1/tan(fov_horiz * 0.5);
    h = w/fov_aspect;
    Q = far_plane/(far_plane - near_plane);

    // Create a 4x4 projection matrix from given input

    float4x4 projectionMatrix = {
        float4(w * ss_scale.x, 0,              0,             0),
        float4(0,              h * ss_scale.y, 0,             0),
        float4(ss_mov.x,       ss_mov.y,       Q,             1),
        float4(0,              0,             -Q*near_plane,  0)
    };    
    return projectionMatrix;
}

//------------------------------------------------------------------------------------------
// MTACalcGTABuildingDiffuse
//------------------------------------------------------------------------------------------
float4 MTACalcGTABuildingDiffuse( float4 InDiffuse )
{
    float4 OutDiffuse;

    if ( !gLighting )
    {
        // If lighting render state is off, pass through the vertex color
        OutDiffuse = InDiffuse;
    }
    else
    {
        // If lighting render state is on, calculate diffuse color by doing what D3D usually does
        float4 ambient  = gAmbientMaterialSource  == 0 ? gMaterialAmbient  : InDiffuse;
        float4 diffuse  = gDiffuseMaterialSource  == 0 ? gMaterialDiffuse  : InDiffuse;
        float4 emissive = gEmissiveMaterialSource == 0 ? gMaterialEmissive : InDiffuse;
        OutDiffuse = gGlobalAmbient * saturate( ambient + emissive );
        OutDiffuse.a *= diffuse.a;
    }
    return OutDiffuse;
}

//------------------------------------------------------------------------------------------
// MTACalcGTAVehicleDiffuse
// - Calculate GTA lighting for vehicles
//------------------------------------------------------------------------------------------
float4 MTACalcGTAVehicleDiffuse( float3 WorldNormal, float4 InDiffuse )
{
    // Calculate diffuse color by doing what D3D usually does
    float4 ambient  = gAmbientMaterialSource  == 0 ? gMaterialAmbient  : InDiffuse;
    float4 diffuse  = gDiffuseMaterialSource  == 0 ? gMaterialDiffuse  : InDiffuse;
    float4 emissive = gEmissiveMaterialSource == 0 ? gMaterialEmissive : InDiffuse;

    float4 TotalAmbient = ambient * ( gGlobalAmbient + gLightAmbient );

    // Add the strongest light
    float DirectionFactor = max(0,dot(WorldNormal, -gLightDirection ));
    float4 TotalDiffuse = ( diffuse * gLightDiffuse * DirectionFactor );

    float4 OutDiffuse = saturate(TotalDiffuse + TotalAmbient + emissive);
    OutDiffuse.a *= diffuse.a;

    return OutDiffuse;
}

//------------------------------------------------------------------------------------------
// CalculateSpecular
//------------------------------------------------------------------------------------------
float MTACalculateSpecular( float3 CamDir, float3 LightDir, float3 SurfNormal, float SpecPower )
{
    // Using Blinn half angle modification for performance over correctness
    LightDir = normalize(LightDir);
    SurfNormal = normalize(SurfNormal);
    float3 halfAngle = normalize(-CamDir - LightDir);
    float r = dot(halfAngle, SurfNormal);
    return pow(saturate(r), SpecPower);
}

//------------------------------------------------------------------------------------------
// VertexShaderFunction
//------------------------------------------------------------------------------------------
PSInput VertexShaderFunction(VSInput VS)
{
    PSInput PS = (PSInput)0;

    // Fix some stuff
    if (VS.Normal.x == 0 && VS.Normal.y == 0 && VS.Normal.z == 0) VS.Normal = float3(0,0,1);
	
    // Vertex in world position
    float4 wPos = mul(float4(VS.Position, 1), gWorld);
    wPos.xyz += sWorldOffset;

    // Create view matrix	
    float4x4 sView = createViewMatrix(sCameraPosition, sCameraForward, sCameraUp);
    float4 vPos = mul(wPos, sView);
    vPos.xzy += sElementOffset;

    // Create projection matrix
    float sFarClip = gProjection[3][2] / (1 - gProjection[2][2]);
    float sNearClip = gProjection[3][2] / - gProjection[2][2];
    float aspect = 1;
    float4x4 sProjection = createProjectionMatrix(sNearClip, sFarClip, sFov, sAspect, sMoveObject2D, sScaleObject2D);
    float4x4 tProjection = createProjectionMatrix(sNearClip, sFarClip, sFov, sAspect, float2(0,0), sScaleObject2D / sRealScale2D);
    PS.Position = mul(vPos, sProjection);

    PS.vPosition = mul(vPos, tProjection);
    PS.Depth = float2(PS.Position.z, PS.Position.w);
	
    // Pass through tex coord
    PS.TexCoord0 = VS.TexCoord0;
	
    // Set information to do specular calculation
    float3 ViewNormal = mul(VS.Normal, (float3x3)gWorldView);
    ViewNormal = normalize(ViewNormal);
	
    PS.TexCoord1 = 0;
    if (gStage1ColorOp == 25) PS.TexCoord1 = ViewNormal.xyz;
    if (gStage1ColorOp == 14) PS.TexCoord1 = float3(VS.TexCoord1.xy, 1);
	
    // Set information to do specular calculation in pixel shader
    PS.Normal = mul(VS.Normal, (float3x3)gWorld);

    // Calculate GTA lighting
    PS.Diffuse = MTACalcGTAVehicleDiffuse( VS.Normal, float4(0.35, 0.35, 0.3, VS.Diffuse.a) );
	PS.Specular.rgb = gMaterialSpecular.rgb * MTACalculateSpecular(gCameraDirection, gLightDirection, VS.Normal, min(127, gMaterialSpecPower)) * gLight1Specular.rgb;
	
    return PS;
}

//---------------------------------------------------------------------
// Structure of color data sent to the renderer ( from the pixel shader  )
//---------------------------------------------------------------------
struct Pixel
{
    float4 Color : COLOR0;      // Render target #0
    float4 Extra : COLOR1;      // Render target #1
    float Depth : DEPTH0;
};

//------------------------------------------------------------------------------------------
// PixelShaderFunction
//------------------------------------------------------------------------------------------
Pixel PixelShaderFunction(PSInput PS)
{
    Pixel output;

    // Get texture pixel
    float4 texel = tex2D(Sampler0, PS.TexCoord0);

    // Main render target (just so the secondary one works)
    output.Color = float4(0, 0, 0, min(min(texel.a * PS.Diffuse.a, 0.006105), sAlphaMult));

    // Apply texture and multiply by vertex color
    float4 finalColor = texel * PS.Diffuse;
	
    // Apply env reflection
    // BlendFactorAlpha = 14,
    if (gStage1ColorOp == 14) {
        float4 envTexel = tex2D(Sampler1, PS.TexCoord1.xy);
        finalColor.rgb = finalColor.rgb * (1 - gTextureFactor.a) + envTexel.rgb * gTextureFactor.a;
    }

    // Apply spherical reflection
    // MultiplyAdd = 25
    if (gStage1ColorOp == 25) {
        float4 sphTexel = tex2D(Sampler1, PS.TexCoord1.xy/PS.TexCoord1.z);
        finalColor.rgb += sphTexel.rgb * gTextureFactor.r;
    }	
	
    // Apply specular
    if (gMaterialSpecPower != 0) finalColor.rgb += PS.Specular.rgb;
	
	float2 scrCoord =(PS.vPosition.xy / PS.vPosition.w) * float2(0.5, -0.5) + 0.5;
    output.Depth = ((PS.Depth.x * 0.00625 * sProjZMult) / PS.Depth.y);
    if ((scrCoord.x > 1) || (scrCoord.x < 0) || (scrCoord.y > 1) || (scrCoord.y < 0)) 
        { output.Depth = 1; output.Color = 0; }
	
    // Secondary render target
    output.Extra = saturate(finalColor);
	
    // Color filter
    output.Extra.rgb += output.Extra.rgb * sColorFilter1.rgb * sColorFilter1.a;
    output.Extra.rgb += output.Extra.rgb * sColorFilter2.rgb * sColorFilter2.a;
	
    output.Extra.a *= sAlphaMult;
	
    return output;
}

//------------------------------------------------------------------------------------------
// Techniques
//------------------------------------------------------------------------------------------
technique fx_pre_vehicle_MRT
{
    pass P0
    {
        FogEnable = false;
        AlphaBlendEnable = true;
        AlphaRef = 1;
        SeparateAlphaBlendEnable = true;
        SrcBlendAlpha = SrcAlpha;
        DestBlendAlpha = One;
        VertexShader = compile vs_2_0 VertexShaderFunction();
        PixelShader = compile ps_2_0 PixelShaderFunction();
    }
}

// Fallback
technique fallback
{
    pass P0
    {
        // Just draw normally
    }
}
