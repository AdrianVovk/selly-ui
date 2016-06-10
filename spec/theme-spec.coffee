describe "One Dark UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('slut-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('slut-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('slut-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-slut-ui-layoutmode')).toBe 'auto'

    atom.config.set('slut-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-slut-ui-layoutmode')).toBe 'spacious'
