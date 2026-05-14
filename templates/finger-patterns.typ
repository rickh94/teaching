#let fpatterns(instrument) = [
#import "@preview/scorify:0.3.0": melody
#set page("us-letter", margin: 0.75in)
#set text(font: "Libre Baskerville")

#let dot = 7pt
#let wstep = 46pt
#let hstep = 23pt

#show heading.where(level: 1): set text(size: 32pt)
#show heading.where(level: 1): set align(center)
= #instrument Finger Patterns

#show heading.where(level: 2): set text(size: 18pt, weight: 500)
#v(60pt)
#columns(2, gutter: 40pt)[
  == 1-2 Pattern
  #if instrument == [Violin] [
    #melody(clef: "treble", staff-size: 7pt, key: "C", music: "b4 c' d' e'")
  ] else if instrument == [Viola] [
    #melody(clef: "alto", key: "C", staff-size: 7pt, music: "e4 f g a")
  ]

  #block(height: 20pt, width: 100%, above: 0pt, below: 40pt)[
    #set text(size: 16pt)
    // line
    #place(center + horizon, line(length: 100%))
    // dots
    #place(horizon, dx: wstep, circle(radius: dot, fill: black))
    #place(horizon, dx: wstep + dot + hstep, circle(radius: dot, fill: black))
    #place(horizon, dx: wstep + dot + hstep + dot + wstep, circle(radius: 7pt, fill: black))
    #place(horizon, dx: wstep + dot + hstep + dot + wstep + dot + wstep, circle(radius: 7pt, fill: black))
    // numbers
    #place(horizon, dy: -20pt, dx: wstep + dot / 2 - 1pt, [1])
    #place(horizon, dy: -20pt, dx: wstep + dot + hstep + dot / 2 - 1pt, [2])
    #place(horizon, dy: -20pt, dx: wstep + dot + hstep + dot + wstep + dot / 2 - 1pt, [3])
    #place(horizon, dy: -20pt, dx: wstep + dot + hstep + dot + wstep + dot + wstep + dot / 2 - 1pt, [4])
  ]

  == 2-3 Pattern
  #if instrument == [Violin] [
    #melody(clef: "treble", key: "C", staff-size: 7pt, music: "b4 c#' d' e'")
  ] else if instrument == [Viola] [
    #melody(clef: "alto", key: "C", staff-size: 7pt, music: "e4 f# g a")
  ]

  #block(height: 20pt, width: 100%, above: 0pt, below: 40pt)[
    #set text(size: 16pt)
    // line
    #place(center + horizon, line(length: 100%))
    // dots
    #place(horizon, dx: wstep, circle(radius: dot, fill: black))
    #place(horizon, dx: wstep + dot + wstep, circle(radius: dot, fill: black))
    #place(horizon, dx: wstep + dot + wstep + dot + hstep, circle(radius: 7pt, fill: black))
    #place(horizon, dx: wstep + dot + hstep + dot + wstep + dot + wstep, circle(radius: 7pt, fill: black))
    // numbers
    #place(horizon, dy: -20pt, dx: wstep + dot / 2 - 1pt, [1])
    #place(horizon, dy: -20pt, dx: wstep + dot + wstep + dot / 2 - 1pt, [2])
    #place(horizon, dy: -20pt, dx: wstep + dot + wstep + dot + hstep + dot / 2 - 1pt, [3])
    #place(horizon, dy: -20pt, dx: wstep + dot + hstep + dot + wstep + dot + wstep + dot / 2 - 1pt, [4])
  ]


  == 3-4 Pattern
  #if instrument == [Violin] [
    #melody(clef: "treble", key: "C", staff-size: 7pt, music: "b4 c#' d#' e'")
  ] else if instrument == [Viola] [
    #melody(clef: "alto", key: "C", staff-size: 7pt, music: "e4 f# g# a")
  ]

  #block(height: 20pt, width: 100%, above: 0pt, below: 40pt)[
    #set text(size: 16pt)
    // line
    #place(center + horizon, line(length: 100%))
    // dots
    #place(horizon, dx: wstep, circle(radius: dot, fill: black))
    #place(horizon, dx: wstep + dot + wstep, circle(radius: dot, fill: black))
    #place(horizon, dx: wstep + dot + wstep + dot + wstep, circle(radius: 7pt, fill: black))
    #place(horizon, dx: wstep + dot + hstep + dot + wstep + dot + wstep, circle(radius: 7pt, fill: black))
    // numbers
    #place(horizon, dy: -20pt, dx: wstep + dot / 2 - 1pt, [1])
    #place(horizon, dy: -20pt, dx: wstep + dot + wstep + dot / 2 - 1pt, [2])
    #place(horizon, dy: -20pt, dx: wstep + dot + wstep + dot + wstep + dot / 2 - 1pt, [3])
    #place(horizon, dy: -20pt, dx: wstep + dot + hstep + dot + wstep + dot + wstep + dot / 2 - 1pt, [4])
  ]

  #colbreak()

  == Whole Steps Pattern
  #if instrument == [Violin] [
    #melody(clef: "treble", key: "C", staff-size: 7pt, music: "b&4 c' d' e'")
  ] else if instrument == [Viola] [
    #melody(clef: "alto", key: "C", staff-size: 7pt, music: "e4 f# g# a")
  ]

  #block(height: 20pt, width: 100%, above: 0pt, below: 40pt)[
    #set text(size: 16pt)
    // line
    #place(center + horizon, line(length: 100%))
    // dots
    #place(horizon, dx: hstep, circle(radius: dot, fill: black))
    #place(horizon, dx: hstep + dot + wstep, circle(radius: dot, fill: black))
    #place(horizon, dx: hstep + dot + wstep + dot + wstep, circle(radius: 7pt, fill: black))
    #place(horizon, dx: hstep + dot + wstep + dot + wstep + dot + wstep, circle(radius: 7pt, fill: black))
    // numbers
    #place(horizon, dy: -20pt, dx: hstep + dot / 2 - 1pt, [1])
    #place(horizon, dy: -20pt, dx: hstep + dot + wstep + dot / 2 - 1pt, [2])
    #place(horizon, dy: -20pt, dx: hstep + dot + wstep + dot + wstep + dot / 2 - 1pt, [3])
    #place(horizon, dy: -20pt, dx: hstep + dot + wstep + dot + wstep + dot + wstep + dot / 2 - 1pt, [4])
  ]

  == Half Steps Pattern
  #if instrument == [Violin] [
    #melody(clef: "treble", key: "C", staff-size: 7pt, music: "b4 c' d#' e'")
  ] else if instrument == [Viola] [
    #melody(clef: "alto", key: "C", staff-size: 7pt, music: "e4 f g# a")
  ]

  #block(height: 20pt, width: 100%, above: 0pt, below: 40pt)[
    #set text(size: 16pt)
    // line
    #place(center + horizon, line(length: 100%))
    // dots
    #place(horizon, dx: wstep, circle(radius: dot, fill: black))
    #place(horizon, dx: wstep + dot + hstep, circle(radius: dot, fill: black))
    #place(horizon, dx: wstep + dot + wstep + dot + wstep, circle(radius: 7pt, fill: black))
    #place(horizon, dx: wstep + dot + hstep + dot + wstep + dot + wstep, circle(radius: 7pt, fill: black))
    // numbers
    #place(horizon, dy: -20pt, dx: wstep + dot / 2 - 1pt, [1])
    #place(horizon, dy: -20pt, dx: wstep + dot + hstep + dot / 2 - 1pt, [2])
    #place(horizon, dy: -20pt, dx: wstep + dot + wstep + dot + wstep + dot / 2 - 1pt, [3])
    #place(horizon, dy: -20pt, dx: wstep + dot + hstep + dot + wstep + dot + wstep + dot / 2 - 1pt, [4])
  ]
]
]
