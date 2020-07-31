" https://github.com/junegunn/vim-plug

filetype off

let FirstTimeInstall = 0
if has('win32') " Windows
  if !filereadable($HOME . '/AppData/Local/nvim/autoload/plug.vim')
    call mkdir($HOME . '/AppData/Local/nvim/autoload', 'p')
    !powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim', $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath('~\AppData\Local\nvim\autoload\plug.vim'))"
    call mkdir($HOME . '/AppData/Local/nvim_extensions', 'p')
    let FirstTimeInstall = 1
  endif
else " Linux/MacOS
  if !filereadable($HOME . '/.config/nvim/autoload/plug.vim')
    if executable('curl')  "use curl to download plug
      silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      call mkdir($HOME . '/.config/nvim_extensions', 'p')
      let FirstTimeInstall = 1
    else
      echo 'you need to install curl first.'
      quit
    endif
  endif
endif

set encoding=utf-8
set fileencoding=utf-8

if has('win32')  " Windows
  call plug#begin('~/AppData/Local/nvim_extensions')
  so $HOME/Appdata/Local/nvim/extensions.vim
else  " Linux/MacOS
  call plug#begin('~/.config/nvim_extensions')
  so $HOME/.config/nvim/extensions.vim
endif  

if FirstTimeInstall == 1
  echo 'Installing plugins, please ignore key map error messages'
  echo ''
  :PlugInstall
endif
call plug#end()
