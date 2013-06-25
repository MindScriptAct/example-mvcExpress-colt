package mindscriptact.coltExpress.controller.setUp {
import mindscriptact.coltExpress.Main;
import mindscriptact.coltExpress.view.main.MainMediator;
import mindscriptact.coltExpress.view.test.Test;
import mindscriptact.coltExpress.view.test.TestMediator;

import org.mvcexpress.mvc.PooledCommand;

[Live]
public class SetupViewCommand extends PooledCommand {

	public function execute(blank:Object):void {

		mediatorMap.map(Main, MainMediator)
		mediatorMap.map(Test, TestMediator);
	}

	[LiveCodeUpdateListener]
	private function debug_liveUpdate():void {
		trace(">SetupViewCommand.liveUpdate()");
		
		
	}

}
}
