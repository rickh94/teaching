#import "@preview/showybox:2.0.4": showybox
#set page("us-letter", margin: 0.75in)
#set text(font: "PT Sans", size: 16pt)

#show heading.where(level: 1): set text(fill: rgb("#960142"), size: 32pt)
#show heading.where(level: 1): set align(center)
#show heading.where(level: 2): set align(center)
#show heading.where(level: 2): set text(size: 16pt, fill: luma(80))

#underline(
  offset: 8pt,
  stroke: 2pt,
  [= Practicing a Piece],
)

== Effective Practicing

#v(18pt)

#showybox(
  frame: (
    border-color: purple.darken(40%),
    title-color: purple.lighten(40%),
    body-color: purple.lighten(95%),
    thickness: 2pt,
  ),
  title-style: (
    color: black,
    weight: "regular",
    align: left,
    size: 20pt,
    boxed-style: (
      anchor: (
        y: horizon,
      ),
      radius: 25%,
    ),
  ),
  title: [
    #set text(size: 18pt, weight: 700)
    Prepare
  ],
  [
    #grid(
      columns: (6fr, 1fr),
      gutter: 10pt,
      pad(bottom: 3pt)[ Think about what the piece should sound like, remember what you've been practicing ],
      pad(top: -16pt, right: -5pt, left: 20pt, image("../resources/mdi--think-outline.svg", height: 55pt)),
    )
  ],
)

#v(15pt)

#showybox(
  frame: (
    border-color: red.darken(40%),
    title-color: red.lighten(40%),
    body-color: red.lighten(95%),
    thickness: 2pt,
  ),
  title-style: (
    color: black,
    weight: "regular",
    align: left,
    size: 20pt,
    boxed-style: (
      anchor: (
        y: horizon,
      ),
      radius: 25%,
    ),
  ),
  title: [
    #set text(size: 18pt, weight: 700)
    Hardest Spots
  ],
  [
    #grid(
      columns: (6fr, 1fr),
      gutter: 10pt,
      pad(bottom: 3pt)[Practice your most challenging spots first when you're fresh so you don't neglect them],
      pad(top: -16pt, right: -5pt, left: 16pt, image("../resources/mdi--puzzle-outline.svg", height: 55pt)),
    )
  ],
)

#v(15pt)

#showybox(
  frame: (
    border-color: green.darken(40%),
    title-color: green.lighten(40%),
    body-color: green.lighten(95%),
    thickness: 2pt,
  ),
  title-style: (
    color: black,
    weight: "regular",
    align: left,
    size: 20pt,
    boxed-style: (
      anchor: (
        y: horizon,
      ),
      radius: 25%,
    ),
  ),
  title: [
    #set text(size: 18pt, weight: 700)
    Easier Spots
  ],
  [
    #grid(
      columns: (6fr, 1fr),
      gutter: 10pt,
      pad(bottom: 3pt)[Next practice spots that are easier or have progressed further],
      pad(top: -16pt, right: -5pt, left: 16pt, image("../resources/ri--puzzle-line.svg", height: 55pt)),
    )
  ],
)

#v(15pt)

#showybox(
  frame: (
    border-color: blue.darken(40%),
    title-color: blue.lighten(40%),
    body-color: blue.lighten(95%),
    thickness: 2pt,
  ),
  title-style: (
    color: black,
    weight: "regular",
    align: left,
    size: 20pt,
    boxed-style: (
      anchor: (
        y: horizon,
      ),
      radius: 25%,
    ),
  ),
  title: [
    #set text(size: 18pt, weight: 700)
  Connect (optional)
  ],
  [
    #grid(
      columns: (6fr, 1fr),
      gutter: 10pt,
      pad(bottom: 3pt)[If you have spots you feel confident in, connect them into larger sections],
      pad(left: 18pt, top: -16pt, right: -10pt, image("../resources/streamline--module-puzzle-3.svg", height: 50pt)),
    )
  ],
)

#v(15pt)

#showybox(
  frame: (
    border-color: orange.darken(40%),
    title-color: orange.lighten(40%),
    body-color: orange.lighten(95%),
    thickness: 2pt,
  ),
  title-style: (
    color: black,
    weight: "regular",
    align: left,
    boxed-style: (
      anchor: (
        y: horizon,
      ),
      radius: 25%,
    ),
  ),
  title: [
    #set text(size: 18pt, weight: 700)
  Think and Plan
  ],
  [
    #grid(
      columns: (6fr, 1fr),
      gutter: 10pt,
      pad(bottom: 3pt)[Think about (or write down!) your successes and challenges to plan for tomorrow],
      pad(left: 26pt, top: -14pt, right: -12pt,  image("../resources/streamline--hand-held-tablet-writing.svg", height: 45pt)),
    )
  ],
)
