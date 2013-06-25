package mindscriptact.coltExpress.model.test {
import mindscriptact.coltExpress.messages.Messages;
import org.mvcexpress.mvc.Proxy;

[Live]
public class TestProxy extends Proxy {

	public var currentLife:int = 0;

	public var totalLife:int = 100;

	public function TestProxy() {
	}

	override protected function onRegister():void {

	}

	override protected function onRemove():void {
		trace("Warning: TestProxy onRemove() not implemented!");
	}

	public function setLife(life:int):void {
		currentLife = life;
		sendMessage(Messages.CHANGE_TEST_TRANSPARENCY, currentLife/totalLife);
	}


	[LiveCodeUpdateListener]
	private function debug_liveUpdate():void {
		trace(">TestProxy.liveUpdate()");


	}

}
}