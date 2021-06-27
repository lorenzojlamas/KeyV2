include <../../includes.scad>
// include <../src/layout.scad>


helix_layout = [
  // [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1],
  [1, 1, 1, 1, 1, 1, -1, -1, -1, 1, 1, 1, 1, 1, 1],
  // [1, 1, 1, 1, 1, 1, -1, -1, -1, 1, 1, 1, 1, 1, 1]
  // [1, 1, 1, 1, 1, 1, -1, -1, -1, 1, 1, 1, 1, 1, 1],
  // [1, 1, 1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1, 1, 1],
  // [1, 1, 1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1, 1, 1],
];

helix_layout_legends = [
    ["|","1","2","3","4","5","","","","6","7","8","9","0","⌫",],
    ["⇥","q","w","e","r","t","","","","y","u","i","o","p","⏎",],
    ["Esc","a","s","d","f","g","","","","h","j","k","l","ñ","´",],
    ["⇧","<","z","x","c","v","{","","}","b","n","m","-","↑","'",],
    ["Fn","Ct","Al","⌘","1º"," ",".","",","," ","2º","3º","←","↓","→",]
];

helix_layout_legends_aux = [
    ["\\","!","\"","#","$","%","","","","&","/","(",")","=","?",],
    ["","","","","","","","","","","","","","",""],
    ["","","","","","","","","","","","","","","`"],
    ["",">","","","","","[","","]","","","","_","","\""],
    ["","","","","","",":","",";","","","","","",""],
];

helix_layout_front_legends = [
    ["F1","F2","F3","F4","F5","F6","","","","F7","F8","F9","F10","F11","F12"],
    ["","@","ª","¬","","","","","","7","8","9","+","*","",],
    ["","","","","","","","","","6","5","4","-","^","",],
    ["","","","","","","","","","3","2","1","¿","?","",],
    ["","","","","","","","","","","0","⏎","!","¡",]
];
// row_sculpting_offset=1;
// column_override=undef;
// $dish_type = "disable";
// $inset_legend_depth = 0.5;
// $font_size = 4;
// $font="MesloLGS NF";

row_sculpting_offset=1;
column_override=undef;
$dish_type = "spherical";
$inset_legend_depth = 1.0;
$font_size = 4;
$font="MesloLGS NF";
legends = ["Esc"];
$stem_support_type = "tines";
$double_sculpted = true;
$stabilizer_type = "costar_stabilizer"; // [costar_stabilizer, cherry_stabilizer, disable]


layout(helix_layout, "dcs", legends=helix_layout_legends,legends_aux=helix_layout_legends_aux, front_legends=helix_layout_front_legends, row_sculpting_offset=row_sculpting_offset, column_override=column_override, column_sculpt_profile="cresting_wave") 
 // whatever layer height you use
    // Imprimir tecla
    union() {
      /*debug()*/ key(true);
      debug() dished() {
        legends($inset_legend_depth);
      }
    }

    // Imprimir legenda
    // union() {
    //   debug() key(true);
    //   dished() {
    //     legends($inset_legend_depth);
    //   }
    // }