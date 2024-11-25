in vec4 vColor;
in vec2 vPosition;
uniform float time;

void main () {
    float A = -dot(vPosition, vPosition);
    if (A < -4.0) discard;
    float B = exp(A) * vColor.a;
    vec3 newCol = vColor.rgb;
    newCol.r = pow(pow(vPosition.y,2.0) + pow(vPosition.x,2.0),0.5) ;
    gl_FragColor = vec4(newCol, B);
}