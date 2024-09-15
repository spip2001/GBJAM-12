shader_type canvas_item;

uniform vec3 color3 = vec3(0.878, 0.972, 0.815);
uniform vec3 color2 = vec3(0.533, 0.752, 0.439);
uniform vec3 color1 = vec3(0.203, 0.407, 0.337);
uniform vec3 color0 = vec3(0.031, 0.094, 0.125);


void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec4 c = texture(TEXTURE, UV);
	float grey = (c.r + c.g + c.b) / 3.0;
	float rnd = fract(sin(dot(UV,vec2(12.9898,78.233))) * 43758.5453123);
	
	if (grey < 0.2) {
		COLOR.rgb = color0;
	} else if (grey < 0.35) {
		COLOR.rgb = rnd < 0.5 ? color0 : color1;	
	} else if (grey < 0.5) {
		COLOR.rgb = color1;
	} else if (grey < 0.625) {
		COLOR.rgb = rnd < 0.5 ? color1 : color2;	
	} else if (grey < 0.75) {
		COLOR.rgb = color2;
	} else if (grey < 0.865) {
		COLOR.rgb = rnd < 0.5 ? color2 : color3;	
	} else {
		COLOR.rgb = color3;
	}
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
