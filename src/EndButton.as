package  
{
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class EndButton extends FlxSprite
	{
		[Embed(source = "../assets/Endgame.png")] private var end_PNG:Class
		public function EndButton() 
		{
			super(97, 73, end_PNG );
			immovable = true;
		}
	}
}