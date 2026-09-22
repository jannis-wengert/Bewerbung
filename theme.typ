#let accent = rgb("#1F3F5F")
#let accent-strong = rgb("#18324B")
#let accent-soft = rgb("#ECF3F9")
#let muted = rgb("#596673")
#let light = rgb("#D8E2EB")
#let text-dark = rgb("#1E2430")

#let setup() = {
  set page(
    paper: "a4",
    margin: (
      top: 14mm,
      bottom: 14mm,
      left: 17mm,
      right: 17mm,
    ),
  )

  set text(
    font: "Arial",
    size: 11pt,
    fill: text-dark,
  )

  set par(
    leading: 0.55em,
    spacing: 0.55em,
  )

  set list(marker: [•])
}


// ------------------------------------------------------------
// ABSCHNITTSÜBERSCHRIFT
// ------------------------------------------------------------

#let section(title) = {

  v(0.55em)

  grid(
    columns: (auto, 1fr),
    column-gutter: 3mm,
    align: horizon,

    [
      #text(
        size: 14pt,
        weight: "bold",
        fill: accent,
        upper(title),
      )
    ],

    [
      #line(
        length: 100%,
        stroke: 0.8pt + light,
      )
    ]
  )

  v(0.28em)
}


// ------------------------------------------------------------
// BERUFS-/STUDIUMSSTATION
// ------------------------------------------------------------

#let entry(
  date,
  title,
  subtitle: none,
  body: none,
) = {

  grid(
    columns: (30mm, 1fr),
    column-gutter: 5.5mm,
    align: (left, left),

    [
      #text(
        size: 11pt,
        fill: muted,
        weight: "semibold",
        date,
      )
    ],

    [
      #text(
        weight: "bold",
        fill: accent-strong,
        title,
      )

      #if subtitle != none [

        #v(0.05em)

        #text(
          size: 11pt,
          fill: muted,
          subtitle,
        )
      ]

      #if body != none [

        #v(0.15em)

        #body
      ]
    ],
  )

  v(0.35em)
}


// ------------------------------------------------------------
// STICHPUNKTE
// ------------------------------------------------------------

#let bullet-list(items) = {

  list(
    tight: true,
    marker: [–],
    indent: 1.15em,
    body-indent: 0.45em,
    ..items.map(x => [#x]),
  )
}


// ------------------------------------------------------------
// KONTAKTZEILE
// ------------------------------------------------------------

#let contact-line(items) = {

  set text(
    size: 11pt,
    fill: muted,
  )

  items
    .filter(x => x != "")
    .join([
      #h(0.8em)
      •
      #h(0.8em)
    ])
}


// ------------------------------------------------------------
// KENNTNISZEILE
// ------------------------------------------------------------

#let skill-row(label, value) = {

  grid(
    columns: (31mm, 1fr),
    column-gutter: 4mm,

    [
      #text(
        weight: "bold",
        fill: accent-strong,
        label,
      )
    ],

    [
      #value
    ],
  )

  v(0.25em)
}


// ------------------------------------------------------------
// OPTIONAL: KLEINE INFOBOX
// ------------------------------------------------------------

#let info-box(body) = {

  block(
    width: 100%,
    fill: accent-soft,
    inset: (
      x: 3.5mm,
      y: 3mm,
    ),
    radius: 3pt,

    body,
  )
}