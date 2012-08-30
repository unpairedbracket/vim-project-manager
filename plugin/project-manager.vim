if filereadable("./project.vim")
    source ./project.vim
endif

call projectManager#SetMissing()

if g:session_restore && filereadable("./project_session") && !&diff
    source ./project_session
endif    

command ProjectQuit :call projectManager#QuitProject()
command ProjectRun :call projectManager#RunProject()
command ProjectTags :call projectManager#GenerateTags()
