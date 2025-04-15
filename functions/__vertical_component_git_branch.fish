function __vertical_component_git_branch
  __vertical_util_set vertical_git_branch_color        "#9a9a9a" --bold
  __vertical_util_set vertical_git_branch_prefix       ' ❮'
  __vertical_util_set vertical_git_branch_prefix_color "#565656" --bold
  __vertical_util_set vertical_git_branch_icon         ' '
  __vertical_util_set vertical_git_branch_icon_color   "#565656"

  if not __vertical_util_is_git
    return
  end

  set -l branch (command git describe --tags --exact-match 2> /dev/null \
    || command git symbolic-ref -q --short HEAD \
    || command git rev-parse --short HEAD)
  set_color normal
  set_color $vertical_git_branch_prefix_color
  echo -ens $vertical_git_branch_prefix
  set_color normal
  set_color $vertical_git_branch_icon_color
  echo -ens $vertical_git_branch_icon
  set_color normal
  set_color $vertical_git_branch_color
  echo -ens $branch
  set_color normal
end
