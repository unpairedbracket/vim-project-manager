if filereadable("./project.vim")
    source ./project.vim
endif

fu! SetMissing()
    if !exists("g:project_execute")
        let g:project_execute = ":echo 'No executable path set'"
    endif
    if !exists("g:session_restore")
        let g:session_restore = 0
    endif
endfu

call SetMissing()

if g:session_restore && filereadable("./project_session") && !&diff
    source ./project_session
endif    

command ProjectQuit :call projectManager#QuitProject()
command ProjectRun :call projectManager#RunProject()
command ProjectTags :call projectManager#GenerateTags()
