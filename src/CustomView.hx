import hide.view.FileView;

class CustomView extends FileView {
    
    // onDisplay should create html layout of your view. It is also called each when file is changed externally.
    override public function onDisplay()
    {
        // Example of initial layout setup.
        element.html('
          <div class="flex vertical">
            <div class="toolbar"></div>
            <div class="content"></div>
          </div>
        ');
        var tools = new hide.comp.Toolbar(null, element.find(".toolbar"));
        var content = element.find(".content"));
        // Importantly, use `getPath()` to obtain file path that you can use for filesystem access.
        var path = getPath();
        // ... your code to fill content
  }
  
  // Register the view with specific extensions.
  // Extensions starting with `json.` refer to `.json` files with `type` at root
  // object being second part of extension ("type": "customView" in this sample).
  // Otherwise it is treated as regular file extension.
  // Providing icon and createNew is optional. If createNew set, HIDE file tree will have a context menu item to create new file that FileView represents.
  static var _ = hide.view.FileTree.registerExtension(CustomView, ["json.customView", "customview"], { icon: "snowflake-o", createNew: "Dialog Context" });
  
}