
void setup() {
	size(900,900);
	H.init(this).background(#ECECEC);
	smooth();

	HColorPool colors = new HColorPool(#FFFFFF, #F7F7F7, #ECECEC, #333333, #0095a8, #00616f, #FF3300, #FF6600);

	HShape d = new HShape("skull.svg");
	H.add(d)
		.strokeWeight(0.5)
		.stroke(#000000)
		.noFill()
		.anchorAt(H.CENTER)
		.scale(.25)
	;

	d.randomColors( colors.fillOnly() );

	H.drawStage();

}