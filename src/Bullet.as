package  
{
	import org.flixel.FlxG;
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class Bullet extends FlxSprite{
		private var aim:Number;
		public function Bullet() {
			super();
			makeGraphic( 4, 4, 0xffFF0000, false );
			exists = false;
		}
		public function Spawn(X:Number, Y:Number):void {
			exists = true;
			reset( X, Y );
			
			aim = Math.atan2( Registry.player.y + 6 - y, Registry.player.x + 6 - x );
			velocity.x = Math.cos( aim ) * 75;
			velocity.y = Math.sin( aim ) * 75;
		}
	}
}