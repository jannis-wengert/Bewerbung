# Aufruf: .\pdf-erstellen.ps1 [-Ordner 01] [-Dokument Anschreiben|Lebenslauf|Beide]
param(
    [string]$Ordner = "01",
    [ValidateSet("Anschreiben", "Lebenslauf", "Beide")]
    [string]$Dokument = "Anschreiben"
)

$root = $PSScriptRoot

if (-not (Get-Command typst -ErrorAction SilentlyContinue)) {
    throw "Typst-CLI wurde nicht gefunden (typst muss im PATH liegen)."
}

$dir = Get-ChildItem -LiteralPath $root -Directory |
    Where-Object { $_.Name -like "$Ordner*" } |
    Select-Object -First 1
if (-not $dir) {
    throw "Kein Ordner gefunden, der mit '$Ordner' beginnt."
}

$namen = if ($Dokument -eq "Beide") { @("Anschreiben", "Lebenslauf") } else { @($Dokument) }

foreach ($name in $namen) {
    $quelle = Join-Path $dir.FullName "$name.typ"
    $ziel = Join-Path $dir.FullName "$name.pdf"
    # --root noetig, da die Dateien ../theme.typ und ../Bilder einbinden
    typst compile --root $root $quelle $ziel
    if ($LASTEXITCODE -ne 0) {
        throw "Kompilieren von $name.typ fehlgeschlagen."
    }
    Write-Host "Erstellt: $ziel"
}
