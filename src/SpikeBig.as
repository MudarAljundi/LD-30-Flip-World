package  
{
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class SpikeBig extends FlxSprite {
		[Embed(source = "../assets/SpikeBig.png")] private var spikeBIG_PNG:Class;
		private var mover:Boolean;
		private var startXY:FlxPoint;
		private var endXY:FlxPoint;
		public function SpikeBig(X:Number, Y:Number) {
			super( X, Y, spikeBIG_PNG );
			maxVelocity.x = 50; maxVelocity.y = 50;
			immovable = true;
		}
		public function Move(X:int, Y:int, Down:Boolean = false):void {
			mover = true;
			startXY = new FlxPoint( x, y );
			if ( X == 0 ) {
				endXY = new FlxPoint( 0, y + Y );
			} else if ( Y == 0 ) {
				endXY = new FlxPoint( x + X, 0 );
			} else {
				endXY = new FlxPoint( x + X, y + Y );
			}
		}
		override public function update():void {
			if ( mover ) {
				super.update();
				
				if ( !endXY.y == 0 ) {
					if ( y <= startXY.y ) {
						velocity.y = 0;
						velocity.y += 50;
					} if ( y >= endXY.y ) {
						y = endXY.y;
						velocity.y = 0;
						velocity.y -= 50;
					}
				}
				
				if ( !endXY.x == 0 ) {
					if ( x <= startXY.x ) {
						velocity.x = 0;
						velocity.x += 50;
					} if ( x >= endXY.x ) {
						x = endXY.x;
						velocity.x = 0;
						velocity.x -= 50;
					}
				}
			}
		}
	}
}