package  
{
	import org.flixel.FlxG;
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Mantis
	 */
	public class Player extends FlxSprite {
		[Embed(source = "../assets/sfx/Jump2.mp3")] private var jump_MP3:Class;
		[Embed(source = "../assets/Player2.png")] private var player_PNG:Class;
		[Embed(source = "../assets/Player2White.png")] private var playerWhite_PNG:Class;
		private var cutVelocity:Boolean = false;
		public var respawn:FlxPoint;
		private var thisLevelIS:int = Registry.currentLevel;
		public function Player(X:Number, Y:Number) {
			super(X, Y);
			respawn = new FlxPoint( X, Y );
			Registry.player = this;
			if ( Registry.currentLevel == 1 || Registry.currentLevel == 2 ) {
				loadGraphic( player_PNG, true, true, 10, 16, false );
			} else {
				loadGraphic( playerWhite_PNG, true, true, 10, 16, false );
			}
			width = 6; offset.x = 2;
			height = 15; offset.y = 1;
			
			addAnimation( "idle", [0], 0, false );
			addAnimation( "move", [1, 2], 10, true );
			addAnimation( "air", [3], 0, false );
			addAnimation( "idleFLIP", [4], 0, false );
			addAnimation( "moveFLIP", [5, 6], 10, true );
			addAnimation( "airFLIP", [7], 0, false );
			//makeGraphic( 16, 16, 0xff000000, false );
			
			acceleration.y = 150;
			maxVelocity.y = 500;
			
			maxVelocity.x = 75;
			drag.x = 250;
		}
		override public function update():void {
			super.update();
			acceleration.x = 0;
			if ( x < 0 ) {
				x = 1;
			} if ( x > Registry.map.width ) {
				if ( thisLevelIS == 1 ) {
					Registry.currentLevel = 2;
					FlxG.resetState();
				} if ( thisLevelIS == 2 ) {
					Registry.currentLevel = 3;
					FlxG.resetState();
				} if ( thisLevelIS == 3 ) {
					Registry.currentLevel = 4;
					FlxG.resetState();
				}
			}
			if ( FlxG.keys.D || FlxG.keys.RIGHT ) {
				if ( Registry.currentWorld == 1 ) {
					acceleration.x = +170;
					facing = RIGHT;
				} else {
					acceleration.x = -170;
					facing = LEFT;
				}
			} if ( FlxG.keys.A || FlxG.keys.LEFT ) {
				if ( Registry.currentWorld == 1 ) {
					acceleration.x = -150;
					facing = LEFT;
				} else {
					acceleration.x = +150;
					facing = RIGHT;
				}
			}
			if ( FlxG.keys.justPressed( "SPACE" ) || FlxG.keys.justPressed( "Z" ) ||
				FlxG.keys.justPressed( "UP" ) || FlxG.keys.justPressed( "W" ) ) {
				if ( velocity.y == 0 ) {
					cutVelocity = false;
					FlxG.play( jump_MP3, 1, false, false );
					if ( Registry.currentWorld == 1 ) {
						velocity.y -= 120;
					} else {
						velocity.y += 120;
					}
				}
			} if ( FlxG.keys.justReleased( "SPACE" ) || FlxG.keys.justReleased( "Z" ) ||
				FlxG.keys.justReleased( "UP" ) || FlxG.keys.justReleased( "W" ) ) {
				if ( !cutVelocity ) {
					cutVelocity = true;
					if ( Registry.currentWorld == 1 ) {
						if ( velocity.y <= 0 ) {
							velocity.y /= 2;
						}
					} else {
						if ( velocity.y >= 0 ) {
							velocity.y /= 2;
						}
					}
				}
			}
			
			if ( Registry.currentWorld == 1 ) {
				acceleration.y = 200;
			} else {
				acceleration.y = -200;
			}
			if ( Registry.currentWorld == 1 ) {
				if ( velocity.x == 0 && isTouching( DOWN ) ) {
					play( "idle", false );
				} else if ( velocity.x != 0 && isTouching( DOWN ) ) {
					play( "move", false );
				} else {
					play( "air", false );
				}
			} else {
				if ( velocity.x == 0 && isTouching( UP ) ) {
					play( "idleFLIP", false );
				} else if ( velocity.x != 0 && isTouching( UP ) ) {
					play( "moveFLIP", false );
				} else {
					play( "airFLIP", false );
				}
			}
		}
	}
}