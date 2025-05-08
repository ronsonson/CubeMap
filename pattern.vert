// make this 120 for the mac:
#version 330 compatibility

// out variables to be interpolated in the rasterizer and sent to each fragment shader:

out  vec2  vST;	  // (s,t) texture coordinates
out  vec3  vNormal;	  // normal vector
out  vec3  vL;	  // vector from point to light
out  vec3  vE;	  // vector from point to eye
out vec3	vMC;
out vec3	vEyeDir;
// where the light is:

const vec3 LightPosition = vec3(  0., 5., 5. );
const float PI = 3.141592;
uniform float time;
uniform int uWaves;


void
main( )
{
	vec3 newVert =  vec3(gl_Vertex.xyz);
	float x = gl_Vertex.x;
	float y = gl_Vertex.y;
	float r = sqrt(x*x + y*y);
	float amp = 0.1;
	float angle = -time*10+r*6.0;
	newVert.z += sin(angle)*amp;

	vec3 normal = normalize(vec3(0.0,-amp * r * cos(angle), 1.0));
	

	if (uWaves == 1)
	{
	vMC = gl_Vertex.xyz;


	vST = gl_MultiTexCoord0.st;
	vec4 ECposition = gl_ModelViewMatrix * gl_Vertex;
	vNormal = normalize( gl_NormalMatrix * gl_Normal );  // normal vector
	vL = LightPosition - ECposition.xyz;	    // vector from the point
							// to the light position
	vEyeDir = ECposition.xyz - vec3( 0., -2.5, 0. ) ;
	gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
	}

	else
	{
	vMC = newVert.xyz;


	vST = gl_MultiTexCoord0.st;
	vec4 ECposition = gl_ModelViewMatrix * vec4(newVert, 1.0);
	vNormal = normalize(normal);  // normal vector
	vL = LightPosition - ECposition.xyz;	    // vector from the point
							// to the light position
	vEyeDir = ECposition.xyz - vec3( 0., 0., 0. ) ;
	gl_Position = gl_ModelViewProjectionMatrix * vec4(newVert, 1.0);
	}
}
