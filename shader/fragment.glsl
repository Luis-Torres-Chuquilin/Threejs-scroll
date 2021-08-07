varying vec2 vUv;
uniform float distanceFromCenter;

uniform sampler2D texture1;

void main()	{
	// vec2 newUV = (vUv - vec2(0.5))*resolution.zw + vec2(0.5);
	
	// gl_FragColor = vec4(0.,1.,0.0,1.);
	// vec4 t = texture2D(texture1, vUv);
	vec4 t = texture2D(texture1, vUv)*distanceFromCenter;
	
	gl_FragColor = t;
	gl_FragColor.a = clamp(distanceFromCenter, 0.2,1.);
}