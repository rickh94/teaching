#import "@preview/showybox:2.0.4": showybox
#import "@preview/scorify:0.3.0": melody

#let ins_melody(ins, in_notes, a_notes, ..args) = [
  #if ins == [Violin] [
    #melody(clef: "treble", key: "A", system-spacing: 0mm, music: in_notes, ..args)

  ] else if ins == [Viola] [

    #melody(clef: "alto", key: "D", system-spacing: 0mm, music: a_notes, ..args)
  ]
]

#let steps(instrument) = [
  #set page("us-letter", margin: 0.5in)
  #set text(font: "Young Serif", size: 16pt)

  #show heading.where(level: 1): set text(weight: 700, size: 32pt)
  #show heading.where(level: 1): set align(center)
  #show heading.where(level: 2): set text(weight: 500, size: 18pt, fill: luma(100))
  #show heading.where(level: 2): set align(center)


  = Pitch: Steps
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
        title: [About Steps],
        pad(bottom: 4pt)[
          + Smallest distance between two notes
          + Steps can go *up* or *down*
        ],
      )
    ]
  ]

  #v(10pt)

  #columns(2)[
    === Steps going up
    #ins_melody(instrument, "a4 b | f' g'", "d4 e | b c'", staff-size: 8pt)

    #colbreak()
    === Steps going down
    #ins_melody(instrument, "b4 a | g' f'", "e4 d | c' b", staff-size: 8pt)
  ]



  #align(center)[
    #set text(size: 18pt)
    === Using Steps in Music
  ]
  #columns(2, gutter: 10pt)[
    #showybox(
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Scales],
    )[
      Several steps in the same direction

      #ins_melody(instrument, "a b c' d' e' f'", "d e f g a b c'", staff-size: 6pt)
      #ins_melody(instrument, "d' c' b a g f e", "g f e d c b, a,", staff-size: 6pt)

      Scales are great for smoothly connecting notes that are far apart
    ]
    #colbreak()
    #showybox(
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Neighbors],
      [
        Moving by one step then returning to the first note
        #ins_melody(instrument, "a b a | d' c' d'", "d e d | g f g", staff-size: 6pt)
        *Upper neighbors* are higher than the first note

        *Lower neighbors* are lower than the first note

        Neighbor notes keep things moving and emphasize the first note
      ],
    )

  ]
]
