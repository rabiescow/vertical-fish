function __vertical_component_duration
  __vertical_util_set vertical_duration_color        "#dede9a" \
                                 --bold --background "#232323"
  __vertical_util_set vertical_duration_min          5000
  __vertical_util_set vertical_duration_prefix       ""
  __vertical_util_set vertical_duration_prefix_color "#232323" \
                                 --bold --background "#232323"
  __vertical_util_set vertical_duration_suffix       ""
  __vertical_util_set vertical_duration_suffix_color "#232323" \
                                 --bold --background "#232323"

  if [ $CMD_DURATION -lt $vertical_duration_min ]
    return
  end

  set -l t $CMD_DURATION
  set -l dur
  if [ $t -eq 0 ]
    set dur -a '0s'
  else
    set -l ms (math --scale 0 -- $t % 1000)
    set -l t  (math --scale 0 -- $t / 1000)
    set -l s  (math --scale 0 -- $t % 60)
    set -l t  (math --scale 0 -- $t / 60)
    set -l m  (math --scale 0 -- $t % 60)
    set -l t  (math --scale 0 -- $t / 60)
    set -l h  (math --scale 0 -- $t % 24)
    set -l t  (math --scale 0 -- $t / 24)
    set -l d  $t
    if [ $d != 0 ]
      set -a dur {$d}d
    end
    if [ $h != 0 ]
      set -a dur {$h}h
    end
    if [ $m != 0 ] && [ $d -eq 0 ]
      set -a dur {$m}m
    end
    if [ $s != 0 ] && [ $d -eq 0 ] && [ $t -lt 7200000 ]
      set -a dur {$s}s
    end
    if [ $ms != 0 ] && [ $d -eq 0 ] && [ $h -eq 0 ] && [ $t -lt 1800000 ]
      set -a dur {$ms}ms
    end
  end

  set_color normal
  set_color $vertical_duration_prefix_color
  echo -ens $vertical_duration_prefix
  set_color normal
  set_color $vertical_duration_color
  echo -ens (string join ' ' $dur)
  set_color normal
  set_color $vertical_duration_suffix_color
  echo -ens $vertical_duration_suffix
  set_color normal
end
