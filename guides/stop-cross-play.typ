#set page("us-letter")
#set text(font: "PT Sans", weight: 700, size: 90pt)

#let row(img, text) = [


  #block(height: 30%, width: 100%, above: 0pt, below: 0pt)[
    #place(horizon + left, dx: 10pt)[#image(img, height: 130pt)]
    #place(horizon + left, dx: 30% + 40pt)[#text]
  ]
]

#row("../resources/openmoji--stop-sign.svg", [Stop])
#row("../resources/cross-arrows.svg", [Cross])
#row("../resources/solar--play-bold.svg", [Play])
