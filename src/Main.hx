package src;


class Main extends hxd.App {
    override function init() {
        var tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
        tf.text = "Hello World testx dd!";
    }

    static function main() {
        #if debug
        trace("hello world debug");
        #end
        new Main();
    }


}