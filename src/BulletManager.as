package  
{
	import org.flixel.FlxGroup;
	/**
	 * ...
	 * @author Mantis
	 */
	public class BulletManager extends FlxGroup {
		
		public function BulletManager() {
			super();
			for ( var i:int = 0; i < 25; i++ ) {
				add( new Bullet );
			}
		}
		override public function update():void {
			super.update();
			for each( var b:Bullet in members ) {
				if ( !b.onScreen() ) {
					b.kill();
				}
			}
		}
		public function Spawn(X:Number, Y:Number):void {
			Bullet( getFirstAvailable() ).Spawn( X, Y );
		}
	}
}