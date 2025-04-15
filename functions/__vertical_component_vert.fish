function __vertical_component_vert -a position
  __vertical_util_set vertical_vert_color_failure_top    red --bold
  __vertical_util_set vertical_vert_color_success_top    green --bold
  __vertical_util_set vertical_vert_color_failure_bottom red --bold
  __vertical_util_set vertical_vert_color_success_bottom green --bold
  __vertical_util_set vertical_vert_bottom               ▋
  __vertical_util_set vertical_vert_top                  ▋

  set_color normal
  if [ $__vertical_exit_code -eq 0 ]
    eval "set_color \$vertical_vert_color_success_$position"
  else
    eval "set_color \$vertical_vert_color_failure_$position"
  end

  eval "echo -ens \$vertical_vert_$position"
  set_color normal
end
