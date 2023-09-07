#import "typst-slides/slides.typ": *
#import "typst-slides/themes/bristol.typ": *

#let unipd-red = rgb(178, 14, 16)

#let new-section = name => {
  // Create a title slide for the section
  pagebreak()

  block(
    width: 100%, height: 100%, inset: 2em, breakable: false, outset: 0em,
    text(
      size: 1.5em,
      {
        v(1fr)
        align(center, block(inset: (bottom: .5em), stroke: (bottom: 3pt + unipd-red), text(weight: "bold", name)))
        v(1fr)
      }
    )
  )

  // Make the section name more visible and distinct from the title
  new-section[
    #set text(size: 20pt, weight: "bold")
    #v(.5em)
    #name
  ]
}

// Custom wake up
#let wake-up = content => {
  set align(center)
  set text(weight: "bold")
  slide(theme-variant: "wake up")[#content]
}

#let tex = text(
  font: "New Computer Modern",
  upper[t#h(-.13em)#sub(size: 1em, baseline: .23em, "e")#h(-.12em)x]
)
#let latex = text(
  font: "New Computer Modern",
  upper[l#h(-.35em)#super(baseline: -.25em, size: 0.74em, "a")#h(-.15em)#tex]
)
