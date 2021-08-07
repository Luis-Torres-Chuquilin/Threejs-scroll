varying vec2 vUv;

uniform float time;
float PI = 3.141592653589793238;

void main() {
  // vUv = uv;
  vUv = (uv - vec2(.5))*0.9+vec2(0.5);

  vec3 pos = position;

  pos.y += sin(PI*uv.x)*0.01;
  // pos.z -= sin(time*uv.x)*0.1;
  pos.z += sin(PI*uv.x)*0.01;


  pos.y += 0.02*sin(time*0.3);
  vUv.y -= 0.02*sin(time*0.3);
  gl_Position = projectionMatrix * modelViewMatrix * vec4( pos, 1.0 );
}