package  
{
	import com.newgrounds.API;
	import org.flixel.FlxCamera;
	import org.flixel.FlxG;
	import org.flixel.FlxButton;
	import org.flixel.FlxSprite;
	import org.flixel.FlxState;
	import flash.display.StageScaleMode;
	import flash.display.StageDisplayState;
	import org.flixel.FlxText;
	import org.flixel.FlxTimer;
	/**
	 * ...
	 * @author Mantis
	 */
	public class MenuState extends FlxState {
		private var camera:FlxCamera = new FlxCamera( 0, 0, 400, 224, 2 );
		[Embed(source = "../assets/sfx/Intro2.mp3")] private var intro_MP3:Class;
		
		[Embed(source = "../assets/Buttons/Mantis.png")] private var mantis_PNG:Class;
		[Embed(source = "../assets/LD30.png")] private var madeFor_PNG:Class;
		
		private var madeFor:FlxSprite = new FlxSprite( 4, 202, madeFor_PNG );
		
		private var startTimer:FlxTimer = new FlxTimer();
		private var cover:FlxSprite = new FlxSprite();
		private var bg:FlxSprite = new FlxSprite();
		private var start:FlxButton;
		
		private var volume:FlxText;
		
		private var logo:FlxText;
		private var byMantis:FlxButton = new FlxButton( 245, 74, null, HandleMantis );
		
		public function HandleTimer(t:FlxTimer):void {
			cover.kill();
			FlxG.play( intro_MP3, 1, false, false );
		}
		override public function create():void {
			startTimer.start( 1, 1, HandleTimer );
			FlxG.addCamera( camera );
			
			bg.makeGraphic( 400, 224, 0xff000000, false );
			cover = new FlxSprite( 0, 0 );
			cover.makeGraphic( 400, 224, 0xff000000, false );
			start = new FlxButton( FlxG.width - 40, 160, "Start Game", HandleStart )
			
			volume = new FlxText( 300, 210, 100, "+ - Change Volume", true );
			logo = new FlxText( 111, 36, 400, "FlipWorld", true );
			logo.setFormat( null, 32, 0xffFFff );
			byMantis.loadGraphic( mantis_PNG, false, false, 49, 8, false );
			
			add( bg ); add( volume );
			add( madeFor ); add( logo ); add( byMantis );
			add( start );
			add( cover )
		}
		private function HandleMantis():void {
			API.loadMySite();
		}
		private function HandleStart():void {
			FlxG.switchState( new PlayState );
		}
	}
}