package  
{
	import org.flixel.FlxCamera;
	import org.flixel.FlxG;
	import org.flixel.FlxGroup;
	import org.flixel.FlxRect;
	import org.flixel.FlxTilemap;
	/**
	 * ...
	 * @author Mantis
	 */
	public class Registry 
	{
		public static var map:FlxTilemap;
		public static var player:Player;
		public static var endButton:EndButton;
		public static var tutorial:Tutorial;
		public static var platforms:FlxGroup;
		public static var spikes:FlxGroup;
		public static var metal:SpikeMetal;
		public static var bullets:BulletManager;
		public static var enemies:FlxGroup;
		public static var CheckPoints:FlxGroup;
		
		public static var currentLevel:int = 1;
		public static var currentWorld:int = 1;
		public static function Init(level:*):void {
			map = level.layerMap;
			spikes = level.SpikesGroup;
			CheckPoints = level.CheckpointsGroup;
			if ( currentLevel == 2 || currentLevel == 3 ) {
				platforms = level.PlatformGroup;
			}
			if ( currentLevel == 3 ) {
				enemies = level.EnemyGroup;
			}
			
			FlxG.camera.follow( player );
			FlxG.camera.deadzone = new FlxRect( 75, 0, 50, 500 );
			FlxG.camera.setBounds( 0, 0, map.width, map.height, false );
			FlxG.worldBounds = new FlxRect( 0, -8, 200, 112 );
		}
	}
}