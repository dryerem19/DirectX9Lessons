// vertex transformations world
float4x4 mWorld;
// vertex transformation view/projection
float4x4 mViewProjection;

struct VS_OUTPUT
{
	float4 Pos  : POSITION;
	float4 Color: COLOR0;
};

VS_OUTPUT main(float3 Pos  : POSITION0, float4 Color : COLOR0)
{
	VS_OUTPUT Out;
	// tranform vertex
	float4 pos = mul(float4(Pos, 4), mWorld);
	Out.Pos = mul(pos, mViewProjection);
	Out.Color = Color;
	return Out;
}