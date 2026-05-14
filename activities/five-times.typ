#import "../templates/effprac-header.typ": header
#set page("us-letter")
#set text(font: "PT Sans", size: 18pt)

#let checkbox = [
  #box(width: 1fr, inset: 0pt, height: 60pt, outset: 0pt)[
    #place(center + horizon, rect(width: 55pt, height: 55pt, radius: 20%, stroke: 1pt + black))
  ]
]

#header([Repeat Practice])

#[
#set align(center)
#block(width: 100%, inset: 0pt, spacing: 0pt, height: 60pt)[
  #checkbox
  #checkbox
  #checkbox
  #checkbox
  #checkbox
]
]
#v(20pt)

== Prepare
- Pick a small section that needs work
- Play very slowly
- Get it exactly right


#columns(2, gutter: 8pt)[
  == Practice
  - Play slowly
  - If it's excellent, mark above
  - Stop to think and reset
  - Try to get five
  - Erase everything after a mistake

  #colbreak()

  #block(
    stroke: (paint: luma(80), thickness: 1pt, dash: "dashed"),
    inset: (x: 12pt, top: 12pt, bottom: 15pt),
    radius: 10%,
  )[

    == STOP IF...
    - You have tried for five minutes
    - You are getting frustrated and upset
    - It feels like you are getting worse not better
  ]
]


