package prefabs;

import hrt.prefab.Context;
import hrt.prefab.Library;

class MyPrefab1 extends hrt.prefab.Object3D {
    
    public function new(?parent) {
        super(parent);
        type = "myprefab1";
    }

    override function make(ctx:Context):Context {
        var ret = super.make(ctx);
        // Custom code...
        return ret;
    }

    #if editor

    override function getHideProps() : hide.prefab.HideProps {
        return { icon : "cog", name : "MyPrefab1" };
    }

    #end

    static var _ = Library.register("myprefab1", MyPrefab);
}