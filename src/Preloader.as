package  
{
    import com.newgrounds.*;
    import com.newgrounds.components.*;
    import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author Mantis
	 */
    public class Preloader extends MovieClip
    {
        public function Preloader() 
        {
			
            var apiConnector:APIConnector = new APIConnector();
            apiConnector.className = "Main";
            apiConnector.apiId = "?????";
            apiConnector.encryptionKey = "????????????????";
			apiConnector.redirectOnHostBlocked = true;
            addChild(apiConnector);
            // center connector on screen
            if(stage) {
                apiConnector.x = 247;
                apiConnector.y = 84;
			} else {
                apiConnector.x = 247;
                apiConnector.y = 84;
			}
        }
    }
}