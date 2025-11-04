skinspice = 0;
if (texture(Sampler0, vec2(0.0, 0.0)) == vec4(0.0, 0.7529411764705882, 1.0, 1.0)) {
    skinspice = 1;
    if (overlayColor.a == 0.69803921) {
        vec4 overlayPixel = texture(Sampler0, vec2(2.0 / 64.0, 0.0));
        if (overlayPixel.a == 1.0) {
            overlayColor = vec4(overlayPixel.rgb, overlayColor.a);
        }
    }
}
