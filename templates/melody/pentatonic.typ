#import "@preview/showybox:2.0.4": showybox
#import "@preview/scorify:0.3.0": melody

#let pentatonic(instrument) = [
#let ins_melody(ins, in_notes, a_notes, ..args) = [
  #if ins == [Violin] [
    #melody(clef: "treble", system-spacing: 0mm, music: in_notes, ..args)

  ] else if ins == [Viola] [

    #melody(clef: "alto", system-spacing: 0mm, music: a_notes, ..args)
  ]
]

// #let pentatonic(instrument) = [
#set page("us-letter", margin: 0.5in)
#set text(font: "Young Serif", size: 16pt)

#show heading.where(level: 1): set text(weight: 700, size: 32pt)
#show heading.where(level: 1): set align(center)
#show heading.where(level: 2): set text(weight: 500, size: 18pt, fill: luma(100))
#show heading.where(level: 2): set align(center)


= Pitch: Pentatonic Scale
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
      title: [About the Pentatonic Scale],
      pad(bottom: 4pt)[
        + Two steps, then a skip, then a step
        + Easy to write melody that sounds good
        + Common in folk music around the world
      ],
    )
  ]
]

#v(10pt)

#pad(x: 20%)[
  #set text(size: 20pt)

  === G major Pentatonic
  #ins_melody(instrument, "g a b d' e' g'", "g, a, b, d e g")
]



#align(center)[
  #set text(size: 18pt)
  === Writing music in Pentatonic
]
#columns(2, gutter: 10pt)[
  #showybox(
    title-style: (
      boxed-style: (
        anchor: (y: horizon, x: left),
      ),
    ),
    title: [Limited Notes],
  )[
    - You can only pick from five possible notes
    - Use the notes in any octave
    - Has different keys
    - very simple for getting started
  ]
  #colbreak()
  #showybox(
    spacing: 10pt,
    title-style: (
      boxed-style: (
        anchor: (y: horizon, x: left),
      ),
    ),
    title: [Examples of Keys],
    [
    ==== C major Pentatonic
    #ins_melody(instrument, "c d e g a c'", "c d e g a c'")
    ==== A major Pentatonic
    #ins_melody(instrument, "a b c#' e' f#' a'", "a, b, c# e f# a")
    ==== D major Pentatonic
    #ins_melody(instrument, "d e f# a b d'", "d e f# a b d'")
    ],
  )

]
]
