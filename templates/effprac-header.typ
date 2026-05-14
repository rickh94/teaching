#let header(title) = [
  #[
    #set align(center)
    #block(stroke: 2pt + black, radius: 25%, inset: (x: 40pt, top: 10pt, bottom: 12pt), width: auto, below: 40pt)[
      #set text(size: 22pt)
      #set align(center)
      = #title
      #set text(fill: luma(130), weight: 600)
      Effective Practicing
    ]
  ]
]
