package mindscriptact.coltExpress.controller.setUp {
import mindscriptact.coltExpress.model.test.TestProxy;
import org.mvcexpress.mvc.PooledCommand;

[Live]
public class SetupModelCommand extends PooledCommand {

	public function execute(blank:Object):void {
		proxyMap.map(new TestProxy());
	}

	[LiveCodeUpdateListener]
	private function debug_liveUpdate():void {
		trace("SetupModelCommand>.liveUpdate()");

	}

}
}
