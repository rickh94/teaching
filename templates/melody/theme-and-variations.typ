#import "@preview/showybox:2.0.4": showybox
#import "@preview/scorify:0.3.0": melody

#let themevar(instrument) = [
  #let ins_melody(ins, in_notes, a_notes, ..args) = [
    #if ins == [Violin] [
      #melody(clef: "treble", system-spacing: 0mm, music: in_notes, key: "A", ..args)

    ] else if ins == [Viola] [

      #melody(clef: "alto", system-spacing: 0mm, music: a_notes, key: "D", ..args)
    ]
  ]

  // #let pentatonic(instrument) = [
  #set page("us-letter", margin: 0.5in)
  #set text(font: "Young Serif", size: 16pt)

  #show heading.where(level: 1): set text(weight: 700, size: 32pt)
  #show heading.where(level: 1): set align(center)
  #show heading.where(level: 2): set text(weight: 500, size: 18pt, fill: luma(100))
  #show heading.where(level: 2): set align(center)


  = Theme and Variations
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
        title: [Musical Form],
        pad(bottom: 4pt)[
          + Starts by stating a main musical idea or "theme"
          + Make changes to the theme to create variations
        ],
      )
    ]
  ]

  #v(10pt)


  #align(center)[
    #set text(size: 18pt)
    === Examples
  ]
  #columns(2, gutter: 10pt)[
    #showybox(
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Varying Rhythm],
    )[
      The Suzuki Twinkle Variations

      #ins_melody(instrument, "a4 a e' e' | f' f' e'2", "d4 d a a | b b a2 ||")
      #ins_melody(instrument, "a16 a a a a8 a  e'16 e' e' e' e'8 e'", "d16 d d d d8 d  a16 a a a a8 a")

      Come up with a new rhythm to make a new twinkle variation


    ]
    #colbreak()
    #showybox(
      spacing: 10pt,
      title-style: (
        boxed-style: (
          anchor: (y: horizon, x: left),
        ),
      ),
      title: [Varying pitches],
      [
      #set block(spacing: 0.2em)
        Filling in
        #ins_melody(instrument, "a4 c' e' c' | a8 b  c' d'  e' d'  c' b", "d4 f a f | d8 e  f g  a g  f e")
        #v(0.3em)
        pedal note
        #ins_melody(instrument, "a4 c' e' c' | a8 e  c' e  e' e  c' e", "d4 f a f | d8 a,  f a,  a a,  f a,")
        #v(0.3em)
        neighbors
        #ins_melody(instrument, "a4 c' e' c' | a8 g  c' b  e' f'  c' d'", "d4 f a f | d8 c  f e  a b  f g")
      ],
    )


  ]
  #showybox(
    spacing: 10pt,
    title-style: (
      boxed-style: (
        anchor: (y: horizon, x: left),
      ),
    ),
    title: [Try it],
    [
    Write your own variations on this theme.

    #ins_melody(instrument, "a4 b c' b | e2 a | b4 a c' b | a1", "d4 e f e | a,2 d | e4 d f e | d1", time: "4/4")
    ],
  )
]

