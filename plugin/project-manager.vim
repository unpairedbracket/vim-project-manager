if filereadable("./project.vim")
    source ./project.vim
endif

call projectManager#SetMissing()

if g:session_restore && filereadable("./Session.vim")
    source ./Session.vim
endif    

command ProjectQuit :call projectManager#QuitProject()
command ProjectRun :call projectManager#RunProject()
