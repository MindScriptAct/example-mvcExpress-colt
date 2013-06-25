package mindscriptact.coltExpress.view.main {
import mindscriptact.coltExpress.Main;

import org.mvcexpress.mvc.Mediator;

public class MainMediator extends Mediator {

	[Inject]
	public var view:Main;

	override public function onRegister():void {

	}

	override public function onRemove():void {
		trace("Warning: MainMediator onRemove() not implemented!");
	}

}
}