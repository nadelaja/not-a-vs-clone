varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord);
    if (base_color.a > 0.0) { // Check if the pixel is not transparent
        gl_FragColor = vec4(1.0, 1.0, 1.0, base_color.a); // Set to solid white with original alpha
    } else {
        gl_FragColor = base_color; // Keep transparent pixels unchanged
    }
}