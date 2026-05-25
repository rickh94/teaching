#import "@preview/showybox:2.0.4": showybox
#import "@preview/scorify:0.3.0": melody
#let instrument = [Viola]

#let ins_melody(ins, in_notes, a_notes, ..args) = [
  #if ins == [Violin] [
    #melody(clef: "treble", key: "A", system-spacing: 0mm, music: in_notes, ..args)

  ] else if ins == [Viola] [

    #melody(clef: "alto", key: "D", system-spacing: 0mm, music: a_notes, ..args)
  ]
]

#let skips(instrument) = [
  #set page("us-letter", margin: 0.5in)
  #set text(font: "Young Serif", size: 16pt)

  #show heading.where(level: 1): set text(weight: 700, size: 32pt)
  #show heading.where(level: 1): set align(center)
  #show heading.where(level: 2): set text(weight: 500, size: 18pt, fill: luma(100))
  #show heading.where(level: 2): set align(center)


  = Pitch: Skips
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
        title: [About Skips],
        pad(bottom: 4pt)[
          + Skips move by two steps, skipping over a note
          + Skips are also called "Thirds"
        ],
      )
    ]
  ]

  #v(10pt)

  #columns(2)[
    === Skips going up
    #ins_melody(instrument, "a4 c' | f' a'", "d4 e | b c'", staff-size: 8pt)

    #colbreak()
    === Skips going down
    #ins_melody(instrument, "b4 g | g' e'", "e4 d | c' b", staff-size: 8pt)
  ]



  #align(center)[
    #set text(size: 18pt)
    === Using Skips in Music
  ]
  #columns(2, gutter: 10pt)[
    #showybox(
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Up and Down],
    )[
      Skips move up and down more quickly than steps

      #ins_melody(instrument, "a c' e' c' a", "d f a f d", staff-size: 6pt)


    ]

    #showybox(
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Filling in],
    )[
      You can skip a note and then go back to it

      #ins_melody(instrument, "a c' b | g e f", "d f e | c a, b,", staff-size: 6pt)

    ]
    #colbreak()
    #showybox(
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: center),
        ),
      ),
      title: [Broken Thirds],
      [
        If you skip a note, then go back a step, then skip again and repeat

        #ins_melody(instrument, "a c' b d' c' e' d' f'", "d f e g f a g b")

        You can do the same thing going down
        #ins_melody(instrument, "f' d' e' c' d' b c' a", "b g a f g e f d")

      ],
    )

  ]
]
