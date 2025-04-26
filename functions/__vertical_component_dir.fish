function __vertical_component_dir
    __vertical_util_set vertical_dir_color blue --bold
    __vertical_util_set vertical_dir_prefix ' '
    __vertical_util_set vertical_dir_prefix_color blue --bold
    __vertical_util_set vertical_dir_trunc_git true
    __vertical_util_set vertical_dir_trunc_home true
    __vertical_util_set vertical_dir_suffix ""
    __vertical_util_set vertical_dir_suffix_color blue

    set -l dir
    if [ $vertical_dir_trunc_git = true ] && __vertical_util_is_git
        # Find the current directory with all symlinks resolved
        set dir (pwd -P 2> /dev/null || pwd)
        # Find the path to the root of the git repository. The idea behind the
        # string replace is to replace the first part of the path (up to the
        # git root directory) with just the basename of the root directory.
        set -l root (command git rev-parse --show-toplevel 2> /dev/null)
        set dir (string replace $root (basename $root) $dir)
    else if [ $vertical_dir_trunc_home = true ]
        # Replace $HOME with ~
        set -l realhome ~
        set dir (string replace -r '^'"$realhome"'($|/)' '~$1' $PWD)
        set dir (prompt_pwd --full-length-dirs 2 $dir)
    else
        set dir (prompt_pwd --full-length-dirs 2 $PWD)
    end

    if test -n $__LOCAL_SIGNAL
        set dir $dir
    else
        set dir (string join " " "(venv)" $dir)
    end

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
