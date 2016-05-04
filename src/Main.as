package 
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.events.MouseEvent;
	import org.flixel.FlxG;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.display.Stage;
	import flash.display.StageQuality;
	import flash.display.StageDisplayState;
	import flash.display.StageScaleMode;
	/**
	 * ...
	 * @author Mantis
	 */
	[SWF(width="800", height="448", backgroundColor="#FFFFFF")]
	[Frame(factoryClass = "Preloader")]
	public class Main extends Sprite 
	{
		private var thegame:TheGame;
		public function Main():void 
		{
			trace("I sincerely hope no errors have been found")
			if (stage) init();
			else {
				addEventListener(Event.ADDED_TO_STAGE, init);
			}
		}
		private function init(e:Event = null):void 
		{
			// The Game
			thegame = new TheGame;
			addChild(thegame);
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			
		}
	}
}