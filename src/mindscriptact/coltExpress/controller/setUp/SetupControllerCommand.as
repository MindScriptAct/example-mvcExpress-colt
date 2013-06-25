package mindscriptact.coltExpress.controller.setUp {
import mindscriptact.coltExpress.controller.debug.Debug_LiveF1Command;
import mindscriptact.coltExpress.controller.debug.Debug_LiveF2Command;
import mindscriptact.coltExpress.controller.debug.Debug_LiveF3Command;
import mindscriptact.coltExpress.messages.Messages;
import org.mvcexpress.mvc.PooledCommand;

[Live]
public class SetupControllerCommand extends PooledCommand {

	public function execute(blank:Object):void {

		CONFIG::debug {
			commandMap.map(Messages.DEBUG_LIVE_F1, Debug_LiveF1Command);
			commandMap.map(Messages.DEBUG_LIVE_F2, Debug_LiveF2Command);
			commandMap.map(Messages.DEBUG_LIVE_F3, Debug_LiveF3Command);
		}

	}

	[LiveCodeUpdateListener]
	private function debug_liveUpdate():void {
		trace(">SetupControllerCommand.liveUpdate()");

	}
}
}
