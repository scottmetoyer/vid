HDrawablePool dp1, dp2;

void setup() {
	size(600,600);
	H.init(this).background(#FFFFFF);
	smooth();

	dp1 = new HDrawablePool(88);
	dp1.autoAddToStage()
		.add (new HShape("hexagon.svg"))
		.layout (new HGridLayout().startX(27).startY(40).spacing(78,51).cols(8))
		.onCreate (new HCallback() {public void run(Object obj) {
			HShape d = (HShape) obj;
			d.enableStyle(false).noStroke().fill(#4D4D4D).anchorAt(H.CENTER);
		}}).requestAll();

	dp2 = new HDrawablePool(70);
	dp2.autoAddToStage()
		.add (new HShape("hexagon.svg"))
		.layout (new HGridLayout().startX(66).startY(65).spacing(78,51).cols(7))
		.onCreate (new HCallback() {public void run(Object obj) {
			HShape d = (HShape) obj;
			d.enableStyle(false).noStroke().fill(#FF3300).anchorAt(H.CENTER);
		}}).requestAll();

	H.drawStage();
}


