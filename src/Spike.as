package  
{
	import org.flixel.FlxG;
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class Spike extends FlxSprite {
		[Embed(source="../assets/sfx/Hit2.mp3")] private var hit2_MP3:Class;
		[Embed(source = "../assets/Spike.png")] private var spike_PNG:Class;
		private var mover:Boolean;
		private var startXY:FlxPoint;
		private var endXY:FlxPoint;
		public function Spike(X:Number, Y:Number) {
			super( X, Y, spike_PNG );
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
						if ( onScreen() ) {
							FlxG.play( hit2_MP3, 0.5, false, false );
						}
					} if ( y >= endXY.y ) {
						y = endXY.y;
						velocity.y = 0;
						velocity.y -= 50;
						if ( onScreen() ) {
							FlxG.play( hit2_MP3, 0.5, false, false );
						}
					}
				}
				
				if ( !endXY.x == 0 ) {
					if ( x <= startXY.x ) {
						velocity.x = 0;
						velocity.x += 50;
						if ( onScreen() ) {
							FlxG.play( hit2_MP3, 0.5, false, false );
						}
					} if ( x >= endXY.x ) {
						x = endXY.x;
						velocity.x = 0;
						velocity.x -= 50;
						if ( onScreen() ) {
							FlxG.play( hit2_MP3, 0.5, false, false );
						}
					}
				}
			}
		}
	}
}