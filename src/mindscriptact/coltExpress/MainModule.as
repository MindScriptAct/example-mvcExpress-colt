package mindscriptact.coltExpress {
import flash.ui.Keyboard;
import mindscriptact.coltExpress.controller.setUp.SetupControllerCommand;
import mindscriptact.coltExpress.controller.setUp.SetupModelCommand;
import mindscriptact.coltExpress.controller.setUp.SetupViewCommand;
import mindscriptact.coltExpress.messages.Messages;
import mindscriptact.coltExpress.model.keyboard.KeyboardProxy;

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


		var keyboardProxy:KeyboardProxy = new KeyboardProxy(main.stage);
		proxyMap.map(keyboardProxy);

		CONFIG::debug {
			keyboardProxy.registerMessageSendOnPress(Keyboard.F1, Messages.DEBUG_LIVE_F1);
			keyboardProxy.registerMessageSendOnPress(Keyboard.F2, Messages.DEBUG_LIVE_F2);
			keyboardProxy.registerMessageSendOnPress(Keyboard.F3, Messages.DEBUG_LIVE_F3);
		}

		mediatorMap.mediate(main);
	}

	override protected function onDispose():void {
		trace("Warning: MainModule onDispose() is not implemented!");
	}
}
}