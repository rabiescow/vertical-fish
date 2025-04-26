function __vertical_util_is_hg
  set -l root (fish_print_hg_root)
  # or return 1
  set -l branch (cat $root/branch 2>/dev/null; or echo default)
  set -l repo_status (hg status | string sub -l 2 | sort -u)
  if test -z "$repo_status"
    echo hello
    echo -n "($branch)"'✓'
  end
  if not command -sq hg
    echo hg!11
    return 1
  end
  if not type -q hg
    echo HG!
    return 1
  end
  echo "no HG!"
end
