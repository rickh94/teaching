#import "../templates/effprac-header.typ": header
#set page("us-letter", margin: (top: 0.75in, left: 1in, right: 1in, bottom: 0.5in))
#set text(font: "PT Sans", size: 18pt)

#header([Random Practice])

#set table(
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  } else {
  (y: (paint: black, thickness: 0.7pt, dash: "dashed"))
  },
  align: (x, y) => (
    if x > 0 { center } else { right }
  ),
  inset: 6pt,
)

#block(width: 100%)[
  #[
    #table(
      columns: (1.8em, 3fr, 2fr),
      [\#], [Section], [Repetitions],
      [1], [], [],
      [2], [], [],
      [3], [], [],
      [4], [], [],
      [5], [], [],
      [6], [], [],
      [7], [], [],
      [8], [], [],
      [9], [], [],
      [10], [], [],
    )
  ]
]

== Prepare
- Pick some spots that are good but not consistent
- Write them next to the numbers
- Get something to generate random numbers

== Practice
- Get a random number
- Play the spot next to that number
- Play once
- Mark a repetition if it's good
- Remove spots as they become consistent


