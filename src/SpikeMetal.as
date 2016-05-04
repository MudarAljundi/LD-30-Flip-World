package  
{
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class SpikeMetal extends FlxSprite {
		[Embed(source = "../assets/SpikeMetal.png")] private var metal_PNG:Class;
		public function SpikeMetal() {
			super(0, 0, metal_PNG);
			exists = false;
		}
		public function Spawn(X:int, Y:int):void {
			exists = true;
			reset( X, Y );
		}
	}
}