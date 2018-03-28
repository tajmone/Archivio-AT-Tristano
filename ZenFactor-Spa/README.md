# ZenFactor Spa

_ZenFactor Spa_, by Tristano Ajmone, 2010; pubblico dominio.


- [Gioca ZenFactor Spa nel browser][ZFS iPlayIF]

-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Link Esterni](#link-esterni)
- [Introduzione](#introduzione)
- [Dati Tecnici](#dati-tecnici)
    - [Estensione Italian Richiesta](#estensione-italian-richiesta)
- [Contenuti](#contenuti)
- [Licenza](#licenza)
    - [ZenFactor Spa](#zenfactor-spa)
    - [Italian di Massimo Stella](#italian-di-massimo-stella)

<!-- /MarkdownTOC -->

-----

# Link Esterni

- [IFDB » ZenFactor Spa]
- [ZenFactor Spa, homepage][ZenFactor.org] (su Wayback Machine)
- [ZenFactor Spa, giocabile nel browser][ZFS iPlayIF] (tramite [Parchment])
- [IF Archive » games » zcode » italian] » [`zenfactor_spa.z8`][IFArchive ZFS z8]

[Parchment]: https://github.com/curiousdannii/parchment "Visita il progetto Parchment su GitHub"

# Introduzione

> Sei Marco Rossi. Dopo aver sentito tanto parlare delle avventure testuali hai deciso di contattare la ZenFactor Spa — una prestigiosa multinazionale del settore, con filiali in tutto il mondo — per saperne di più. Hai fissato un appuntamento e ti avvii verso la sede centrale, sita nella lussuosa zona precollinare di Torino...
> 
> Una breve avventura testuale tutoriale giocabile online, direttamente nel browser.

_ZenFactor Spa_ è una breve avventura testuale comica, in italiano, concepita per introdurre i novizi al gioco delle AT: nel mondo dell'avventura sono disseminati cartelli e altri indizi sui comandi necessari per eseguire le azioni richieste per procedere nel gioco. Inoltre, l'avventura era stata concepita anche per promuovere un documento di Emily Short che avevamo tradotto di recente in italiano e reso disponibile in scaricamento dal medesimo sito — il giocatore si imbatterà nel suddetto documento nel corso del gioco.

Fu scritta nel 2010 e pubblicata a maggio dello stesso anno sul sito [ZenFactor.org] (da cui il titolo _ZenFactor Spa_), dove era possibile giocarla direttamente nel browser grazie all'interprete per browser [ZMPP] (in Java). La versione 2 è successa immediatamente alla prima, e si tratta solo di un piccolo aggiornamento in seguito a degli errori ortografici (o forse bachi, non ricordo) segnalatimi dai primissimi giocatori.

L'intera avventura può essere giocata in una decina di minuti, massimo venti nel caso di giocatori alle prime armi. Nonostante la sua brevità, è possibile rigiocarla con esiti leggermente diversi. L'idea era di creare un'avventura per chi non avesse mai giocato prima, e oltre a fungere da tutorial sui comandi di gioco voleva essere una dimostrazione su piccola scala di come scelte diverse da parte del giocatore possano influenzare il corso degli eventi di un'avventura (essendo il gioco breve, rigiocarlo non comporta un grosso impegno). È possibile fallire in più punti del gioco (con "game over"), e anche questa scelta è stata voluta ai fini didattici. Alcune azioni possono avere conseguenze negative senza terminare il gioco, e sono concepite come "lezioni di vita dell'IF" (per la serie, "sbagliando si impara a giocare meglio").

È possibile visionare una copia archiviata della pagina web originale di _ZenFactor Spa_ tramite Wayback Machine:

- <https://web.archive.org/web/20170226153418/http://avventure-testuali.zenfactor.org/zenfactor_spa.htm>



# Dati Tecnici

|                       |                                         |
| --------------------: | :-------------------------------------- |
| titolo:               | ZenFactor Spa                           |
| sottotitolo:          | Un'Avventura Testuale dimostrativa      |
| lingua:               | italiano                                |
| IFID:                 | `FD7F73E8-DC96-46AF-AF14-C5585B6ECD08`  |
| data di rilascio:     | 2010-05-25                              |
| licenza:              | pubblico dominio ([Unlicense])          |
| genere:               | Humor                                   |
| formato:              | zcode                                   |
| sistema di sviluppo:  | Inform 7 `build 5Z71`                   |
| estensioni richieste: | Italian by Massimo Stella               |

## Estensione Italian Richiesta

La compilazione di questa avventura richiede Inform 7 `5Z71` e l'estensione Italian (di Massimo Stella) che veniva usata all'epoca. Nel caos delle ondate di aggiornamenti di I7 che hanno spezzato la compatibilità di molte estensioni, la liberia Italian è stata soggetta a molte revisioni. Purtroppo, fu solo in seguito che venne adottata la prassi di annotare nel file sorgente delle estensioni la data e versione della loro creazione e a quale build di Inform 7 erano adatte. Perciò non è sempre facile ritrovare le versioni giuste delle librerie richieste per le avventure create in questo periodo.

Nelle cartelle da cui ho recuperato il progetto sorgente di _ZenFactor Spa_ ho trovato varie copie dell'estensione Italian, inclusa la versione 1 che dovrebbe risalire al gennaio 2010 (o comunque, da me salvata su disco nel 2010/01/08). Quasi sicuramente è la versione corretta per compilare questa avventura, e l'ho quindi inclusa in questa cartella:

- [`Italian.i7x`](./Italian.i7x)

Non ho avuto modo di ricompilare l'avventura, quindi non posso essere 100% sicuro che sia la versione giusta di Italian, ma è molto probabile che lo sia.

# Contenuti

- [`/ZenFactor-Spa.inform/`](./ZenFactor-Spa.inform) — cartella progetto Inform 7
- [`zenfactor_spa.z8`](./zenfactor_spa.z8) — storyfile (formato Z-Machine v8)
- [`UNLICENSE`](./UNLICENSE) — attestazione di rilascio di _ZenFactor Spa_ nel pubblico dominio
- [`Italian.i7x`](./Italian.i7x) — estensione Italian v1, di Massimo Stella ([CC-BY-3.0])
- [`LICENSE`](./LICENSE) — testo [CC-BY-3.0] per Italian

# Licenza

_ZenFactor Spa_ e l'estensione Italian hanno licenze independenti.

## ZenFactor Spa

All'epoca in cui pubblicai _ZenFactor Spa_ non ne specificai la licenza, quindi lo faccio ora e la dichiaro di pubblico dominio tramite [Unlicense]:

    This is free and unencumbered software released into the public domain.

    Anyone is free to copy, modify, publish, use, compile, sell, or
    distribute this software, either in source code form or as a compiled
    binary, for any purpose, commercial or non-commercial, and by any
    means.

    In jurisdictions that recognize copyright laws, the author or authors
    of this software dedicate any and all copyright interest in the
    software to the public domain. We make this dedication for the benefit
    of the public at large and to the detriment of our heirs and
    successors. We intend this dedication to be an overt act of
    relinquishment in perpetuity of all present and future rights to this
    software under copyright law.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
    OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
    ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
    OTHER DEALINGS IN THE SOFTWARE.

    For more information, please refer to <http://unlicense.org/>

Il testo completo della Unlicense lo trovi nel file:

- [`UNLICENSE`](./UNLICENSE)

Non credo che l'utilizzo dell'estensione Italian implichi che _ZenFactor Spa_ sia un'opera derivativa di essa — ossia, che la licenza CC-BY ricada su _ZenFactor Spa_ di riflesso. Non sono un giurista e non posso garantire in tal senso, e la materia delle licenze open souce è notoriamente oscura (spesso più teoretica che pratica), ed è opinione diffusa che l'adozione della licenza Creative Common per il codice sorgente di software sia una scelta poco indicata (ma è una condizione _sine qua non_ per pubblicare estensioni sul sito di Inform 7, quindi si tratta di una «scelta» piovutaci tra capo e collo dall'alto).

Sono comunque certo che il codice sorgente di _ZenFactor Spa_ è a tutti gli effetti di pubblico dominio, in quanto indipendente da quello di Italian prima della compilazione. In caso di dubbi circa le implicazioni riguardo la re-distribuzione del file d'avventura compilato, si adotti la licenza CC-BY-3.0 per la sua diffusione (che non è in contrasto con il pubblico dominio).

## Italian di Massimo Stella


La libreria Italian, di Massimo Stella, è rilasciata con licenza Creative Commons Attribution 3.0 ([CC-BY-3.0]) — questa è la licenza implicita con cui vengono pubblicate le estensioni sul sito di Inform 7, e Italian all'epoca era distribuita su quel sito.

File di licenza [CC-BY-3.0]:

- [`LICENSE`](./LICENSE)

Puoi visionare il testo della licenza [CC BY 3.0 tradotto in italiano a questo link][CC-BY-3.0 IT].


[ZenFactor.org]: <https://web.archive.org/web/20170226153418/http://avventure-testuali.zenfactor.org/zenfactor_spa.htm> "Visita la copia archiviata della pagina su Wayback Machine"

[CC-BY-3.0]: https://creativecommons.org/licenses/by/3.0/us/

[Unlicense]: http://unlicense.org/

[CC-BY-3.0 IT]: https://creativecommons.org/licenses/by/3.0/it/

[ZMPP]: http://zmpp.sourceforge.net/ "Visita il sito di ZMPP (The Z-Machine Preservation Project)"

[IFDB » ZenFactor Spa]: http://ifdb.tads.org/viewgame?id=kj5hyq3wkvl8x8yf "Visista la pagina di ZenFactor Spa su IFDB"

[IF Archive » games » zcode » italian]: https://ifarchive.org/if-archive/games/zcode/italian/ "Visita la sezione 'games/zcode/italian/' di IF Archive"
[IFArchive ZFS z8]: https://ifarchive.org/if-archive/games/zcode/italian/zenfactor_spa.z8 "Link diretto alla copia di ZenFactor Spa depositata su IF Archive"
[ZFS iPlayIF]: http://iplayif.com/?story=https%3A%2F%2Fifarchive.org%2Fif-archive%2Fgames%2Fzcode%2Fitalian%2Fzenfactor_spa.z8 "Gioca ZenFactor Spa su iplayif.com, direttamente nel browser, tramite Parchment"
