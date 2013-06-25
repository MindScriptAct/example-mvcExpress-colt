package mindscriptact.coltExpress.controller.debug {
import mindscriptact.coltExpress.model.test.TestProxy;
import org.mvcexpress.mvc.Command;

[Live]
public class Debug_LiveF2Command extends Command {

	public function execute(blank:Object):void {
		trace(">Debug_LiveF2Command executed.");

		var testProxy = proxyMap.getProxy(TestProxy) as TestProxy;
		testProxy.setLife(20);

	}

}
}
