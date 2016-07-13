struct PIXEL_IN
{
	float4 position : SV_POSITION;
	float2 texcoord : TEXCOORD;
};

Texture2D mySampler;
SamplerState samplerState;	

float4 main(PIXEL_IN input) : SV_TARGET
{

	float4 a = mySampler.Sample(samplerState, input.texcoord);
	float4 b = float4 (float3(1,1,1) - a.xyz, 1);

	return b;

}	