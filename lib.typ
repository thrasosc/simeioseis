#let notes(
  title: "[Title]",
  author: "[Author]",
  doc,
) = {
  // Document setup
  set document(title: title, author: author)
  set page(paper: "a4")
  set par(justify: true)
  set heading(numbering: "1.1")
  set text(size: 11pt)

  // Title page
  align(center)[
    #block(text(weight: 700, 1.75em, title))
  ]
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    align(center, strong(author)),
  )
  outline()
  pagebreak()

  // Page numbering
  counter(page).update(1)
  set page(numbering: "1")

  // Header
  set page(header: [
    _ #title _
    #h(1fr)
    #author
  ])

  doc
}