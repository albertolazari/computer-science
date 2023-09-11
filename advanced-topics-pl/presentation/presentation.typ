#import "common.typ": *

#show: slides.with(
  authors:        [Alberto Lazari -- 2089120],
  short-authors:  "Alberto Lazari",
  title:          "The Typst language",
  subtitle:       "Advanced Topics in Programming languages presentation",
  short-title:    [#v(.5em) The Typst language],
  date:           "September 14, 2023",
  theme: bristol-theme(
    color:      unipd-red,
    logo:       "/images/unipd-logo.png",
    // Don't use watermarks, by using a blank image (`none` can't be used)
    watermark:  "/images/blank.png",
    secondlogo: "/images/blank.png",
  )
)

#set text(font: "Arial")

#show raw: itself => {
  set text(font: "Menlo")
  itself
}
// Add background to monospace text
#show raw.where(block: false): box.with(
  fill: luma(220),
  inset: (x: 3pt, y: 0pt),
  outset: (y: 8pt),
  radius: 4pt,
)
#show raw.where(block: true): block.with(
  fill: luma(220),
  inset: 10pt,
  radius: 10pt,
)

#show figure: itself => {
  set text(size: 16pt)
  itself
}

// Properly display case-insensitive matches
#show regex("(?i)\btex\b"): tex
#show regex("(?i)\blatex\b"): latex

#slide(theme-variant: "title slide")

#include("sections/markup-languages.typ")
#include("sections/typst.typ")
#include("sections/markup-mode.typ")
#include("sections/code-mode.typ")
#include("sections/compiler.typ")
#include("sections/improvements.typ")
