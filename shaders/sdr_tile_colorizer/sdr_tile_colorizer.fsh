//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 f_Color;

uniform vec4 f_FadeColor;
uniform float f_FadePos;

void main()
{
	vec4 multClr = (1.0 - f_FadePos) * f_Color + f_FadePos * f_FadeColor;
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ) * multClr;
}
