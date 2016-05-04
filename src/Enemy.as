package  
{
	import org.flixel.FlxG;
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class Enemy extends FlxSprite {
		[Embed(source = "../assets/sfx/shoot1.mp3")] private var shoot_MP3:Class;
		[Embed(source = "../assets/Enemy.png")] private var enemy_PNG:Class;
		private var shoot:int = 0;
		private var timer:Number = 0;
		private var reload:Boolean = false;
		private var reloadTimer:Number = 0;
		public function Enemy(X:Number, Y:Number) {
			super( X, Y, enemy_PNG );
		}
		override public function update():void {
			super.update();
			if ( onScreen() ) {
				if ( !reload ) {
					timer += FlxG.elapsed;
					if ( timer > 0.5 ) {
						timer = 0;
						Registry.bullets.Spawn( x + 2, y + 2 );
						shoot += 1;
						FlxG.play( shoot_MP3, 1, false, false );
					}
				}
				if ( shoot >= 3 ) {
					reload = true;
					reloadTimer += FlxG.elapsed;
					if ( reloadTimer >= 1.5 ) {
						reload = false; shoot = 0;
						reloadTimer = 0;
					}
				}
			}
		}
	}
}