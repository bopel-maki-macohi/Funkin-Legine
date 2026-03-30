import flixel.FlxSprite;
import lime.app.Application;
import flixel.util.FlxTimer;
import ui.PreferencesMenu;
import flixel.FlxG;
import flixel.FlxState;

class InitState extends FlxState
{
	override function create()
	{
		super.create();

		FlxSprite.defaultAntialiasing = true;

		FlxG.game.focusLostFramerate = 60;
		FlxG.sound.muteKeys = [ZERO];

		FlxG.save.bind('Funkin-Legine', 'Maki');
		PreferencesMenu.initPrefs();
		PlayerSettings.init();
		Highscore.load();

		#if FREEPLAY
		FlxG.switchState(() -> new FreeplayState());
		#elseif CHARTING
		FlxG.switchState(() -> new ChartingState());
		#else
		new FlxTimer().start(1, function(tmr:FlxTimer)
		{
			PlayState.storyPlaylist = ['Bopeebo', 'Fresh'];
			PlayState.isStoryMode = true;

			var diffic = "-hard";
			PlayState.storyDifficulty = 2;

			PlayState.SONG = Song.loadFromJson(PlayState.storyPlaylist[0].toLowerCase() + diffic, PlayState.storyPlaylist[0].toLowerCase());
			PlayState.storyWeek = 1;
			PlayState.campaignScore = 0;
			new FlxTimer().start(1, function(tmr:FlxTimer)
			{
				LoadingState.loadAndSwitchState(new PlayState(), true);
			});
		});
		#end

		#if discord_rpc
		DiscordClient.initialize();

		Application.current.onExit.add(function(exitCode)
		{
			DiscordClient.shutdown();
		});
		#end
	}
}
