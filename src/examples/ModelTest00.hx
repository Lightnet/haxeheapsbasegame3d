/*

*/

package examples;

import hxd.fmt.hmd.Data.AnimationObject;
import h3d.anim.Animation;
import h3d.scene.*;
import h3d.scene.fwd.*;
import hxd.Key;

class ModelTest00 extends examples.SampleApp {

	var cache : h3d.prim.ModelCache;

	var charobject:Object;
	var walk:Animation;
	var idle:Animation;
	public var controller : dn.heaps.Controller;
	public var ca : dn.heaps.Controller.ControllerAccess;

	override function init() {
		cache = new h3d.prim.ModelCache();

		//var obj = cache.loadModel(hxd.Res.Model);
		//charobject = cache.loadModel(hxd.Res.animemale0301);
		charobject = cache.loadModel(hxd.Res.animemale0301);
		//charobject = obj;
		//obj.scale(0.1);
		
		s3d.addChild(charobject);
		s3d.camera.pos.set( -3, -5, 3);
		s3d.camera.target.z += 1;

		
		idle = cache.loadAnimation(hxd.Res.animemale0301_Idle);
		//walk = cache.loadAnimation(hxd.Res.animemale0301_walk);
		walk = cache.loadAnimation(hxd.Res.animemale0301_walk02);
		charobject.playAnimation(idle);

		//obj.playAnimation(cache.loadAnimation(hxd.Res.Model));
		//obj.playAnimation(cache.loadAnimation(hxd.Res.animemale0301_Idle));
		//obj.playAnimation(cache.loadAnimation(hxd.Res.animemale0301_walk));
		var s = s2d;
		controller = new dn.heaps.Controller(s);
		ca = controller.createAccess("main");
		controller.bind(AXIS_LEFT_X_NEG, Key.LEFT, Key.Q, Key.A);
		controller.bind(AXIS_LEFT_X_POS, Key.RIGHT, Key.D);
		
		// add lights and setup materials
		var dir = new DirLight(new h3d.Vector( -1, 3, -10), s3d);
		
		for( m in charobject.getMaterials() ) {
			var t = m.mainPass.getShader(h3d.shader.Texture);
			if( t != null ) t.killAlpha = true;
			m.mainPass.culling = None;
			m.getPass("shadow").culling = None;
		}
		
		s3d.lightSystem.ambientLight.set(0.4, 0.4, 0.4);

		var shadow = s3d.renderer.getPass(h3d.pass.DefaultShadowMap);
		shadow.power = 20;
		shadow.color.setColor(0x301030);
		dir.enableSpecular = true;

		new h3d.scene.CameraController(s3d).loadFromCamera();
	}

	override function update(deltaTime:Float) {
		super.update(deltaTime);

		if( ca.isKeyboardDown(hxd.Key.W) || ca.isKeyboardDown(hxd.Key.UP) ){
			if(charobject !=null){
				charobject.playAnimation(idle);
				trace("Ide");
			}
		}
		if( ca.isKeyboardDown(hxd.Key.S) || ca.isKeyboardDown(hxd.Key.DOWN) ){
			if(charobject !=null){
				charobject.playAnimation(walk);
				trace("Walk");
			}
		}
	}

	static function main() {
		hxd.Res.initEmbed();
		new ModelTest00();
	}

}
