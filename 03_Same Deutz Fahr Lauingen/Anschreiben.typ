
#import "../theme.typ": *
// ===== Daten (hier anpassen) =====
#let months-de = (
  "Januar", "Februar", "März", "April", "Mai", "Juni",
  "Juli", "August", "September", "Oktober", "November", "Dezember",
)
#let today = datetime.today()
#let today-de = str(today.day()) + ". " + months-de.at(today.month() - 1) + " " + str(today.year())

#let person = (
  name: "Jannis Felix Wengert",
  headline: "Mechatronikstudent · Hochschule Aalen",
  location: "Am Alten Bahnweg 20",
  city: "89561 Dischingen",
  phone: "01590 6372194",
  email: "Jannis.Wengert@gmx.de",
  linkedin: "LinkedIn / jannis-wengert",
)

#let application = (
  company: "Unternehmen",
  contact: "Ansprechperson",
  street: "Straße Hausnummer",
  city: "PLZ Ort",
  subject: "Initiativbewerbung um eine Bachelorarbeit im Bereich Mechatronik",
  date: today-de,
)
// ===== Ende Daten =====

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

im Rahmen meines Bachelorstudiums Mechatronik an der Hochschule Aalen steht ab März 2027 meine Bachelorarbeit an. Auf der Aalener Industriemesse (AIM) hatte ich die Gelegenheit, mich kurz über die Möglichkeit einer Bachelorarbeit bei SDF zu informieren. Dabei habe ich erfahren, dass eine Bewerbung grundsätzlich möglich ist. Daher möchte ich mich gerne initiativ bei Ihnen bewerben.

#v(0.7em)

Nach meinem Abitur absolvierte ich eine Ausbildung zum Mechatroniker bei der Alfing Kessler Sondermaschinen GmbH. Dort sammelte ich praktische Erfahrungen in Mechanik, Elektrotechnik und Automatisierung sowie bei der Montage und Inbetriebnahme von Sondermaschinen.

#v(0.7em)

Während meines Studiums konnte ich diese Erfahrungen als Werkstudent bei Carl Zeiss SMT GmbH und während meines Praxissemesters bei AGCO Deutschland GmbH (Fendt) weiter ausbauen. Bei Fendt arbeitete ich unter anderem an Prüfstands- und Fahrzeugversuchen sowie an der automatisierten Auswertung von Messdaten.

#v(0.7em)

Aktuell arbeite ich neben meinem Studium bei Vetter Getriebetechnik. Dort unterstütze ich bei der Demontage und Montage von Getrieben sowie bei Arbeiten im Lager und Versand.

#v(0.7em)

Bereits in meiner Jugend unterstützte ich regelmäßig einen Landwirt und lernte dabei den Umgang mit landwirtschaftlichen Fahrzeugen und Anbaugeräten kennen. Mein Interesse an Landtechnik hat mich seitdem begleitet und wurde durch mein Praxissemester bei Fendt nochmals verstärkt. Heute interessiert mich besonders das Zusammenspiel von Mechanik, Elektronik, Automatisierung und Software in modernen Landmaschinen. Daher würde ich meine Bachelorarbeit gerne wieder in diesem Umfeld durchführen.

#v(0.7em)

Über die Möglichkeit eines persönlichen Gesprächs und einen Austausch zu möglichen Themenstellungen freue ich mich sehr.

#v(1.2em)

Mit freundlichen Grüßen

#v(2.2em)

#image("../Bilder/Unterschrift.jpg", width: 26mm)

#v(0.5em)

#text(size: 11pt, weight: "bold")[Jannis Wengert]
