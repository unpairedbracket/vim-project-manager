fu! projectManager#SetMissing()
    if !exists("g:project_execute")
        let g:project_execute = ":echo 'No executable path set'"
    endif
    if !exists("g:session_restore")
        let g:session_restore = 0
    endif
endfu

fu! projectManager#RunProject()
    if confirm('Save all files before running?', "&Yes\n&No", 1) == 1
        :wall
    endif
    :exec g:project_execute
endfu

fu! projectManager#QuitProject()
    if g:session_restore
        :mksession! project_session
        :arg project_session
        :argdo g/SuperTab/d | update
    endif
    :qall
endfu

fu! projectManager#GenerateTags()
    :exec g:tags_execute
endfu
