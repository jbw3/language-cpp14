AtomCppExtensionsView = require './atom-cpp-extensions-view'
{CompositeDisposable} = require 'atom'

module.exports = AtomCppExtensions =
  atomCppExtensionsView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @atomCppExtensionsView = new AtomCppExtensionsView(state.atomCppExtensionsViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @atomCppExtensionsView.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'atom-cpp-extensions:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @atomCppExtensionsView.destroy()

  serialize: ->
    atomCppExtensionsViewState: @atomCppExtensionsView.serialize()

  toggle: ->
    console.log 'AtomCppExtensions was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
