
package ui;

@:uiComp("view")
class SampleView extends h2d.Flow implements h2d.domkit.Object {

    static var SRC = 
        <view class="box" vertical> 
            Hello World domkit! 
            //<bitmap src={tile} public id="mybmp"/>
        </view>

    public function new(?parent) {
        super(parent);
        initComponent();
    }
}

class HudInGame extends Hud{

    public function new() {
        super();
        
        var view = new SampleView(flow);

    }

    override function onDispose() {
		super.onDispose();
	}

}