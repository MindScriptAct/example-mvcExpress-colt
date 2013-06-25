package mindscriptact.coltExpress.view.main {
import mindscriptact.coltExpress.Main;
import mindscriptact.coltExpress.view.test.Test;
import org.mvcexpress.mvc.Mediator;

[Live]
public class MainMediator extends Mediator {

	[Inject]
	public var view:Main;

	override public function onRegister():void {
		var test:Test = new Test();
		mediatorMap.mediate(test);
		view.addChild(test);
	}

	override public function onRemove():void {
		trace("Warning: MainMediator onRemove() not implemented!");
	}

	[LiveCodeUpdateListener]
	private function debug_liveUpdate():void {
		trace(">MainMediator.liveUpdate()");
		
		
	}
}
}