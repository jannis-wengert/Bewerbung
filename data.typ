
#let today = datetime.today()
#let today-de = today.display("[day].[month repr:long] [year]")

#let person = (
  name: "Jannis Felix Wengert",
  headline: "B.Eng. Mechatronik | Hochschule Aalen",
  location: "89561 Dischingen",
  phone: "01590 6372194",
  email: "Jannis.Wengert@gmx.de",
  linkedin: "linkedin.com/in/jannis-wengert",
)

#let application = (
  company: "Unternehmen",
  contact: "Ansprechperson",
  street: "Straße Hausnummer",
  city: "PLZ Ort",
  subject: "Bewerbung um eine Bachelorarbeit im Bereich Mechatronik",
  date: today-de,
)
