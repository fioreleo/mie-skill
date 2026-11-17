# Grafici di conoscenza (graphify)

Nella cartella `~/grafici/` ci sono grafici di conoscenza già pronti, disponibili in **ogni progetto**.

| Grafico | Materia | Fonte |
|---|---|---|
| `~/grafici/algebra-lineare/graph.json` | Algebra Lineare e Geometria (lezioni, esercitazioni, esami e chiavi) | 19 PDF del progetto privato fioreleo/nigga |

Quando l'utente fa una domanda su una di queste materie, **usa prima il grafico**, invece di aprire i PDF:

```bash
graphify query "<domanda>" --graph ~/grafici/algebra-lineare/graph.json --budget 2000
```

- Il riassunto del grafico è in `~/grafici/algebra-lineare/GRAPH_REPORT.md`.
- Cita la fonte con file PDF e pagina (`src` e `loc` nel risultato).
- Apri un PDF solo se il grafico non basta, e solo se il progetto nigga è nella sessione.
