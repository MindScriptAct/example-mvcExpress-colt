package mindscriptact.coltExpress.view.test {
import mindscriptact.coltExpress.messages.Messages;
import org.mvcexpress.mvc.Mediator;

[Live]
public class TestMediator extends Mediator {

	[Inject]
	public var view:Test;

	override public function onRegister():void {
		addHandler(Messages.CHANGE_TEST_TRANSPARENCY, handleTransparency);
	}

	override public function onRemove():void {
		trace("Warning: TestMediator onRemove() is not implemented!");
	}

	[LiveCodeUpdateListener]
	private function debug_liveUpdate():void {
		trace(">TestMediator.liveUpdate()");


	}

	private function handleTransparency(transparency:Number):void {
		view.alpha = transparency;
	}
}
}