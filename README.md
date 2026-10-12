# Bewerbung Typst Vorlage

Eine einfache und saubere Typst-Vorlage für Lebenslauf und Anschreiben mit konsistentem Design.

## Inhalt

- `theme.typ` – gemeinsames Layout und Stil
- `00_Vorlage/` – Vorlage für Lebenslauf und Anschreiben
- `01_…` bis `06_…` – Bewerbungen je Unternehmen
- `Bewerbungsbild.jpg` – optionales Bewerbungsfoto

## Verwendung

1. VS Code mit der Typst-Erweiterung öffnen.
2. In `Anschreiben.typ` und `Lebenslauf.typ` den Block „Daten (hier anpassen)“ am Dateianfang anpassen.
3. Inhalte je nach Bewerbung anpassen.
4. Typst kompilieren, z. B. mit:

```bash
typst compile 00_Vorlage/Lebenslauf.typ
typst compile 00_Vorlage/Anschreiben.typ
```

## Design

- A4-Format
- ruhige, professionelle Typografie
- klar strukturierte Abschnitte
- einheitliches Erscheinungsbild für Lebenslauf und Anschreiben

## Hinweis

Die vorhandenen Inhalte wie Tätigkeitsbeschreibungen bei AGCO/Fendt, Zeiss und Vetter sind bewusst noch allgemein gehalten und sollten bei Bedarf mit den tatsächlichen Aufgaben und Zeugnissen konkretisiert werden.

## Repository

Dieses Projekt ist auf GitHub verfügbar:

https://github.com/jannis-wengert/Bewerbung
