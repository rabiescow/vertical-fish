function fish_right_prompt
  __vertical_util_set vertical_order_right vi_mode hg_branch git_branch git_status \
                                           duration time

  for component in $vertical_order_right
    eval __vertical_component_$component
  end
  set_color normal
end
