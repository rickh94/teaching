#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import fletcher.shapes: diamond, hexagon, octagon, pill, triangle

#set page("us-letter")

#set text(font: "PT Sans", size: 18pt)

#show heading.where(level: 1): set text(fill: rgb("#960142"), size: 32pt)
#show heading.where(level: 1): set align(center)
#show heading.where(level: 2): set align(center)
#show heading.where(level: 2): set text(size: 16pt, fill: luma(80))

#show heading.where(level: 3): set text(size: 18pt)


#let blob(pos, label, tint: white, ..args) = node(
  pos,
  align(center, label),
  width: 28mm,
  fill: tint.lighten(70%),
  stroke: 2pt + tint.darken(20%),
  corner-radius: 5pt,
  inset: 10pt,
  ..args,
)

#underline(
  offset: 8pt,
  stroke: 2pt,
  [= Learning by Ear],
)

== Effective Practicing

#v(1in)

#set align(center)
#diagram(
  edge-stroke: 2pt,
  blob((1, -1), [Listen], tint: blue, width: 7em, height: 3em),
  edge("->"),
  blob((1, 0), [Guess a Note], tint: purple, width: 8em, inset: 15pt, height: 3em),
  edge("->"),
  blob((1, 1), [Is it correct?], tint: orange, width: 8em, shape: pill, height: 3em),
  edge("->"),
  blob((0, 2), [Yes], tint: green, shape: diamond, width: 4em, height: 3em),
  edge((0, 2), (0, 1), "->"),
  blob((0, 1), [Remember this note], width: 8em, tint: gray, height: 4em),
  edge((0, 1), (0, 0), "->"),
  blob((0, 0), [Move on], width: 6em, tint: gray, height: 3em),
  edge((0, 0), (0, -1), (1, -1), "->", kind: "poly"),
  edge((1, 1), (2, 2), "->"),
  blob((2, 2), [No], tint: red, shape: diamond, height: 3em),
  edge("->"),
  blob((2, 1), [Eliminate this note], tint: maroon, width: 6.5em, shape: octagon, height: 3.5em),
  edge("->"),
  blob((2, 0), [Too high or too low?], tint: aqua, width: 7em, shape: hexagon, height: 3.5em),
  edge((2, 0), (1, 0), "->"),
)


