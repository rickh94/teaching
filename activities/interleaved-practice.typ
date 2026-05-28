#import "../templates/effprac-header.typ": header
#set page("us-letter", margin: (top: 0.75in, left: 1in, right: 1in, bottom: 0.5in))
#set text(font: "PT Sans", size: 18pt)

#header([Interleaved Practice])

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
    )
  ]
]

== Prepare
- Pick spots that you mess up rarely
- Write them next to the numbers

== Practice
- Set a timer for five (5) minutes
- Practice something else
- When the timer goes off, stop what you're doing and practice these spots
- Take your time
- Mark a repetition if you play it well *on the first try*

