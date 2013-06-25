package mindscriptact.coltExpress.controller.debug {
import mindscriptact.coltExpress.messages.Messages;
import org.mvcexpress.mvc.Command;

[Live]
public class Debug_LiveF1Command extends Command {

	public function execute(blank:Object):void {
		trace(">Debug_LiveF1Command executed.");
		
		sendMessage(Messages.CHANGE_TEST_TRANSPARENCY, 0.2);
		
	}

}
}
