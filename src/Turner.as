package   
{
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class Turner extends FlxSprite {
		
		public function Turner(X:Number, Y:Number) {
			super(X, Y);
			makeGraphic( 16, 16, 0x00000000, false );
			visible = false;
		}
	}
}