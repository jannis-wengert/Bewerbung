#import "theme.typ": *
#import "data.typ": person, today-de

#setup()

#block(width: 100%)[
  #place(right + top)[
    #box(
      width: 38mm,
      inset: 0pt,
      radius: 4pt,
      [
        #image("Bewerbungsbild.jpg", width: 38mm)
      ],
    )
  ]

  #box(width: 100% - 52mm)[
    #text(size: 24pt, weight: "bold", fill: accent, person.name)
    #v(0.12em)
    #text(size: 11pt, fill: accent-strong, weight: "semibold", "Mechatronikstudent | Hochschule Aalen")
    #v(0.8em)
    #line(length: 100%, stroke: 0.9pt + light)
    #v(0.45em)
    #contact-line((
      person.location,
      person.phone,
      person.email,
      person.linkedin,
    ))
  ]
]

#v(1em)

#section("Studium")

#entry(
  "seit 03/2024",
  "B.Eng. Mechatronik",
  subtitle: "Hochschule Aalen",
)

#entry(
  "09/2023–02/2024",
  "B.Eng. Mechatronik",
  subtitle: "OTH Regensburg",
)

#section("Berufserfahrung")

#entry(
  "seit 09/2025",
  "Industriemechaniker (Teilzeit)",
  subtitle: "Vetter Getriebetechnik",
  body: bullet-list((
    [Kommissionierung, Verpackung und Versand von Getriebeersatzteilen],
    [Demontage, Montage und Funktionsprüfung von Getrieben],
  )),
)

#entry(
  "03/2026–08/2026",
  "Praxissemester",
  subtitle: "AGCO Deutschland GmbH (Fendt)",
  body: bullet-list((
    [Entwicklung einer Testroutine für einen Durchflussteststand mit Python],
    [Fahrzeugtests zur Untersuchung des Rekuperationspotenzials elektrifizierter Traktorprototypen],
  )),
)

#entry(
  "03/2025–02/2026",
  "Werkstudent",
  subtitle: "Carl Zeiss SMT GmbH",
  body: bullet-list((
    [Organisation eines Bauteilsystemlagers],
    [Konzepterstellung für einen Mechanikarbeitsplatz],
    [Durchführung von Prüfmittelkalibrierungen],
  )),
)

#entry(
  "07/2023–09/2023",
  "Mechatroniker – Elektromontage",
  subtitle: "Alfing Montagetechnik GmbH",
  body: bullet-list((
    [Verdrahtung von Sondermaschinen und Schaltschränken],
  )),
)

#entry(
  "09/2020–07/2023",
  "Ausbildung zum Mechatroniker",
  subtitle: "Alfing Kessler Sondermaschinen GmbH",
  body: [
    Berufsschule: Technische Schule Aalen
  ],
)

#section("Technische Kenntnisse")

#skill-row("CAD", [Siemens NX, Autodesk Fusion 360])
#skill-row("Elektrotechnik", [KiCad, Siemens TIA Portal])
#skill-row("Programmierung", [Python, C (Grundlagen)])
#skill-row("Simulation", [MATLAB / Simulink, Stateflow])
#skill-row("Software", [VS Code, Git, Microsoft Office])
#skill-row("Sprachen", [Deutsch - Muttersprache; Englisch - gute Kenntnisse])

#section("Schulbildung")

#entry(
  "09/2012–07/2020",
  "Benedikt Maria Werkmeister Gymnasium Neresheim",
  subtitle: "Abitur 2020",
)

#section("weitere Qualifikationen")

#skill-row("Führerscheine", [B, BE, L, T])
#skill-row("Zertifikate", [
  Ladungssicherung nach VDI 2700; Gabelstaplerschein; PSA gegen Absturz;
  Bedienberechtigung für Hubarbeitsbühnen
])


#section("Engagement & Interessen")

#entry(
  "07/2025–06/2026",
  "Co-Trainer Frauenmannschaft",
  subtitle: "FC Härtsfeld 03",
)

#entry(
  "07/2022–06/2025",
  "Fußballjugendtrainer",
  subtitle: "FC Härtsfeld 03",
)

#skill-row("Interessen", [Fußball, Radsport, 3D-Druck])

#v(0.8em)
#align(right)[
  #text(size: 11pt, fill: muted)[Dischingen, #today-de]
]
