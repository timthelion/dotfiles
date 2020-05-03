set -gx PLAN9 $HOME/plan9
set -gx venti 127.0.0.1
set -gx PATH /home/timothy/.local/bin /home/timothy/bin /home/timothy/.subuser/bin /home/timothy/.cargo/bin $PATH /home/timothy/plan9/bin /home/timothy/.guix-profile/bin
set -gx INFOPATH /home/timothy/.guix-profile/share/info $PATH
set -gx RUST_SRC_PATH /home/timothy/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
set -gx GUIX_LOCPATH $HOME/.guix-profile/lib/locale
set -gx GTK_IM_MODULE ibus
set -gx XMODIFIERS @im=ibus
set -gx QT_IM_MODULE ibus

function fish_prompt
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    echo -n 'meaningless:'(prompt_pwd)'['"$git_branch"'] > '
end

function fish_title
    if set -q argv[1]
        echo $argv[1]
    else
        echo $PWD
    end
end

set -g -x EDITOR nvim
set -g -x GNUPGHOME /home/timothy/.gnupg/trezor

alias vim nvim
