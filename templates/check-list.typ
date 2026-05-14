#let checklist(instrument) = [
  #set page("us-letter")
  #set text(font: "PT Serif", size: 32pt, weight: 600)
  #set list(
    marker: [#pad(top: -4pt, right: -4pt, image("../resources/ic--sharp-check.svg", height: 30pt))],
    spacing: 34pt,
  )

  #show heading.where(level: 1): set text(size: 60pt, tracking: 0.02em)

  = #instrument #linebreak() #h(1in) Check List
  #place(top + left, dy: 65pt, dx: -20pt)[#image("../resources/streamline-freehand--music-clef.svg", height: 75pt)]
  #place(top + right, dx: 30pt, dy: 10pt)[#rotate(-45deg)[#image("../resources/game-icons--violin.svg", height: 110pt)]]
  #line(length: 7in, stroke: 3pt + black)

  - Beautiful Bow Hold
  - #instrument on your shoulder
  - Bow on the String
  - Hear the Song in your Mind
  - Prepare First Note(s)
  - Breathe
  - Count in
  - Play!
]
