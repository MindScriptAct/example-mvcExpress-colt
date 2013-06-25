package mindscriptact.coltExpress.controller.setUp {
import org.mvcexpress.mvc.PooledCommand;

[Live]
public class SetupControllerCommand extends PooledCommand {

	public function execute(blank:Object):void {

	}

	[LiveCodeUpdateListener]
	private function debug_liveUpdate():void {
		trace(">SetupControllerCommand.liveUpdate()");

	}
}
}
