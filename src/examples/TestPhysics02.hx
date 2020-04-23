/*
	Information: Test physcis.
*/

package examples;

import bullet.Bullet.Init as BulletInit;


// https://github.com/saharan/OimoPhysics/blob/master/demos/src/demo/common/DemoMain.hx
class TestPhysics02 extends hxd.App {

	var world : bullet.World;

	override function init() {
		//var collisionConfiguration = new bullet.Bt.DefaultCollisionConfiguration();
		//var collisionConfiguration = new bullet.Bullet.DefaultCollisionConfiguration();

		world = new bullet.World(s3d);
		world.setGravity(0,0,-9.81);

		var floor = new bullet.Body(bullet.Shape.createBox(100,100,1),0, world);
		var mesh = floor.initObject();
		mesh.material.color.setColor(0x800000);

		new h3d.scene.fwd.DirLight(new h3d.Vector(1, 2, -4), s3d);

		var shapes = [bullet.Shape.createSphere(8), bullet.Shape.createBox(16,16,16)];
		for( i in 0...10 ) {
			var id = Std.random(shapes.length);
			var b = new bullet.Body(shapes[id], 0.5, world);
			
			var m = b.initObject();
			m.x = Math.random() * 10;
			m.y = Math.random() * 10;
			m.z = 10 + Math.random() * 10;
			b.loadPosFromObject();


			var mt = new h3d.Matrix();
			mt.identity();
			mt.colorHue(Math.random() * Math.PI * 2);
			m.material.color.set(0.5, 0.3, 0);
			m.material.color.transform(mt);
		}

		new h3d.scene.CameraController(80, s3d);

	}

	static function startApp() {
		new TestPhysics02();
	}

	static function main() {
		//new TestPhysics01();
		BulletInit.init(startApp);
	}

	override function update(deltaTime:Float) {
		super.update(deltaTime);
		world.stepSimulation(deltaTime, 10);
		world.sync();

		// check correct memory gc
		for( i in 0...1000 )
			bullet.Shape.createSphere(0.5);
		//if(world != null){
			//world.step();
		//}
	}
}