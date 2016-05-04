//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	import flash.utils.Dictionary;
	public class Level_Level1A extends BaseLevel
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Level1A_Map.csv", mimeType="application/octet-stream")] public var CSV_Map:Class;
		[Embed(source="../assets/Tiles.png")] public var Img_Map:Class;

		//Tilemaps
		public var layerMap:FlxTilemap;

		//Sprites
		public var EnemyGroup:FlxGroup = new FlxGroup;
		public var SpikesGroup:FlxGroup = new FlxGroup;
		public var CheckpointsGroup:FlxGroup = new FlxGroup;
		public var PlayerGroup:FlxGroup = new FlxGroup;

		//Properties


		public function Level_Level1A(addToStage:Boolean = true, onAddCallback:Function = null, parentObject:Object = null)
		{
			// Generate maps.
			var properties:Array = [];
			var tileProperties:Dictionary = new Dictionary;

			properties = generateProperties( null );
			layerMap = addTilemap( CSV_Map, Img_Map, 0.000, 0.000, 8, 8, 1.000, 1.000, false, 1, 1, properties, onAddCallback );

			//Add layers to the master group in correct order.
			masterLayer.add(layerMap);
			masterLayer.add(EnemyGroup);
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
		}

		public function addSpritesForLayerSpikes(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Spike, SpikesGroup , 600.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 320.000, 152.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 376.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 344.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:0 }, { name:"Item1", value:32 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 296.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:0 }, { name:"Item1", value:32 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 632.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 568.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 536.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 408.000, 144.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 832.000, -8.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 832.000, 4.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 896.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 896.000, 96.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 896.000, 64.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 832.000, 68.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 832.000, 116.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, Spike, SpikesGroup , 1472.000, 72.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1488.000, 68.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1504.000, 72.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1520.000, 68.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1536.000, 72.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1552.000, 68.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1568.000, 72.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1432.000, 72.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1416.000, 68.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item120", value:0 }, { name:"Item1", value:28 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1400.000, 72.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 1272.000, 84.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 1208.000, 84.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 1144.000, 84.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 1080.000, 84.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 1016.000, 84.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 952.000, 84.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
		}

		public function addSpritesForLayerCheckpoints(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 224.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:true }, null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 688.000, 88.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 688.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:true }, null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 480.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:true }, null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 808.000, 24.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 952.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 952.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:true }, null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 1336.000, 88.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
		}

		public function addSpritesForLayerPlayer(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Player, PlayerGroup , 40.000, 88.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Player"
		}

		public function generateObjectLinks(onAddCallback:Function = null):void
		{
		}

	}
}
