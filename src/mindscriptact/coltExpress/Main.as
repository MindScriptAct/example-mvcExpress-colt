package mindscriptact.coltExpress {
import com.mindscriptact.mvcExpressLogger.MvcExpressLogger;

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;

public class Main extends Sprite {

	private var mainModule:MainModule;

	public function Main() {
		if (stage) {
			init();
		} else {
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
	}


	private function init(event:Event = null):void {
		removeEventListener(Event.ADDED_TO_STAGE, init);

		//
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;

		CONFIG::debug {
			MvcExpressLogger.init(this.stage, 100, 0, 700, 600, 1, true);
		}

		//
		mainModule = new MainModule();
		mainModule.start(this);

	}

}
}
