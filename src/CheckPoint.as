package  
{
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class CheckPoint extends FlxSprite {
		[Embed(source = "../assets/CheckPoint.png")] private var check_PNG:Class;
		public var down:Boolean = false;
		public var activated:Boolean = false;
		public function CheckPoint(X:Number, Y:Number) {
			super( X+1, Y );
			loadGraphic( check_PNG, true, false, 8, 16, false );
			addAnimation( "idle", [0], 0, false );
			addAnimation( "active", [1], 0, false );
			addAnimation( "idleFLIP", [2], 0, false );
			addAnimation( "activeFLIP", [3], 0, false );
		}
		override public function update():void {
			super.update();
			if ( onScreen() ) {
				if ( Registry.currentWorld == 1 ) {
					play( "idle" );
				} else {
					play( "idleFLIP" );
				}
				if ( activated ) {
					if ( Registry.currentWorld == 1 ) {
						play( "active" );
					} else {
						play( "activeFLIP" );
					}
				}
			}
		}
	}
}