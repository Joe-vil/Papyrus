import flixel.system.FlxSound;
import flixel.FlxG;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxSprite;
import Controls.KeyboardScheme;
import flixel.FlxObject;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import io.newgrounds.NG;
import lime.app.Application;
import flixel.FlxCamera;

class Hehestate extends MusicBeatState
{

	var dadsaw:FlxSprite;
	var player:FlxSprite;

	override public function create()
	{

		super.create();

		if (!FlxG.sound.music.playing)
		{
			FlxG.sound.playMusic(Paths.music('Snowdin Town'));
		}
		
		FlxG.sound.playMusic(Paths.music('Snowdin Town'));

		persistentUpdate = persistentDraw = true;

		player = new FlxSprite(0).loadGraphic(Paths.image('snow/player', 'papyrus'));
		player.scrollFactor.x = 0;
		player.scrollFactor.y = 0;
		player.updateHitbox();
		player.visible = true;
		player.antialiasing = true;	
		// player.scale.set(3.3, 3.3);
		add(player);
		FlxG.camera.follow(player, TOPDOWN, 1);

		dadsaw = new FlxSprite(0).loadGraphic(Paths.image('snow/snowdin_map', 'papyrus'));
		dadsaw.scrollFactor.x = 0;
		dadsaw.scrollFactor.y = 0;
		dadsaw.updateHitbox();
		// dadsaw.screenCenter();
		dadsaw.visible = true;
		dadsaw.antialiasing = true;	
		// dadsaw.scale.set(3.3, 3.3);

		// add(dadsaw);
		// add(player);

		FlxG.camera.follow(player, TOPDOWN, 1);

		// super.create();
	}

	override public function update(elapsed:Float)
	{

			super.update(elapsed);

			if (controls.BACK)
			{
				FlxG.switchState(new MainMenuState());
			}
			if (FlxG.keys.pressed.LEFT)
			{
				player.x -= 2;
			}
			if (FlxG.keys.pressed.RIGHT)
			{
				player.x += 2;
			}
			if (FlxG.keys.pressed.UP)
			{
				player.y -= 2;
			}
			if (FlxG.keys.pressed.DOWN)
			{
				player.y += 2;
			}
	}
}
	