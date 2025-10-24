#let notes(
  doc_title: "[Title]",
  doc_author: "[Author]",
  doc,
) = {
  // Document setup
  set document(title: doc_title, author: doc_author)
  set page(paper: "a4")
  set par(justify: true)
  set heading(numbering: "1.1")
  set text(size: 12pt)

  // Title page
  place(
      top + center,
      float: true,
      scope: "parent",
      clearance: 2em,
      {
        title()
  
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
