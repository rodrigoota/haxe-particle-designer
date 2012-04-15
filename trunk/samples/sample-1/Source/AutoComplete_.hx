package;


import com.eclecticdesignstudio.motion.Actuate;
import com.eclecticdesignstudio.motion.easing.Quad;
import nme.display.Sprite;
import nme.display.StageAlign;
import nme.display.StageQuality;
import nme.display.StageScaleMode;
import nme.events.Event;
import nme.Lib;
import nme.events.MouseEvent;
import nme.Assets;
import nme.ui.Mouse;

import nme.display.Bitmap;
import nme.display.BitmapData;

class Sample extends Sprite
{
	var			particleSystem:ASParticleSystem;

	public function new()
	{
		super ();

		init();
	}

	private function init()
	{
		Lib.current.stage.align = StageAlign.TOP_LEFT;
		Lib.current.stage.scaleMode = StageScaleMode.NO_SCALE;
		Lib.current.stage.addEventListener (Event.ACTIVATE, stage_onActivate);
		Lib.current.stage.addEventListener (Event.DEACTIVATE, stage_onDeactivate);

		//Create a particle system
		//Pass the file name of the plist and the path for both the plist and the particle textures (.pngs)
		/**
		Be sure to put in trailing "/"" for assets path (2nd argument)
		**/
		particleSystem = ASParticleSystem.particleWithFile("pinkStream.plist","assets/particles/");
		addChild(particleSystem);
	}
	
	
	// Event Handlers
	
	private function stage_onActivate (event:Event):Void
	{
		trace("stage_onActivate");
	}
	
	
	private function stage_onDeactivate (event:Event):Void {
		trace("stage_onDeactivate");
		
	}

	public static function main() {

		//Redirect trace logs from the fucking screen
		//org.flashdevelop.utils.FlashConnect.redirect();

		Lib.current.addChild(new Sample());
	}
}