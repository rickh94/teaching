#import "@preview/showybox:2.0.4": showybox
#import "@preview/scorify:0.3.0": melody

#let ins_melody(ins, in_notes, a_notes, ..args) = [
  #if ins == [Violin] [
    #melody(clef: "treble", key: "A", system-spacing: 0mm, music: in_notes, ..args)

  ] else if ins == [Viola] [

    #melody(clef: "alto", key: "D", system-spacing: 0mm, music: a_notes, ..args)
  ]
]

#let intervals(instrument) = [
  #set page("us-letter", margin: 0.5in)
  #set text(font: "Young Serif", size: 16pt)

  #show heading.where(level: 1): set text(weight: 700, size: 32pt)
  #show heading.where(level: 1): set align(center)
  #show heading.where(level: 2): set text(weight: 500, size: 18pt, fill: luma(100))
  #show heading.where(level: 2): set align(center)


  = Pitch: Invervals
  == Writing #instrument Melodies

  #v(10pt)
  #align(center)[
    #block(width: 60%)[
      #showybox(
        frame: (
          title-color: navy,
          border-color: navy,
        ),
        title-style: (
          boxed-style: (
            align: (
              y: horizon,
            ),
            radius: 25%,
          ),
          align: left,
        ),
        body-style: (
          color: navy,
        ),
        title: [About Intervals],
        pad(bottom: 4pt)[
          + The distance between two notes
          + Written as a number
          + includes both notes
        ],
      )
    ]
  ]

  #v(10pt)

  #ins_melody(
    instrument,
    "v{a1; a1text[1st]} <a b>1text[2nd] <a c'>text[3rd] <a d'>text[4th] <a e'>text[5th] <a f'>text[6th] <a g'>text[7th] <a a'>text[8ve]",
    "v{d1; d1text[1st]} <d e>1text[2nd] <d f>text[3rd] <d g>text[4th] <d a>text[5th] <d b>text[6th] <d c'>text[7th] <d d'>text[8ve]",
  )

  #align(center)[
    #set text(size: 18pt)
    === Major, Minor, Perfect
  ]

#columns(2, gutter: 10pt)[
    #showybox(
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Half + Whole Steps],
    )[
        - A *Half Step* is the smallest distance between notes
        - A *Whole Step* is two half steps
    ]


    #showybox(
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Perfect intervals],
    )[
      - Some intervals only have one type, these are "perfect"
      - *4ths, 5ths, and 8ves* are all perfect intervals
      - We use *P* for perfect, so P5 is "perfect fifth"
    ]
    #showybox(
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Major and Minor intervals],
    )[
      - Major intervals are larger than minor by one (1) half step
      - Not all intervals can be major or minor, just *2nds, 3rds, 6ths, and 7ths* 
      - We use capital *M* for major and lower-case *m* for minor
      - So M3 is "major third" and m3 is "minor third"
      - We can change between major and minor intervals using sharps (#sym.sharp) and flats (#sym.flat)
      - M2 is a whole step and m2 is a half step
    ]
    ]
//   #columns(1, gutter: 10pt)[
//     #showybox(
//       title-style: (
//         boxed-style: (
//           anchor: (y: horizon, x: left),
//         ),
//       ),
//       title: [Octave (8ve)],
//     )[
//       #columns(2, gutter: 10pt)[

//         - A leap of eight (8) notes is an octave.
//         - Both notes will have the same letter name
//         #colbreak()

//         #ins_melody(instrument, "a a' b b' e e'", "d d' e e' f, f", staff-size: 6pt)
//       ]
//     ]
//     #showybox(
//       spacing: 10pt,
//       title-style: (
//         boxed-style: (
//           anchor: (y: horizon, x: left),
//         ),
//       ),
//       title: [Fifth (5th)],
//       [
//         - Leaping five (5) notes.
//         - On the #instrument, this will be the same finger on the previous/next string
//         #ins_melody(
//           time: "C",
//           instrument,
//           "a a e' e' | f' f' e'2 | d'4 d' c' c' | b b a2",
//           "d d a a | b b a2 | g4 g f f | e e d2",
//           staff-size: 6pt,
//         )

//         Twinkle, Twinkle Little star begins with a fifth going up, then goes back down with a scale

//       ],
//     )

//   ]
]

#intervals([Violin])
