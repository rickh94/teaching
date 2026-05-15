#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import fletcher.shapes: diamond, ellipse, house, octagon, pill, trapezium, triangle
#set page("us-letter", margin: 0.75in)
#set text(font: "PT Sans", size: 14pt)

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
  [= Correcting Mistakes],
)

== Effective Practicing



#set align(center)
#v(20pt)
#diagram(
  edge-stroke: 2pt,
  blob(
    (1, 0),
    [
      === Stop Playing
      So you know where the mistake is
    ],
    tint: red,
    shape: octagon,
    width: 12em,
  ),
  edge("->"),
  blob(
    (1, 1),
    tint: fuchsia,
    shape: trapezium,
    [
      === Identify the Mistake
      and what to play instead
    ],
    width: 13em,
  ),
  edge("->"),
  blob(
    (1, 2),
    tint: blue,
    shape: pill,
    [
      === Pick a Spot
      around the mistake
    ],
    width: 11.5em,
  ),
  edge("->"),
  blob(
    (1, 3),
    pad(x: 2pt)[
      === Make a Plan
      to prevent the mistake in your practice
    ],
    tint: yellow,
    width: 12.5em,
  ),
  edge("->"),
  blob(
    (1, 4),
    [
      === Practice
      3–5 times correctly
    ],
    tint: purple,
    width: 10em,
    shape: house,
  ),
  edge("->"),
  blob(
    (0, 5),
    [
      === You're Done!
    ],
    tint: green,
    shape: diamond,
    width: 8.5em,
    height: 50pt,
  ),
  edge((1, 4), "-->", (2, 5)),
  blob(
    (2, 5),
    [
      === Doesn't get better],
    tint: luma(120),
    width: 8.5em,
  ),
  edge((2, 5), (2, 4), (2, 3), (2, 2), (1, 2), "-->", kind: "poly"),
)


