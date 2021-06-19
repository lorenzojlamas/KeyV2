include <../includes.scad>

/* in this example we'll use some openSCAD to generate files for printing inset
   legends with a multimaterial printer.
*/

row_sculpting_offset=1;
column_override=undef;
$dish_type = "spherical";
$inset_legend_depth = 0.2;
$font_size = 4;
$font="MesloLGS NF";
legends = ["Esc"];
$stem_support_type = "disable";
$stabilizer_type = "costar_stabilizer"; // [costar_stabilizer, cherry_stabilizer, disable]
for (x = [0:1:0]) {
  
  translate_u(0,-x) legend(legends[x]) hipro_row(x, 0) {
    // swap the debug()s to render opposite part
    debug() key(true);
    /*debug()*/  dished() {
      legends($inset_legend_depth);
    }
  }
}
