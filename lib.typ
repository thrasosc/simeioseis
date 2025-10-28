#import "@preview/frame-it:1.2.0": *

#let (example, question, variant, syntax) = frames(
  question: ("Question",),
  // For each frame kind, you have to provide its supplement title to be displayed
  variant: ("Variant",),
  // You can provide a color or leave it out and it will be generated
  example: ("Example",),
  // You can add as many as you want
  syntax: ("Syntax",),
)

#let notes(
  doc_title: "[Title]",
  doc_author: "[Author]",
  doc,
) = {
  // Packages
  show: frame-style(styles.boxy)
  
  // Document setup
  set document(title: doc_title, author: doc_author)
  set page(paper: "a4")
  set par(justify: true)
  set heading(numbering: "1.1")
  set text(size: 12pt)
  show quote: set align(center)
  
  // Title page
  place(
      top + center,
      float: true,
      scope: "parent",
      clearance: 2em,
      {
        // title()

        doc_author
      }
    )
  outline()
  pagebreak()

  // Page numbering
  counter(page).update(1)
  set page(numbering: "1")

  // Header
  set page(header: [
    _ #doc_title _
    #h(1fr)
    #doc_author
  ])

  doc
}
