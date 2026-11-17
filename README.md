# Le mie skill per Claude

Questo progetto contiene **le skill che uso con Claude Code**.

Lo script di avvio dell'ambiente cloud le installa **da solo**, a ogni sessione.

---

## Le skill

| Skill | A cosa serve | Autore |
|---|---|---|
| **video-lens** | Riassunto di un video YouTube, con punti chiave e minuti | kar2phi |
| **grill-me** | Ti fa domande finché un piano è chiaro | Matt Pocock |
| **find-skills** | Cerca la skill giusta per un lavoro | Vercel |
| **canvas-design** | Crea poster e immagini in PNG o PDF | Anthropic |
| **agent-browser** | Claude usa un browser da solo | Vercel |
| **ai-seo** | Far trovare un sito dalle AI | Corey Haines |
| **pricing** | Quanto far pagare un servizio | Corey Haines |

Ogni skill ha la **sua licenza** dentro la sua cartella.

---

## Com'è fatto il progetto

```
mie-skill/
├── README.md        questo file
├── installa.sh      copia le skill nella cartella di Claude
└── skills/
    ├── video-lens/
    ├── grill-me/
    ├── find-skills/
    ├── canvas-design/
    ├── agent-browser/
    ├── ai-seo/
    └── pricing/
```

---

## Come aggiungere una skill

1. crea una cartella dentro **skills/**, con il nome della skill
2. mettici dentro il file **SKILL.md** e gli altri file della skill
3. salva su GitHub

Alla prossima sessione la skill è **già pronta**.

---

## Come togliere una skill

Cancella la sua cartella dentro **skills/** e salva su GitHub.
