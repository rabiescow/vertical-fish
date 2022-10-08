# Vertical

A clean and git-aware prompt for the
[fish shell](https://github.com/fish-shell/fish-shell) with a definitive
vertical line.

Reasons why you should use Vertical:

* Features a unique vertical line prompt
* Highly configurable
* Git-aware
* Shows the status of background jobs
* Indicates when running over SSH
* User and host names
* Displays the duration of the previous command

This is what it looks like out of the box:

![Screenshot](.image/screenshot.png?raw=true)

## Requirements

* [fish](https://github.com/fish-shell/fish-shell) (v3.0.0 or higher)
* [git](https://git-scm.com) (optional, for git integration)

## Installation

### Using [Fisher](https://github.com/jorgebucaran/fisher)

```sh
fisher install adamchristiansen/vertical-fish
```

## Configuration

The following options can be overridden by setting the variable. This only
needs to be done once, as universal variables are used for all configuration
options.

> **Note**: The `vertical_reset_configuration` command can be used to clear all
> universal variables. They are reset to their default values the next time
> that the prompt is run. This affects only universal variables, so any set
> global variables will still be used.

**General**

| Option                  | Default                                                         | Description                          |
|-------------------------|-----------------------------------------------------------------|--------------------------------------|
| `vertical_color_normal` | `normal`                                                        | The default color.                   |
| `vertical_newline`      | `true`                                                          | Inserts a newline before the prompt. |
| `vertical_order`        | `jobs ssh user host dir git_branch git_status duration vi_mode` | Order to display components. |

**Cue**

The cue is displayed immediately before where the user types.

| Option                    | Default  | Description |
|---------------------------|----------|-------------|
| `vertical_vert_cue`       | `' '`    | Cue text    |
| `vertical_vert_cue_color` | `normal` | Cue color   |

**Directory**

| Option                      | Default       | Description                                  |
|-----------------------------|---------------|----------------------------------------------|
| `vertical_dir_color`        | `blue --bold` | Directory color                              |
| `vertical_dir_prefix`       | `' '`         | Directory prefix                             |
| `vertical_dir_prefix_color` | `blue --bold` | Directory prefix color                       |
| `vertical_dir_trunc_git`    | `true`        | Shorten directory relative to git repository |
| `vertical_dir_trunc_home`   | `true`        | Replace `$HOME` with `~`                     |

**Duration**

| Option                           | Default         | Description                                     |
|----------------------------------|-----------------|-------------------------------------------------|
| `vertical_duration_color`        | `yellow --bold` | Duration color                                  |
| `vertical_duration_min`          | `5000`          | Minimum command duration to show (milliseconds) |
| `vertical_duration_prefix`       | `' '`           | Duration prefix                                 |
| `vertical_duration_prefix_color` | `yellow --bold` | Duration prefix color                           |
| `vertical_duration_show`         | `true`          | Show the duration                               |

**Git Branch**

| Option                             | Default          | Description             |
|------------------------------------|------------------|-------------------------|
| `vertical_git_branch_color`        | `magenta --bold` | Git branch color        |
| `vertical_git_branch_prefix`       | `' '`            | Git branch prefix       |
| `vertical_git_branch_prefix_color` | `magenta --bold` | Git branch prefix color |

**Git Status**

| Option                              | Default       | Description                   |
|-------------------------------------|---------------|-------------------------------|
| `vertical_git_status_color`         | `cyan --bold` | Git status color              |
| `vertical_git_status_prefix`        | `' ['`        | Git status prefix             |
| `vertical_git_status_prefix_color`  | `cyan --bold` | Git status prefix color       |
| `vertical_git_status_show`          | `true`        | Show the git status indicator |
| `vertical_git_status_suffix`        | `]`           | Git status suffix             |
| `vertical_git_status_suffix_color`  | `cyan --bold` | Git status suffix color       |
| `vertical_git_status_sym_added`     | `+`           | Git added status symbol       |
| `vertical_git_status_sym_ahead`     | `↑`           | Git ahead status symbol       |
| `vertical_git_status_sym_behind`    | `↓`           | Git behind stymbol            |
| `vertical_git_status_sym_diverged`  | `⇵`           | Git divstatus symbol          |
| `vertical_git_status_sym_deleted`   | `-`           | Geted status symbol           |
| `vertical_git_status_sym_modified`  | `!`           | Git modified status symbol    |
| `vertical_git_status_sym_renamed`   | `»`           | Git renamed status symbol     |
| `vertical_git_status_sym_stashed`   | `#`           | Git stashed status symbol     |
| `vertical_git_status_sym_unmerged`  | `=`           | Git unmerged status symbol    |
| `vertical_git_status_sym_untracked` | `?`           | Git untracked status symbol   |

**Host**

| Option                       | Default         | Description                           |
|------------------------------|-----------------|---------------------------------------|
| `vertical_host_color`        | `yellow --bold` | Host color                            |
| `vertical_host_prefix`       | `@`             | Host prefix                           |
| `vertical_host_prefix_color` | `--bold`        | Host prefix color                     |
| `vertical_host_show`         | `true`          | Show host (`true`, `false`, or `ssh`) |

**Jobs**

| Option                       | Default       | Description           |
|------------------------------|---------------|-----------------------|
| `vertical_jobs_color`        | `cyan --bold` | Jobs color            |
| `vertical_jobs_prefix`       | `' '`         | Jobs prefix           |
| `vertical_jobs_prefix_color` | `' '`         | Jobs prefix color     |
| `vertical_jobs_show`         | `true`        | Show jobs indicator   |
| `vertical_jobs_sym`          | `●`           | Jobs indicator symbol |

**SSH**

| Option                      | Default       | Description          |
|-----------------------------|---------------|----------------------|
| `vertical_ssh_color`        | `cyan --bold` | SSH indicator color  |
| `vertical_ssh_prefix`       | `' '`         | SSH prefix           |
| `vertical_ssh_prefix_color` | `cyan --bold` | SSH prefix color     |
| `vertical_ssh_show`         | `true`        | Show SSH indicator   |
| `vertical_ssh_sym`          | `'▲'`         | SSH symbol           |

**User**

| Option                 | Default         | Description                           |
|------------------------|-----------------|---------------------------------------|
| `vertical_user_color`  | `yellow --bold` | User color                            |
| `vertical_user_prefix` | `' '`           | User prefix                           |
| `vertical_user_prefix` | `yellow --bold` | User prefix color                     |
| `vertical_user_show`   | `true`          | Show user (`true`, `false`, or `ssh`) |

**Vertical Bar**

| Option                        | Default | Description                                       |
|-------------------------------|---------|---------------------------------------------------|
| `vertical_vert_bottom`        | `│`     | Vertical bottom symbol                            |
| `vertical_vert_color_success` | `green` | Vertical color when the previous command succeeds |
| `vertical_vert_color_failure` | `red`   | Vertical color when the previous command fails    |
| `vertical_vert_top`           | `│`     | Vertical top symbol                               |

**VI Mode**

| Option                             | Default         | Description                |
|------------------------------------|-----------------|----------------------------|
| `vertical_vi_mode_color`           | `yellow --bold` | VI mode color              |
| `vertical_vi_mode_prefix`          | `''`            | VI mode prefix             |
| `vertical_vi_mode_prefix_color`    | `yellow --bold` | VI mode prefix color       |
| `vertical_vi_mode_show`            | `true`          | Show VI mode indicator     |
| `vertical_vi_mode_sym_insert`      | `''`            | VI insert mode symbol      |
| `vertical_vi_mode_sym_normal`      | `' (N)'`        | VI normal mode symbol      |
| `vertical_vi_mode_sym_replace_one` | `' (R)'`        | VI replace one mode symbol |
| `vertical_vi_mode_sym_visual`      | `' (V)'`        | VI visual mode symbol      |
