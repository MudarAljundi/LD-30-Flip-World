package  
{
	import org.flixel.FlxG;
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class Tutorial extends FlxSprite
	{
		[Embed(source = "../assets/Tutorial.png")] private var tutorial_PNG:Class;
		public var knowsLEFT:Boolean = false;
		public var knowsJump:Boolean = false;
		public function Tutorial() {
			super( FlxG.width / 2 - 34, 56 );
			loadGraphic( tutorial_PNG, true, false, 69, 8, false );
			addAnimation( "LEFT", [0], 0, false );
			addAnimation( "JUMP", [1], 0, false );
			scrollFactor.x = 0;
			scrollFactor.y = 0;
		}
		override public function update():void {
			super.update();
			if ( FlxG.keys.D || FlxG.keys.RIGHT || FlxG.keys.A || FlxG.keys.LEFT ) {
				knowsLEFT = true;
			}
			
			if( FlxG.keys.justPressed( "SPACE" ) || FlxG.keys.justPressed( "Z" ) ||
				FlxG.keys.justPressed( "UP" ) || FlxG.keys.justPressed( "W" ) ) {
				
				knowsJump = true;
			}
			if ( !knowsJump ) {
				play( "JUMP" );
			}
			if ( !knowsLEFT ) {
				play( "LEFT" );
			}
			if ( knowsJump && knowsLEFT ) {
				kill();
			}
		}
	}
}