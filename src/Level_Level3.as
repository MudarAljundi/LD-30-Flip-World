//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	import flash.utils.Dictionary;
	public class Level_Level3 extends BaseLevel
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Level3_Map.csv", mimeType="application/octet-stream")] public var CSV_Map:Class;
		[Embed(source="../assets/Tiles.png")] public var Img_Map:Class;

		//Tilemaps
		public var layerMap:FlxTilemap;

		//Sprites
		public var EnemyGroup:FlxGroup = new FlxGroup;
		public var PlatformGroup:FlxGroup = new FlxGroup;
		public var SpikesGroup:FlxGroup = new FlxGroup;
		public var CheckpointsGroup:FlxGroup = new FlxGroup;
		public var PlayerGroup:FlxGroup = new FlxGroup;

		//Properties


		public function Level_Level3(addToStage:Boolean = true, onAddCallback:Function = null, parentObject:Object = null)
		{
			// Generate maps.
			var properties:Array = [];
			var tileProperties:Dictionary = new Dictionary;

			properties = generateProperties( null );
			layerMap = addTilemap( CSV_Map, Img_Map, 0.000, 0.000, 8, 8, 1.000, 1.000, false, 1, 1, properties, onAddCallback );

			//Add layers to the master group in correct order.
			masterLayer.add(layerMap);
			masterLayer.add(EnemyGroup);
			masterLayer.add(PlatformGroup);
			masterLayer.add(SpikesGroup);
			masterLayer.add(CheckpointsGroup);
			masterLayer.add(PlayerGroup);

			if ( addToStage )
				createObjects(onAddCallback, parentObject);

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 1680;
			boundsMaxY = 224;
			boundsMin = new FlxPoint(0, 0);
			boundsMax = new FlxPoint(1680, 224);
			bgColor = 0xff004080;
		}

		override public function createObjects(onAddCallback:Function = null, parentObject:Object = null):void
		{
			addSpritesForLayerEnemy(onAddCallback);
			addSpritesForLayerPlatform(onAddCallback);
			addSpritesForLayerSpikes(onAddCallback);
			addSpritesForLayerCheckpoints(onAddCallback);
			addSpritesForLayerPlayer(onAddCallback);
			generateObjectLinks(onAddCallback);
			if ( parentObject != null )
				parentObject.add(masterLayer);
			else
				FlxG.state.add(masterLayer);
		}

		public function addSpritesForLayerEnemy(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Enemy, EnemyGroup , 520.000, 24.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 544.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 592.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 680.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 1032.000, 56.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 1128.000, 32.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 1208.000, 24.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 1184.000, 192.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 992.000, 192.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 1456.000, 208.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 1480.000, 208.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 1504.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 1544.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 1544.000, 208.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
			addSpriteToLayer(null, Enemy, EnemyGroup , 1600.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Enemy"
		}

		public function addSpritesForLayerPlatform(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Platform, PlatformGroup , 1376.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Platform"
		}

		public function addSpritesForLayerSpikes(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Spike, SpikesGroup , 832.000, 12.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 808.000, 12.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 784.000, 12.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 856.000, 12.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 864.000, 12.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 760.000, 12.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 752.000, 12.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 920.000, 64.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 928.000, 64.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 952.000, 96.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 952.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1424.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1456.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1472.000, 128.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1496.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1528.000, 127.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1552.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1488.000, 127.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1464.000, 208.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1504.000, 127.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1512.000, 200.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1488.000, 208.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1472.000, 200.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1544.000, 200.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1440.000, 208.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1504.000, 200.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1536.000, 208.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1568.000, 200.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1592.000, 200.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1584.000, 208.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1584.000, 128.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1568.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1480.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1520.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1536.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1512.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1560.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1576.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
		}

		public function addSpritesForLayerCheckpoints(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 696.000, 56.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 904.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:true }, null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 1328.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 504.000, 128.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 336.000, 72.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
		}

		public function addSpritesForLayerPlayer(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Player, PlayerGroup , 24.000, 72.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Player"
		}

		public function generateObjectLinks(onAddCallback:Function = null):void
		{
		}

	}
}
