function __vertical_component_dir
  __vertical_util_set vertical_dir_color        blue --bold
  __vertical_util_set vertical_dir_prefix       ' '
  __vertical_util_set vertical_dir_prefix_color blue --bold
  __vertical_util_set vertical_dir_trunc_git    false
  __vertical_util_set vertical_dir_trunc_home   true
  __vertical_util_set vertical_dir_suffix       ""  #""
  __vertical_util_set vertical_dir_suffix_color blue

  set -l dir (prompt_pwd $PWD)

  set_color normal
  set_color $vertical_dir_prefix_color
  echo -ens $vertical_dir_prefix
  set_color normal
  set_color $vertical_dir_color
  echo -ens $dir
  set_color normal
  set_color $vertical_dir_suffix_color
  echo -ens $vertical_dir_suffix
  set_color normal
end
