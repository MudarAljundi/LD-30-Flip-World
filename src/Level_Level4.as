//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	import flash.utils.Dictionary;
	public class Level_Level4 extends BaseLevel
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Level4_Map.csv", mimeType="application/octet-stream")] public var CSV_Map:Class;
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


		public function Level_Level4(addToStage:Boolean = true, onAddCallback:Function = null, parentObject:Object = null)
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
			boundsMaxX = 200;
			boundsMaxY = 112;
			boundsMin = new FlxPoint(0, 0);
			boundsMax = new FlxPoint(200, 112);
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
		}

		public function addSpritesForLayerPlatform(onAddCallback:Function = null):void
		{
		}

		public function addSpritesForLayerSpikes(onAddCallback:Function = null):void
		{
		}

		public function addSpritesForLayerCheckpoints(onAddCallback:Function = null):void
		{
		}

		public function addSpritesForLayerPlayer(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Player, PlayerGroup , 24.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Player"
		}

		public function generateObjectLinks(onAddCallback:Function = null):void
		{
		}

	}
}
