// https://en.wikipedia.org/wiki/List_of_chaotic_maps
// De Jong Fractal Map
// -3 to +3
var a = 1.2,
    b = 2.1,
    c = 2.4,
    d = 2.7;
var x = 1,
    y = 1;
var aSlider, bSlider, cSlider, dSlider;

function setup() {
    aSlider = createSlider (-3, 3, a, .01);
    bSlider = createSlider (-3, 3, b, .01);
    cSlider = createSlider (-3, 3, c, .01);
    dSlider = createSlider (-3, 3, d, .01);
    var button = createButton("Redraw");
    button.mousePressed(function(){
        a = aSlider.value();
        b = bSlider.value();
        c = cSlider.value();
        d = dSlider.value();
        background(255);
    });
    createCanvas(500, 500);
    stroke(250, 150, 120, 50);
}

function draw() {
    for (var i = 0; i < 1000; i++) {
        var oldX = x;
        var oldY = y;

        x = sin(a * oldY) - cos(b * oldX);
        y = sin(c * oldX) - cos(d * oldY);
        var scaledX = map(x, -2, 2, 0, width);
        var scaledY = map(y, -2, 2, 0, height);

        point(scaledX, scaledY);
    }
}