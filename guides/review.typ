#import "../templates/effprac-header.typ": header
#set page("us-letter")
#set text(font: "PT Sans", size: 22pt)

#header([Reviewing a Piece])

#let icon_item(icon, words) = [
  
#block(below: 10pt)[
  #set align(horizon)
  #box()[#image(icon, height: 22pt)]
  #box(pad(bottom: 3pt, left: 6pt, words))
]
]

== Prepare
#icon_item("../resources/f7--headphones.svg", [*Listen* to the piece])
#icon_item("../resources/ic--twotone-map.svg", [Review *sections*])
#icon_item("../resources/pepicons-pencil--music-note-single.svg", [Practice the *hardest spots*])

==

#v(20pt)

#columns(2, gutter: 8pt)[
#v(14pt)
  == Play
  #icon_item("../resources/mage--play-circle-fill.svg", [Put it together])
  #icon_item("../resources/mingcute--repeat-fill.svg", [Fix any mistakes])
  #icon_item("../resources/fluent-mdl2--diet-plan-notebook.svg", [Plan next for time])

  #colbreak()

  #block(
    stroke: (paint: luma(120), thickness: 1pt),
    inset: (x: 15pt, top: 15pt, bottom: 18pt),
    radius: 15%,
    width: 100%,
  )[
    == Improve
    #set text(size: 16pt)
    You are a better musician now than when you learned this piece.
    
    Try to bring this piece up to your new standard
  ]
]


