package  
{
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class Platform extends FlxSprite {
		public var mover:Boolean = false;
		public var respawn:FlxPoint;
		public function Platform(X:int, Y:int) {
			super(X, Y);
			if ( Registry.currentLevel == 2 ) {
				makeGraphic( 24, 8, 0xff000000, false );
				allowCollisions = UP + DOWN;
			} else if ( Registry.currentLevel == 3 ) {
				makeGraphic( 24, 8, 0xffFFffFF, false );
				allowCollisions = DOWN;
			}
			
			immovable = true;
			respawn = new FlxPoint( X, Y );
		}
	}
}