
package ui;

import h2d.Flow;

@:uiComp("view")
class SampleView extends h2d.Flow implements h2d.domkit.Object {

    static var SRC = 
        <view class="box" vertical> 
            Hello World Domkit!
            
            //<bitmap src={tile} public id="mybmp"/>
        </view>

    public function new(?parent) {
        super(parent);
        initComponent();
    }
}

class HudInGame extends Hud{

    public var view:Flow ;
    public function new() {
        super();
        
        view = new SampleView(flow);

    }

    override function onDispose() {
        super.onDispose();
        view.remove();
	}

}