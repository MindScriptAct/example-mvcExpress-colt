package mindscriptact.coltExpress.controller.setUp {
import mindscriptact.coltExpress.Main;
import mindscriptact.coltExpress.view.main.MainMediator;

import org.mvcexpress.mvc.Command;

public class SetupViewCommand extends Command {

	public function execute(blank:Object):void {

		mediatorMap.map(Main, MainMediator)

	}

}
}
