#let fingerline(letter) = [
  #block(width: 100%, height: 50pt, above: 5pt, below: 5pt)[
    #place(horizon + left)[#letter]
    #place(horizon + left, dx: 40pt)[ #line(length: 6.3in, stroke: 2pt + black)]
  ]
]
#let keyinfo(instrument) = [
  #import "@preview/scorify:0.3.0": melody, score
  #set page("us-letter", margin: 0.75in)
  #set text(
    font: "PT Sans",
    size: 16pt,
  )

  #show heading.where(level: 1): set align(center)
  #show heading.where(level: 1): set text(size: 36pt)
  #show heading.where(level: 2): set align(center)
  #show heading.where(level: 3): set align(left)
  #show heading.where(level: 2).or(heading.where(level: 3)): set text(size: 14pt)

  = Musical Key Info Sheet

  #[
    #set align(center)
    #block(
      stroke: 1pt + black,
      radius: 25%,
      inset: (x: 20pt, top: 10pt),
      width: 80%,
      above: 50pt,
      below: 45pt,
    )[
      == Basic Info
      #set align(left)
      We are learning the key of #box(height: 18pt)[#line(start: (0%, 110%), end: (2in, 110%))]

      #box(height: 32pt)[It has #box(baseline: 100%, stroke: (top: 1pt + black), width: 1.8em)[
          #set text(size: 12pt)
          #set align(center)
          num
        ]
        sharps (#sym.sharp) / flats (#sym.flat) in the key signature
      ]
    ]
  ]

  === In Practice
  Write the key signature and scale

  #if instrument == "Violin" [
    #melody(
      clef: "treble",
      staff-size: 8pt,
    )
  ] else if instrument == "Viola" [
    #melody(
      clef: "alto",
      staff-size: 8pt,
    )
  ]

  === On the #instrument
  Write the finger patterns

  #block(above: 10pt)[
    #set text(size: 40pt, weight: 700)
    #if instrument == "Violin" [
      #fingerline([E])
    ]
    #fingerline([A])
    #fingerline([D])
    #fingerline([G])
    #if instrument == "Viola" [
      #fingerline([C])
    ]
  ]
]
