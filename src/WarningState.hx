package;
import flixel.*;

/**
 * ...
 * @author MatheusSilver
 */
class WarningState extends MusicBeatState
{

	public function new() 
	{
		super();
	}
	
	override function create() 
	{
		super.create();
		
		var screen:FlxSprite = new FlxSprite().loadGraphic(Paths.image("imagemLegal")); 
		
		add(screen);
		
		
	}
	
	
	override function update(elapsed:Float) 
	{
		super.update(elapsed);

		var pressedEnter:Bool = FlxG.keys.justPressed.ENTER;

		#if mobile
		for (touch in FlxG.touches.list)
		{
			if (touch.justPressed)
			{
				pressedEnter = true;
			}
		}
		#end
		
		if (pressedEnter){
			MusicBeatState.switchState(new MainMenuState());
		}
		
		
		
	}
	
}
