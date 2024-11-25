in vec4 vColor;
in vec2 vPosition;
uniform float time;
uniform int toggle_color_;


void main () {
    float A = -dot(vPosition, vPosition);
    if (A < -4.0) discard;
    float B = exp(A) * vColor.a;
    vec3 newCol = vColor.rgb;
    if (toggle_color_ > 0)
    {
        newCol.b = pow(pow(vPosition.y,2.0) + pow(vPosition.x,2.0),0.5) ;
        newCol.r = pow(vPosition.x,2.0) ;
    }

    gl_FragColor = vec4(newCol, B);
}