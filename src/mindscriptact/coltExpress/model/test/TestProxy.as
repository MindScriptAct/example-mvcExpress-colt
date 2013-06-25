package mindscriptact.coltExpress.model.test {
import org.mvcexpress.mvc.Proxy;

public class TestProxy extends Proxy {

	public function TestProxy() {
	}

	override protected function onRegister():void {

	}

	override protected function onRemove():void {
		trace("Warning: TestProxy onRemove() not implemented!");
	}

}
}