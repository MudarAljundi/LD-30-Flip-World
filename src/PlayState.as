package  
{
	import org.flixel.FlxBasic;
	import org.flixel.FlxButton;
	import org.flixel.FlxCamera;
	import org.flixel.FlxG;
	import org.flixel.FlxGroup;
	import org.flixel.FlxObject;
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	import org.flixel.FlxState;
	import org.flixel.FlxTilemap;
	import org.flixel.FlxTimer;
	/**
	 * ...
	 * @author Mantis
	 */
	public class PlayState extends FlxState {
		[Embed(source = "../assets/sfx/Mover2.mp3")] private var mover_MP3:Class;
		[Embed(source="../assets/sfx/Flip3.mp3")] private var flip_MP3:Class;
		[Embed(source = "../assets/sfx/Good3.mp3")] private var good_MP3:Class;
		[Embed(source = "../assets/sfx/Hit1.mp3")] private var hit1_MP3:Class;
		[Embed(source = "../assets/sfx/Hit2.mp3")] private var hit2_MP3:Class;
		[Embed(source = "../assets/BG.png")] private var bg_PNG:Class;
		private var playHitSOUND:Boolean = false;
		
		private var startTimer:FlxTimer = new FlxTimer();
		private var switchingWorld:Boolean = false;
		private var bg:FlxSprite;
		private var cover:FlxSprite;
		public function HandleTimer(t:FlxTimer):void {
			cover.kill();
			FlxG.flash( 0xff000000, 0.5, null, false );
		}
		override public function create():void {
			Registry.currentWorld = 1;
			if ( Registry.currentLevel == 1 ) {
				startTimer.start( 1, 1, HandleTimer );
			} else {
				startTimer.start( 0.5, 1, HandleTimer );
			}
			
			FlxG.bgColor = 0xffFFffFF;
			
			if ( Registry.currentLevel == 1 ) {
				bg = new FlxSprite( 0, 0, bg_PNG );
				add( bg );
				var level1:Level_Level1A = new Level_Level1A( true, OnSpriteCallback );
				Registry.Init( level1 );
				Registry.tutorial = new Tutorial();
				add( Registry.tutorial );
			} else if ( Registry.currentLevel == 2 ) {
				bg = new FlxSprite( 0, 0, bg_PNG );
				add( bg );
				var level2:Level_Level2A = new Level_Level2A( true, OnSpriteCallback );
				Registry.Init( level2 );
			} else if ( Registry.currentLevel == 3 ) {
				FlxG.bgColor = 0xff000000;
				bg = new FlxSprite( 0, 0 );
				bg.makeGraphic( 210, 224, 0xff000000, false );
				add( bg );
				var level3:Level_Level3 = new Level_Level3( true, OnSpriteCallback );
				Registry.Init( level3 );
				Registry.bullets = new BulletManager();
				add( Registry.bullets );
			} else if ( Registry.currentLevel == 4 ) {
				bg = new FlxSprite( 0, 0 );
				bg.makeGraphic( 210, 224, 0xff000000, false );
				add( bg );
				var level4:Level_Level4 = new Level_Level4( true, OnSpriteCallback );
				Registry.Init( level4 );
				
				Registry.endButton = new EndButton();
				add( Registry.endButton );
			}
			
			Registry.metal = new SpikeMetal();
			add( Registry.metal );
			
			cover = new FlxSprite( 0, 0 );
			cover.makeGraphic( 250, 224, 0xff000000, false );
			add( cover );
		}
		private function OnSpriteCallback(obj:FlxObject, group:FlxGroup, level:BaseLevel, scrollX:int, scrollY:int, props:Array ):void {
			var o1:Object;
			var o2:Object;
			if ( obj is Spike ) {
				o1 = props[0];
				o2 = props[1];
				if ( o1 ) {
					Spike( obj ).Move( o1.value, o2.value );
				}
			}
			if ( obj is CheckPoint ) {
				if ( o1 ) {
					CheckPoint( obj ).down = true;
				}
			}
		}
		private function KillBullet(b:Bullet, t:FlxTilemap):void {
			b.kill();
			FlxG.play( hit2_MP3, 1, false, false );
		}
		private function Restart():void {
			FadeIn();
		}
		private function KillPlayer(p:Player, s:FlxSprite):void {
			FadeIn();
			if ( s is Spike ) {
				if ( !playHitSOUND ) {
					FlxG.play( hit1_MP3, 1, false, false );
					playHitSOUND = true;
				}
				if ( s.velocity.x == 0 && s.velocity.y == 0 ) {
					Registry.metal.Spawn( s.x - 5, s.y - 5 );
				}
			} if ( s is Bullet ) {
				if ( !playHitSOUND ) {
					FlxG.play( hit2_MP3, 1, false, false );
					playHitSOUND = true;
				}
			}
		}
		private function FadeIn():void {
			FlxG.fade( 0xff000000, 0.3, FadeOut, false );
		}
		private function FadeOut():void {
			Registry.player.reset( Registry.player.respawn.x, Registry.player.respawn.y );
			switchingWorld = false;
			Registry.currentWorld = 1;
			FlxG.camera.scroll.y = 0;
			FlxG.camera.angle = 0;
			FlxG.flash( 0xff000000, 0.3, null, false );
			if ( Registry.currentLevel == 3 ) {
				for each ( var b:Bullet in Registry.bullets.members ) {
					b.kill();
				}
			}
			Registry.metal.kill();
			if ( Registry.currentLevel == 2 || Registry.currentLevel == 3 ) {
				for each ( var p:Platform in Registry.platforms.members ) {
					p.reset( p.respawn.x, p.respawn.y );
					p.mover = false;
					p.velocity.x = 0;
				}
			}
			playHitSOUND = false;
		}
		private function SaveCheckpoint(p:Player, c:CheckPoint):void {
			if ( !c.activated ) {
				FlxG.play( good_MP3, 1, false, false );
			}
			c.activated = true;
			if ( c.down ) {
				p.respawn.x = c.x; p.respawn.y = c.y;
				if ( Registry.currentWorld == 1 ) {
					Registry.currentWorld = 2;
					FlxG.camera.scroll.y = 112;
					FlxG.camera.angle = 180;
					switchingWorld = false;
				}
			} else {
				p.respawn.x = c.x; p.respawn.y = c.y;
			}
		}
		private function EndGame(p:Player, pl:EndButton):void {
			FlxG.switchState( new EndState() );
		}
		private function StartPlatforms(p:Player, pl:Platform):void {
			if ( !pl.mover ) {
				pl.mover = true
				pl.velocity.x = +50;
				FlxG.play( mover_MP3, 1, false, false );
			}
		}
		override public function update():void {
			super.update();
			
			if ( FlxG.keys.R ) {
				Restart();
			}
			
			FlxG.worldBounds.x = FlxG.camera.scroll.x;
			FlxG.worldBounds.y = FlxG.camera.scroll.y;
			bg.x = FlxG.camera.scroll.x - 5;
			
			FlxG.collide( Registry.player, Registry.map );
			FlxG.collide( Registry.player, Registry.spikes, KillPlayer );
			FlxG.overlap( Registry.player, Registry.CheckPoints, SaveCheckpoint );
			
			if ( Registry.currentLevel == 2 || Registry.currentLevel == 3 ) {
				FlxG.collide( Registry.player, Registry.platforms, StartPlatforms );
			}
			if ( Registry.currentLevel == 3 ) {
				FlxG.overlap( Registry.player, Registry.bullets, KillPlayer );
				FlxG.collide( Registry.bullets, Registry.map, KillBullet );
			}
			if ( Registry.currentLevel == 4 ) {
				FlxG.collide( Registry.player, Registry.endButton, EndGame );
			}
			if ( Registry.currentWorld == 1 && Registry.player.y > 104 ) {
				if ( Registry.player.velocity.y > 100 ) {
					Registry.player.velocity.y -= 10;
				} if ( Registry.player.velocity.y < 100 ) {
					Registry.player.velocity.y += 20;
				} 
				Registry.currentWorld = 2
				switchingWorld = true;
				FlxG.play( flip_MP3, 1, false, false );
			} else if ( Registry.currentWorld == 2 && Registry.player.y < 103 ) {
				if ( Registry.player.velocity.y < 100 ) {
					Registry.player.velocity.y += 10;
				} if ( Registry.player.velocity.y > 100 ) {
					Registry.player.velocity.y -= 20;
				}
				Registry.currentWorld = 1;
				switchingWorld = true;
				FlxG.play( flip_MP3, 1, false, false );
			}
			if ( switchingWorld ) {
				if ( Registry.currentWorld == 2 ) {
					if ( FlxG.camera.scroll.y < 112 ) {
						FlxG.camera.scroll.y += 6.2
					}
				} else {
					if ( FlxG.camera.scroll.y < 112 ) {
						FlxG.camera.scroll.y -= 6.2
					}
				}
				SwitchCamera();
			}
		}
		public function SwitchCamera():void {
			FlxG.camera.angle += 10;
			if ( FlxG.camera.angle == 180 ) {
				switchingWorld = false;
				FlxG.camera.scroll.y = 112;
			} if ( FlxG.camera.angle == 0 ) {
				switchingWorld = false;
				FlxG.camera.scroll.y = 0;
			}
		}
	}
}