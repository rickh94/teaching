#let fingerboard(instrument) = [
  #set page("us-letter")
  #set text(font: "PT Serif", weight: "bold")

  #let finger(num) = [
    #circle(fill: white, stroke: (thickness: 1pt, paint: luma(110)), radius: 16pt)[
      #set text(size: 24pt)
      #place(center + horizon)[ #num ]
    ]
  ]

  #let deviation = 0.35in

  #place(top + center, dx: -3 * deviation)[
    #block[
      #set text(weight: 700, size: 28pt)
      #if instrument == [Violin] [
        G
      ] else if instrument == [Viola] [
        C
      ]
    ]
    #line(angle: 92deg, length: 7.5in, stroke: 3pt + black)
    #place(center + top, dy: 80pt, dx: -3pt, finger(1))
    #place(center + top, dy: 180pt, dx: -5pt, finger(2))
    #place(center + top, dy: 280pt, dx: -10pt, finger(3))
    #place(center + top, dy: 380pt, dx: -14pt, finger(4))
  ]

  #place(top + center, dx: -deviation)[
    #block[
      #set text(weight: 700, size: 28pt)

      #if instrument == [Violin] [
        D
      ] else if instrument == [Viola] [
        G
      ]
    ]
    #line(angle: 91deg, length: 7.5in, stroke: 2pt + black)
    #place(center + top, dy: 80pt, dx: -1pt, finger(1))
    #place(center + top, dy: 180pt, dx: -3pt, finger(2))
    #place(center + top, dy: 280pt, dx: -5pt, finger(3))
    #place(center + top, dy: 380pt, dx: -7pt, finger(4))
  ]

  #place(top + center, dx: +deviation)[
    #block[
      #set text(weight: 700, size: 28pt)
      #pad(left: -6pt)[
        #if instrument == [Violin] [
          A
        ] else if instrument == [Viola] [
          D
        ]
      ]
    ]
    #line(angle: 89deg, length: 7.5in, stroke: 2pt + black)
    #place(center + top, dy: 80pt, dx: -4pt, finger(1))
    #place(center + top, dy: 180pt, dx: -2pt, finger(2))
    #place(center + top, dy: 280pt, finger(3))
    #place(center + top, dy: 380pt, dx: 1pt, finger(4))
  ]

  #place(top + center, dx: 3 * deviation)[
    #block[
      #set text(weight: 700, size: 28pt)
      #pad(left: -18pt)[
        #if instrument == [Violin] [
          E
        ] else if instrument == [Viola] [
          A
        ]
      ]
    ]
    #line(angle: 88deg, length: 7.5in, stroke: 1pt + black)
    #place(center + top, dy: 80pt, dx: -7pt, finger(1))
    #place(center + top, dy: 180pt, dx: -3pt, finger(2))
    #place(center + top, dy: 280pt, finger(3))
    #place(center + top, dy: 380pt, dx: 3pt, finger(4))
  ]
]
