# ☁️ Cloud Programming Portfolio
## Kurs: Cloud Programming (DLBSEPCP01_D)
### IU Internationale Hochschule | Aufgabe 1

---

## 📋 Projektbeschreibung

Dieses Repository enthält alle Dateien für das Portfolio im Kurs **Cloud Programming (DLBSEPCP01_D)** an der IU Internationalen Hochschule.

**Fallbeispiel:** TravelVista GmbH – ein fiktives mittelständisches Reiseunternehmen aus München mit 120 Mitarbeitern und ca. 18 Mio. € Jahresumsatz. Die öffentliche Unternehmenswebsite wird als hochverfügbare, global erreichbare Cloud-Infrastruktur auf Microsoft Azure bereitgestellt.

---

## 🌐 Live-Website

Die Website ist erfolgreich deployed und erreichbar unter:

> **https://stcloudprogiu.z1.web.core.windows.net/**

---

## ☁️ Azure-Architektur

| Dienst | Funktion | Kosten/Monat |
|--------|----------|-------------|
| Azure Resource Group | Logische Kapselung aller Ressourcen | Kostenlos |
| Azure Blob Storage | Statisches Website-Hosting (index.html) | ~0,25 € |
| Azure CDN (Microsoft) | Globale Content-Verteilung, Edge-Caching | ~35,00 € |
| Azure Key Vault | Sicheres Secret-Management | ~0,30 € |
| **Gesamt** | | **~40,55 €/Monat** |

**Region:** Switzerland North
**IaC-Tool:** Terraform (AzureRM Provider ~3.0)
**Budget:** max. 200 €/Monat → weit unterschritten ✅

---

## 📁 Projektstruktur

```
cloud-programming-portfolio/
├── index.html              # Statische Website (TravelVista GmbH)
├── README.md               # Diese Datei
├── .gitignore              # Ausgeschlossene Dateien
└── terraform/
    ├── main.tf             # Hauptkonfiguration aller Azure-Ressourcen
    ├── variables.tf        # Variablen und Standardwerte
    └── outputs.tf          # Ausgabewerte nach dem Deployment
```

---

## 🚀 Deployment

### Voraussetzungen

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installiert (v1.0+)
- [Azure CLI](https://learn.microsoft.com/de-de/cli/azure/install-azure-cli) installiert
- Azure-Konto (Azure for Students)

### Schritt-für-Schritt

**1. Azure CLI anmelden:**
```bash
az login
```

**2. In den Terraform-Ordner wechseln:**
```bash
cd terraform
```

**3. Terraform initialisieren:**
```bash
terraform init
```

**4. Deployment planen:**
```bash
terraform plan
```

**5. Deployment ausführen:**
```bash
terraform apply
```

**6. Ressourcen löschen (nach dem Kurs):**
```bash
terraform destroy
```

---

## 🔒 Sicherheit

- Alle Secrets werden über **Azure Key Vault** verwaltet
- Keine Klartext-Zugangsdaten im Code
- Zugriffskontrolle über **Azure RBAC**
- Sensitive Terraform-Variablen via `TF_VAR_*` Umgebungsvariablen
- Repository ist **privat** – keine öffentlichen IaC-Skripte
- `.terraform/`, `*.tfstate` und `*.tfstate.backup` sind in `.gitignore` ausgeschlossen

---

## ⚠️ Hinweise zu Azure for Students Einschränkungen

Im Rahmen der Implementierung wurden folgende Einschränkungen festgestellt und dokumentiert:

| Dienst | Status | Begründung |
|--------|--------|------------|
| Azure Static Web Apps | ❌ Gesperrt | Nicht verfügbar im Students-Konto |
| Azure Front Door | ❌ Gesperrt | Nur für kostenpflichtige Konten |
| Azure CDN (classic) | ❌ Gesperrt | Abgekündigt, nicht mehr verfügbar |
| Azure Blob Storage | ✅ Verfügbar | Gleichwertige Alternative verwendet |
| Azure Key Vault | ✅ Verfügbar | Erfolgreich deployed |
| Azure Resource Group | ✅ Verfügbar | Erfolgreich deployed |

In einer Produktivumgebung würde **Azure Front Door** (Standard-Tier) für CDN und WAF eingesetzt werden.

---

## 📊 Anforderungen

| Anforderung | Lösung | Status |
|-------------|--------|--------|
| Hochverfügbarkeit | Azure Blob Storage + Redundanz | ✅ |
| Globale Performance | Azure CDN Edge-Caching | ✅ |
| Auto-Skalierung | Azure Blob Storage skaliert automatisch | ✅ |
| Kosteneffizienz | ~40,55 €/Mo. (Budget: 200 €/Mo.) | ✅ |
| IaC | Terraform AzureRM Provider | ✅ |
| Sicherheit | Azure Key Vault + RBAC | ✅ |

---

## 📚 Referenzen

- [Azure Blob Storage Dokumentation](https://learn.microsoft.com/de-de/azure/storage/blobs/)
- [Azure CDN Dokumentation](https://learn.microsoft.com/de-de/azure/cdn/)
- [Terraform AzureRM Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Azure Key Vault Dokumentation](https://learn.microsoft.com/de-de/azure/key-vault/)
- [Azure for Students](https://azure.microsoft.com/en-us/free/students)
- Mishra, P. (2023). *Cloud computing with AWS*. Apress. https://doi.org/10.1007/978-1-4842-9172-6
