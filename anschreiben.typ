
#import "theme.typ": *
#import "data.typ": person, application

#setup()
#set page(margin: (top: 18mm, bottom: 18mm, left: 22mm, right: 22mm))
#set par(leading: 0.68em, spacing: 0.82em)

#block(width: 100%, fill: accent-soft, inset: (x: 10mm, y: 6mm), radius: 6pt)[
  #grid(
    columns: (1fr, auto),
    align: (left, center),
    [
      #text(size: 18pt, weight: "bold", fill: accent, person.name)
      #v(0.12em)
      #contact-line((person.location, person.phone, person.email, person.linkedin))
    ],
    [
      #text(size: 8.8pt, fill: muted, weight: "semibold", application.date)
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

#v(9mm)

#text(size: 11pt, weight: "bold", fill: accent, application.subject)

#v(5mm)

Sehr geehrte Damen und Herren,

auf Ihrer Website habe ich gelesen, dass Sie Bachelor- und Masterarbeiten
auf individuelle Anfrage ermöglichen, sofern geeignete Themen und Projekte
zur Verfügung stehen.

Aktuell studiere ich Mechatronik im Bachelor an der Hochschule Aalen und
bin auf der Suche nach einem geeigneten Thema für meine Bachelorarbeit.
Durch meine Ausbildung zum Mechatroniker sowie meine bisherigen Tätigkeiten
in Industrieunternehmen konnte ich bereits praktische Erfahrungen an der
Schnittstelle von Mechanik, Elektrotechnik und industrieller Technik sammeln.

Besonders interessieren mich praxisnahe Aufgabenstellungen, bei denen ich
meine technischen Kenntnisse einbringen und gleichzeitig ein konkretes
Projekt eigenständig bearbeiten kann. Daher möchte ich gerne anfragen, ob
Sie aktuell oder in nächster Zeit ein geeignetes Thema für eine Bachelorarbeit
im Bereich Mechatronik anbieten.

Meinen Lebenslauf sowie meine aktuelle Notenübersicht habe ich beigefügt.
Über die Möglichkeit eines persönlichen Austauschs freue ich mich sehr.

Mit freundlichen Grüßen

#v(8mm)
#text(weight: "bold")[Jannis Felix Wengert]
