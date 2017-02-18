# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# í‚É^‚ñ’†‚Åã‰ºˆÚ“®
# custom:recenter-and-move-down
atom.commands.add 'atom-workspace atom-text-editor.emacs-plus:not([mini])', 'custom:recenter-and-move-down', ->
  view = atom.views.getView atom.workspace.getActiveTextEditor()
  atom.commands.dispatch view, 'core:move-down'
  atom.commands.dispatch view, 'emacs-plus:recenter-top-bottom'

# custom:recenter-and-move-up
atom.commands.add 'atom-workspace atom-text-editor.emacs-plus:not([mini])', 'custom:recenter-and-move-up', ->
  view = atom.views.getView atom.workspace.getActiveTextEditor()
  atom.commands.dispatch view, 'core:move-up'
  atom.commands.dispatch view, 'emacs-plus:recenter-top-bottom'
