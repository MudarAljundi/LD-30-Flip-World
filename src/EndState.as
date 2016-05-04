package  
{
	import org.flixel.FlxButton;
	import org.flixel.FlxG;
	import org.flixel.FlxCamera;
	import org.flixel.FlxGroup;
	import org.flixel.FlxObject;
	import org.flixel.FlxSprite;
	import org.flixel.FlxState;
	import org.flixel.FlxText;
	/**
	 * ...
	 * @author Mantis
	 */
	public class EndState extends FlxState
	{
		[Embed(source = "../assets/sfx/explode1.mp3")] private var explode_MP3:Class;
		private var camera:FlxCamera = new FlxCamera( 0, 0, 400, 224, 2 );
		private var bg:FlxSprite;
		
		private var text:FlxText;
		private var text2:FlxText;
		private var restart:FlxButton;
		override public function create():void  
		{
			FlxG.play( explode_MP3, 1, false, false );
			FlxG.addCamera( camera );
			FlxG.flash( 0xff000000, 0.5, null, false );
			
			bg = new FlxSprite( 0, 0 );
			bg.makeGraphic( 400, 224, 0xff000000, false );
			add( bg );
			
			text = new FlxText( 0, 100, 400, "You achieved your quest (whatever it was) and became... A LEGE-.... Iconic!", true );
			text.setFormat( null, 8, 0xffFFff, "center", 0 );
			text2 = new FlxText( 225, 120, 400, "Thanks for playing! -Mantis", true );
			restart = new FlxButton( FlxG.width - 40, 170, "Restart?", HandleRestart );
			
			add( text ); add( text2 );
			add( restart );
			Registry.currentLevel = 1;
		}
		private function HandleRestart():void {
			FlxG.fade( 0xff000000, 0.5, FadeIn, false );
		}
		private function FadeIn():void {
			FlxG.switchState( new MenuState );
		}
		private function OnSpriteCallback(obj:FlxObject, group:FlxGroup, level:BaseLevel, scrollX:int, scrollY:int, props:Array ):void {
			
		}
	}
}