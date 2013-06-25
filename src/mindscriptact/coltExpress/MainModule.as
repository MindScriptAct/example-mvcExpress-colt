package mindscriptact.coltExpress {
import mindscriptact.coltExpress.controller.setUp.SetupControllerCommand;
import mindscriptact.coltExpress.controller.setUp.SetupModelCommand;
import mindscriptact.coltExpress.controller.setUp.SetupViewCommand;

import org.mvcexpress.modules.ModuleCore;

[Live]
public class MainModule extends ModuleCore {

	public function MainModule() {
		super("MainModule");
	}

	override protected function onInit():void {

		commandMap.execute(SetupControllerCommand);
		commandMap.execute(SetupModelCommand);
		commandMap.execute(SetupViewCommand);

	}

	public function start(main:Main):void {
		trace("Hello MainModule");

		mediatorMap.mediate(main);
	}

	override protected function onDispose():void {
		trace("Warning: MainModule onDispose() is not implemented!");
	}
}
}