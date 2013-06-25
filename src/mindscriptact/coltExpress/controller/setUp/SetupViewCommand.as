package mindscriptact.coltExpress.controller.setUp {
import mindscriptact.coltExpress.Main;
import mindscriptact.coltExpress.view.main.MainMediator;
import org.mvcexpress.mvc.PooledCommand;

[Live]
public class SetupViewCommand extends PooledCommand {

	public function execute(blank:Object):void {

		mediatorMap.map(Main, MainMediator)

	}

	[LiveCodeUpdateListener]
	private function debug_liveUpdate():void {
		trace(">SetupViewCommand.liveUpdate()");

	}

}
}
