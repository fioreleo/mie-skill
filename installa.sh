#!/bin/bash
# =====================================================================
#  installa.sh
#  Copia le skill di questo progetto nella cartella di Claude Code
#  e installa i programmi di cui alcune skill hanno bisogno.
#
#  Lo usa lo script di avvio dell'ambiente cloud, a ogni sessione.
#  Si può anche lanciare a mano:  bash installa.sh
# =====================================================================

# ---------------------------------------------------------------------
# 1. Dove si trova questo progetto e dove vanno le skill
# ---------------------------------------------------------------------
QUI="$(cd "$(dirname "$0")" && pwd)"
DESTINAZIONE="$HOME/.claude/skills"

mkdir -p "$DESTINAZIONE"

# ---------------------------------------------------------------------
# 2. Copia ogni skill (una cartella per skill)
# ---------------------------------------------------------------------
for SKILL in "$QUI"/skills/*/ ; do
    NOME="$(basename "$SKILL")"
    rm -rf "$DESTINAZIONE/$NOME"
    cp -r "$SKILL" "$DESTINAZIONE/$NOME"
    echo "skill copiata: $NOME"
done

# ---------------------------------------------------------------------
# 3. Grafici di conoscenza (graphify), visibili in ogni progetto
#    Copia grafici/ in ~/grafici e aggiunge le istruzioni per Claude
#    alle istruzioni globali, una volta sola.
# ---------------------------------------------------------------------
if [ -d "$QUI/grafici" ] ; then
    rm -rf "$HOME/grafici"
    cp -r "$QUI/grafici" "$HOME/grafici"
    ISTRUZIONI="$HOME/.claude/CLAUDE.md"
    touch "$ISTRUZIONI"
    if ! grep -q "Grafici di conoscenza (graphify)" "$ISTRUZIONI" ; then
        printf '\n' >> "$ISTRUZIONI"
        cat "$QUI/grafici/ISTRUZIONI-CLAUDE.md" >> "$ISTRUZIONI"
    fi
    echo "grafici copiati in $HOME/grafici"
fi

# ---------------------------------------------------------------------
# 4. Programmi extra richiesti da alcune skill
#    (se un'installazione fallisce, si va avanti lo stesso)
# ---------------------------------------------------------------------

# agent-browser: serve il suo programma da riga di comando
if command -v npm >/dev/null 2>&1 ; then
    npm install -g agent-browser >/dev/null 2>&1 || echo "attenzione: agent-browser non installato"
fi

# video-lens: serve la libreria per scaricare i sottotitoli di YouTube
if command -v pip >/dev/null 2>&1 ; then
    pip install -q youtube-transcript-api yt-dlp >/dev/null 2>&1 || echo "attenzione: librerie di video-lens non installate"
fi

echo "fatto: skill installate in $DESTINAZIONE"
