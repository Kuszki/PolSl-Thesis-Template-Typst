#import "libs.typ": *

#let setup(body,

  type: "Projekt inżynierski",
  place: "Gliwice",
  year: "2026",

  field: "Kierunek studiów",
  spec: "Specjalność",
  
  promoter: "Promotor pracy",
  institute: "Nazwa jednostki",
  department: "Nazwa wydziału",
  
  bibfile: "dodatki/bibliografia.bib",
  bibstyle: "ieee",

  font-sans: "Latin Modern Sans",
  font-roman: "Latin Modern Roman",
  font-mono: "Latin Modern Mono",
  font-math: "Latin Modern Math",
  font-size: 12pt,
  
  authors: (
    (
      name: "Gal Anonim",
      uuid: 123456,
    ),
  ),

  topic-pl: "Tytuł pracy w języku polskim",
  topic-en: "Tytuł pracy w języku angielskim",
  
  abstract-pl: "Treść streszczenia w języku polskim.",
  abstract-en: "Treść streszczenia w języku angielskim.",
  
  keywords-pl: ("słowo kluczowe 1", "słowo kluczowe 2"),
  keywords-en: ("keyword 1", "keyword 2"),
  
) = {

  let authlist = authors.map(a => a.name).join(", ")
  
  let font-huge = (20/12)*font-size;
  let font-large = (17/12)*font-size
  
  show heading.where(level: 1): set text(size: 25pt, weight: "bold")
  show heading.where(level: 1): set block(above: 96pt, below: 64pt)
  show heading.where(level: 1): it => pagebreak(weak: true) + v(96pt) + it 

  show heading.where(level: 2): set text(size: 14pt, weight: "bold")
  show heading.where(level: 2): set block(above: 32pt, below: 24pt)

  show heading.where(level: 3): set text(size: 12pt, weight: "bold")
  show heading.where(level: 3): set block(above: 24pt, below: 18pt)

  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: image): set figure.caption(position: bottom)

  show math.equation: set text(font: font-math) 
  show raw: set text(font: font-mono)
  
  show figure.caption: set align(left)
  show figure.caption: it => block(width: 100%)[
    #strong[#it.supplement~#it.counter.display(it.numbering)#it.separator]~#emph[#it.body]
  ]

  show: equate.with(breakable: auto, sub-numbering: false)
  show: codly-init.with()

  set math.equation(numbering: "(1)")
  
  set document(
    title: type,
    author: authlist,
    description: topic-pl,
    keywords: keywords-pl,
  )

  set text(
    font: font-roman,
    size: font-size,
    lang: "pl",
    hyphenate: false,
  )
  
  set page(
    paper: "a4",
    margin: 2.5cm,
  )

  set par(
    justify: true,
    spacing: 24pt,
    leading: 1em,
    first-line-indent: 32pt,
    
  )

  set heading(
    numbering: "1.",
  )

  set figure(
    numbering: "1",
    gap: font-size,
  )

  set table(
    inset: 6pt,
    stroke: 0.75pt,
  )

  set bibliography(
    style: bibstyle,
    full: false,
  )

  set ref(
    supplement: none,
  )

  codly(
    enabled: true,
    zebra-fill: none, 
    stroke: none,
    display-name: false,
    smart-indent: true,
  )

  {
    set par(first-line-indent: 0pt)
    set page(numbering: none)
    
    page({
      set text(font: font-sans)
      set align(top + center)
      set par(spacing: font-size)
      
      image("obrazki/polsl_logo.png", width: 5.25cm)
      text(weight: "bold", size: font-huge, upper[#type])
      v(20pt)
      text(weight: "bold", size: font-large, [#topic-pl])
      v(10pt)
      for a in authors {
        text(weight: "bold", size: font-large, [#a.name])
        v(1pt)
        text(weight: "bold", size: font-size, [Numer albumu: #a.uuid])
        v(10pt)
      }
      v(10pt)
      table(stroke: none, columns: 2, align: (right, left),
        [#text(weight: "bold", size: font-large, "Kierunek:")], 
        [#text(size: font-large, [#field])],
        [#text(weight: "bold", size: font-large, "Specjalizacja:")], 
        [#text(size: font-large, [#spec])]
      )
      v(20pt)
      text(weight: "bold", size: font-large, upper("Prowadzący pracę"))
      v(1pt)
      text(weight: "bold", size: font-large, [#promoter])
      v(1pt)
      text(weight: "bold", size: font-large, upper[#institute])
      v(1pt)
      text(weight: "bold", size: font-large, upper[#department])
      v(1pt)
      set align(bottom + center)
      text(weight: "bold", size: font-large, upper[#place, #year])
    })
    
    page({
      text(lang: "pl", {
        par[*Tytuł pracy:* #topic-pl]
        par[*Streszczenie:* #abstract-pl]
        par[*Słowa kluczowe:* #keywords-pl.join(", ")]
      })
      v(15pt)
      text(lang: "en", {
        par[*Thesis title:* #topic-en]
        par[*Summary:* #abstract-en]
        par[*Key words:* #keywords-en.join(", ")]
      })
    })

    outline()
  }
  
  {
    pagebreak(weak: false)
    set page(numbering: "1")
    counter(page).update(1)
    
    [       #body        ]

    set par(spacing: font-large)
    bibliography(bibfile)
  }

}
