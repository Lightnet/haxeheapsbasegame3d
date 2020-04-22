import dn.Process;
import hxd.Key;

class GameBase extends Game {
	static var INTRO_DONE = false;

	public function new() {
		super();
		hud = new ui.HudInGame();


		//hud = new ui.HudInGame();
		//trace(Lang.t._("init..."));
		
		var hero = new en.Hero(5,5);
		
		//camera.target = hero;
		//camera.recenter();

		new en.Wall(10,10);


	}

	override function onCdbReload() {
		super.onCdbReload();

	}

	override function preUpdate() {
		super.preUpdate();

	}

	override function postUpdate() {
		super.postUpdate();

	}

	override function fixedUpdate() {
		super.fixedUpdate();

	}

	override function update() {
		super.update();

	}
}


