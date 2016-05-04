//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	import flash.utils.Dictionary;
	public class Level_Level2A extends BaseLevel
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Level2A_Map.csv", mimeType="application/octet-stream")] public var CSV_Map:Class;
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


		public function Level_Level2A(addToStage:Boolean = true, onAddCallback:Function = null, parentObject:Object = null)
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
			boundsMaxX = 2160;
			boundsMaxY = 224;
			boundsMin = new FlxPoint(0, 0);
			boundsMax = new FlxPoint(2160, 224);
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
			addSpriteToLayer(null, Platform, PlatformGroup , 168.000, 56.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Platform"
		}

		public function addSpritesForLayerSpikes(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Spike, SpikesGroup , 160.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 168.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 176.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 184.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 216.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 208.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 200.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 192.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 256.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 264.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 272.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 280.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 248.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 240.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 232.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 224.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 304.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 296.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 288.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 408.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 416.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 424.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 400.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 392.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 384.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 376.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 376.000, 40.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 376.000, -24.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, Spike, SpikesGroup , 408.000, 168.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:80 }, { name:"Item1", value:0 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 408.000, 176.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:80 }, { name:"Item1", value:0 }, null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 496.000, 168.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 504.000, 176.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 504.000, 168.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 496.000, 176.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 608.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 584.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 520.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 600.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 592.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 576.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 528.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 512.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 520.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 536.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 568.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 552.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 616.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 632.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 600.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 584.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 552.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 568.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 560.000, 48.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 696.000, 24.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 768.000, 168.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 848.000, -24.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, Spike, SpikesGroup , 744.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 744.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 824.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 816.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 824.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 816.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 928.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 936.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 912.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 920.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 912.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 920.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 952.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 944.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 952.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 960.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 968.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 960.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 968.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 936.000, 88.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 944.000, 88.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 936.000, 96.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 944.000, 96.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 936.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 944.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 936.000, 128.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 944.000, 128.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 904.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 904.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 928.000, 96.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 928.000, 88.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 928.000, 128.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 928.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1048.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1056.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1048.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1056.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1128.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1128.000, 104.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 696.000, -40.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 1000.000, 192.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 1080.000, 0.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, SpikeBig, SpikesGroup , 1152.000, 144.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"SpikeBIG"
			addSpriteToLayer(null, Spike, SpikesGroup , 848.000, 176.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 840.000, 168.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1328.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1304.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1280.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1256.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1232.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1552.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1576.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1600.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1624.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1648.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1528.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1744.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1720.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1696.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
			addSpriteToLayer(null, Spike, SpikesGroup , 1672.000, 108.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Spike"
		}

		public function addSpritesForLayerCheckpoints(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 936.000, 16.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 936.000, 192.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:true }, null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 1816.000, 88.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 1416.000, 88.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 1416.000, 120.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"Item0", value:true }, null ), onAddCallback );//"CheckPoint"
			addSpriteToLayer(null, CheckPoint, CheckpointsGroup , 624.000, 24.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"CheckPoint"
		}

		public function addSpritesForLayerPlayer(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Player, PlayerGroup , 8.000, 88.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Player"
		}

		public function generateObjectLinks(onAddCallback:Function = null):void
		{
		}

	}
}
