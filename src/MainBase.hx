class MainBase extends Main{

    public override function new(s:h2d.Scene) {


        
        super(s);
    }

    public override function startGame() {
		if( Game.ME!=null ) {
			Game.ME.destroy();
			delayer.addF(function() {
				//new Game();
				new GameBase();
			}, 1);
		}
		else
			//new Game();
			new GameBase();
	}
}