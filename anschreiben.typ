
#import "theme.typ": *
#import "data.typ": person, application

#setup()
#set page(margin: (top: 18mm, bottom: 18mm, left: 22mm, right: 22mm))
#set par(leading: 0.66em, spacing: 0.78em)

#block(width: 100%)[
  #grid(
    columns: (1fr, auto),
    column-gutter: 10mm,
    align: (left, horizon),
    [
      #text(size: 24pt, weight: "bold", fill: accent, person.name)

      #v(0.12em)

      #text(size: 11pt, fill: accent-strong, weight: "semibold", person.headline)

      #v(0.9em)

      #grid(
        columns: (1fr, 1fr),
        column-gutter: 8mm,
        row-gutter: 1.5mm,
        align: (left, left),
        [
          #text(size: 11pt, fill: muted)[#person.location]
        ],
        [
          #text(size: 11pt, fill: muted)[#person.phone]
        ],
        [
          #text(size: 11pt, fill: muted)[#person.city]
        ],
        [],
        [
          #text(size: 11pt, fill: muted)[Jannis.Wengert\@gmx.de]
        ],
        [
          #text(size: 11pt, fill: muted)[linkedin.com/in/jannis-wengert]
        ],
      )
    ],
    [
      #text(size: 11pt, fill: muted, weight: "semibold", application.date)
    ],
  )
]

#v(8mm)

#grid(
  columns: (1fr, auto),
  [
    #application.company \
    #application.contact \
    #application.street \
    #application.city
  ],
  []
)

#v(8mm)

#text(size: 11pt, weight: "bold", fill: accent, application.subject)

#v(4mm)

Sehr geehrte Damen und Herren,

#v(0.5em)

im Rahmen meines Bachelorstudiums Mechatronik an der Hochschule Aalen suche ich eine praxisnahe Aufgabenstellung für meine Bachelorarbeit. Meine bisherigen Erfahrungen aus Ausbildung, Studium und beruflicher Praxis möchte ich dabei gezielt in ein konkretes technisches Projekt einbringen.

#v(0.7em)

Vor meinem Studium absolvierte ich eine Ausbildung zum Mechatroniker bei der Alfing Kessler Sondermaschinen GmbH. Während meines Studiums konnte ich meine praktischen Kenntnisse durch Tätigkeiten als Werkstudent bei Carl Zeiss SMT GmbH und ein Praxissemester bei AGCO Deutschland GmbH (Fendt) erweitern. Dort sammelte ich unter anderem Erfahrungen in den Bereichen Prüfstandstechnik, Messdatenauswertung, Programmierung und technische Entwicklung.

#v(0.7em)

Aktuell arbeite ich neben meinem Studium bei Vetter Getriebetechnik. Dort bin ich sowohl bei der Demontage und Montage von Getrieben als auch in der Lagerlogistik tätig. Zu meinen Aufgaben gehören die Zuordnung von Bauteilen anhand technischer Zeichnungen und Teilenummern, die Bestandsverwaltung sowie Kommissionierung, Verpackung und Versand.

#v(0.7em)

Für meine Bachelorarbeit suche ich eine technische Aufgabenstellung aus den Bereichen Konstruktion, Elektrotechnik, Automatisierung, Programmierung oder Prüfstandstechnik. Besonders interessieren mich praxisnahe Themen, bei denen technische Lösungen entwickelt, untersucht oder optimiert werden.

#v(0.7em)

Gerne möchte ich meine Bachelorarbeit in Zusammenarbeit mit Ihrem Unternehmen durchführen und dabei meine bisherigen Erfahrungen sowie meine fachlichen Kenntnisse in ein konkretes Projekt einbringen. Über die Möglichkeit eines persönlichen Gesprächs und einen Austausch zu möglichen Themenstellungen freue ich mich sehr.

#v(1.2em)

Mit freundlichen Grüßen

#v(2.2em)

#image("Unterschrift.jpg", width: 26mm)

#v(0.5em)

#text(size: 11pt, weight: "bold")[Jannis Wengert]
