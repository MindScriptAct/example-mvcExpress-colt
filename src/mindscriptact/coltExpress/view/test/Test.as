package mindscriptact.coltExpress.view.test {
import flash.display.Sprite;

[Live]
public class Test extends Sprite {

	public function Test() {
		this.graphics.lineStyle(1, 0xff0000);
		this.graphics.beginFill(0x00ff00, 0.5);
		this.graphics.drawRect(0, 0, 100, 100);
		this.graphics.endFill();
	}

}
}