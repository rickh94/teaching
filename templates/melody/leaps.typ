#import "@preview/showybox:2.0.4": showybox
#import "@preview/scorify:0.3.0": melody

#let ins_melody(ins, in_notes, a_notes, ..args) = [
  #if ins == [Violin] [
    #melody(clef: "treble", key: "A", system-spacing: 0mm, music: in_notes, ..args)

  ] else if ins == [Viola] [

    #melody(clef: "alto", key: "D", system-spacing: 0mm, music: a_notes, ..args)
  ]
]

#let leaps(instrument) = [
  #set page("us-letter", margin: 0.5in)
  #set text(font: "Young Serif", size: 16pt)

  #show heading.where(level: 1): set text(weight: 700, size: 32pt)
  #show heading.where(level: 1): set align(center)
  #show heading.where(level: 2): set text(weight: 500, size: 18pt, fill: luma(100))
  #show heading.where(level: 2): set align(center)


  = Pitch: Leaps
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
        title: [About Leaps],
        pad(bottom: 4pt)[
          + Any distance bigger than a skip
          + Used less than steps and skips
          + Sound jumpy and disconnected
        ],
      )
    ]
  ]

  #v(10pt)

  #columns(2)[
    === Leaps going up
    #ins_melody(instrument, "a4 f' | b e'", "d4 b | e a", staff-size: 8pt)

    #colbreak()
    === Leaps going down
    #ins_melody(instrument, "b4 f | g a,", "e4 b, | c e,", staff-size: 8pt)
  ]



  #align(center)[
    #set text(size: 18pt)
    === Common Types of Leaps
  ]
  #columns(1, gutter: 10pt)[
    #showybox(
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Octave (8ve)],
    )[
      #columns(2, gutter: 10pt)[

        - A leap of eight (8) notes is an octave.
        - Both notes will have the same letter name
        #colbreak()

        #ins_melody(instrument, "a a' b b' e e'", "d d' e e' f, f", staff-size: 6pt)
      ]
    ]
    #showybox(
      spacing: 10pt,
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Fifth (5th)],
      [
        - Leaping five (5) notes.
        - On the #instrument, this will be the same finger on the previous/next string
        #ins_melody(
          time: "C",
          instrument,
          "a a e' e' | f' f' e'2 | d'4 d' c' c' | b b a2",
          "d d a a | b b a2 | g4 g f f | e e d2",
          staff-size: 6pt,
        )

        Twinkle, Twinkle Little star begins with a fifth going up, then goes back down with a scale

      ],
    )

  ]
]
