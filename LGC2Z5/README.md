# LGC2Z5

LGC2Z5 v1.3 (2010), di Tristano Ajmone.

![Anteprima LGC2Z5 v1.3][Screenshot LGC2Z5 v1.3]

LGC2Z5 (Libro Game Creator To Z-Machine 5) è un convertitore dal formato libro game di LGC ([Libro Game Creator v2]) a Z-Machine (v5 o v8). Per una presentazione esaustiva, vedi:

- [Manuale] (in HTML)
- [Anteprima Manuale tramite GitHub & BitBucket HTML Preview] (se sei su GitHub)

[Manuale]: ./src/Manuale_LGC2Z5.htm
[Anteprima Manuale tramite GitHub & BitBucket HTML Preview]: http://htmlpreview.github.io/?https://github.com/tajmone/Archivio-AT-Tristano/blob/master/LGC2Z5/src/Manuale_LGC2Z5.htm "Anteprima HTML del Manuale tramite GitHub & BitBucket HTML Preview"


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduzione](#introduzione)
- [Stato dell'Applicazione](#stato-dellapplicazione)
    - [Incompatibilità Con LGC3](#incompatibilit%C3%A0-con-lgc3)
- [Dati Tecnici](#dati-tecnici)
    - [Requisiti Per La Compilazione](#requisiti-per-la-compilazione)
- [Contenuti del Progetto](#contenuti-del-progetto)
    - [Contenuti dello Zippato](#contenuti-dello-zippato)
- [Libro Game Creator](#libro-game-creator)
- [Libro Game Creator 2](#libro-game-creator-2)
- [Licenza](#licenza)
    - [Sorgente LGC2Z5](#sorgente-lgc2z5)
    - [Libreria CYOA](#libreria-cyoa)
    - [Il Manuale](#il-manuale)
    - [Inform 6](#inform-6)
    - [LGC2](#lgc2)
    - [Fuga dall'Altrove](#fuga-dallaltrove)

<!-- /MarkdownTOC -->

-----



# Introduzione

Creai questo piccolo applicativo nel 2010. All'epoca stavo riscoprendo il mondo dei librigame (una mia vecchia passione) ed esplorando il ricco patrimonio di testi creati e resi disponibili dalla comunità di autori italiana sui portali [Librogame's Land] e [Il Mondo dei Librogames].

In quel periodo era appena stato pubblicato _[Get Lamp]_, il documentario di Jason Scott sulle avventure testuali, che mi aveva aperto gli occhi sul fatto che le avventure testuali sono uno dei pochi generi di videogiochi accessibili ai non vedenti. La comunità dell'IF si era sempre adoperata a garantire l'accessibilità al gioco delle AT ai chiechi, tramite interpreti di gioco dedicati e/o il supporto per l'audiolettura del testo.

Mi resi conto che la creazione di un convertitore in grado di trasformare un libro game in uno storyfile IF avrebbe consentito di rendere immediatamente accessibili ai non vedenti centinai di librigame. In quegli anni l'accessibilità informatica era ancora un argomento giovane e poco diffuso, specie in Italia, sia per quanto riguardava i documenti digitiali che i siti web (paradossalmente, gli italiani hanno rivestito un ruolo chiave nell'[iniziativa del W3C per l'accessibilità web]). Per il formato Z-Machine esistevano già molti interpreti accessibili ai non vedenti, e un libro game convertito a questo formato sarebbe stato giocabile su svariati sistemi operativi e finanche nel browser.

![Anteprima di "Fuga dall'Altrove" in Windows Frotz][Screenshot Fuga dall'Altrove WinFrotz]

Sperimentando con il [Libro Game Creator] di Matteo Proropat, intravidi la possibilità di creare facilmente un convertitore in grado di trasformare un file sorgente di LGC in codice sorgente Inform 6, e infine compilarlo in Z-Machine. Mi ero infatti imbattuto nell'estensione CYOA (Choose Your Own Adventure) per Inform 6, creata da [Paolo Lucchesi] nel 2004, che introduceva una sintassi semplificata per la creazione di avventure a scelta multipla. Il salto dal formato di salvataggio nativo di LGC ad un sorgente Inform/CYOA era breve e facilmente colmabile.

Con il supporto di Paolo Lucchesi e Mattero Proropat riuscì a creare LGC2Z5 in pochi giorni, e grazie alle osservazioni degli utenti del portale [Librogame's Land] fui in grado di apportare migliorie nei due aggiornamenti che seguirono a breve la pubblicazione iniziale.

LGC2Z5 fu pubblicato sul sito [ZenFactor.org] nell'ottobre del 2010. È possibile visionare una copia archiviata della pagina web originale di LGC2Z5 tramite Wayback Machine:

- <https://web.archive.org/web/20170226125107/http://avventure-testuali.zenfactor.org/lgc2z5.htm>

# Stato dell'Applicazione

Ad oggi (2018) LGC2Z5 è ancora funzionante, nonostante gli otto anni trascorsi dalla sua creazione. È possibile usarlo per convertire libri gioco creati con [Libro Game Creator 2] (estensione dei file: "`*.lgc`"). 

## Incompatibilità Con LGC3

Con LGC2Z5 non è possibile covertire librigame creati con [LGC3], la nuova versione di Libro Game Creator.

Non ho avuto modo di approfondire i cambiamenti introdotti da LGC3 nel formato di salvataggio, per cui non ho idea di quanto lavoro richiederebbe rendere LGC2Z5 compatibile con LGC3.

Da una rapida scorsa del manuale, ho visto che LGC3 è in grado di importare libri creati con [la versione 2 di LGC][LGC], ma non mi risulta vi siano opzioni per esportare un libro nel vecchio formato di LGC2. Quindi temo che, allo stato attuale, non sia possibile usare LGC2Z5 con librigame di LGC3.


# Dati Tecnici

|                       |                                         |
| --------------------: | :-------------------------------------- |
| nome applicativo:     | LGC2Z5                                  |
| versione:             | 1.3                                     |
| data di rilascio:     | 2010-10-10                              |
| data di creazione:    | 2010-10-05                              |
| linguaggio:           | [AutoIt Script] v3.3.6.0                |
| licenza:              | libera distribuzione                    |
| OS:                   | MS Windows                              |
| lingua:               | italiano                                |



## Requisiti Per La Compilazione

LGC2Z5 è stato scritto in AutoIt script, usando [AutoIt v3.3.6.0]. Non so se il sorgente possa essere compilato con versioni successive di AutoIt o se vi siano problemi di retrocompatibilità; è comunque possibile scaricare le versioni precedenti di AutoIT dall'[archivio storico del sito]. La versione più recente di AutoIT è attualmente la v3.3.14.5 (Marzo 2018); siccome siamo ancora nell'ambito della `v3.3.x` presuppongo che il sorgente dovrebbe essere ancora compilabile, magari con piccoli adattamenti. 

# Contenuti del Progetto

LGC2Z5:

- [`/src/`](./src) — sorgenti di LGC2Z5 v1.3
- [`LGC2Z5.zip`](./LGC2Z5.zip) — lo zippato originale per la distribuzione di LGC2Z5 v1.3 (eseguibile)

Libro Game Creator 2:

- [`/LGC2/`](./LGC2/) — contiente zippato con LGC v2.0.3 (eseguibile)

Librogame _[Fuga dall'Altrove]_, di Matteo Proropat, a titolo dimostrativo:

- [`/esempio/`](./esempio/)
    + [`fuga_dall_altrove.lgc`][Fuga LGC] — sorgente LGC2
    + [`fuga_dall_altrove.inf`][Fuga I6] — conversione Inform 6
    + [`fuga_dall_altrove.z5`][Fuga Z5] — compilato Z-Machine 5

Ringrazio Matteo Proropat, autore di LGC e _[Fuga dall'Altrove]_, per averne gentilmente concesso l'inclusione nel presente progetto.

## Contenuti dello Zippato

Il file `LGC2Z5.zip` qui incluso è lo stesso che veniva offerto in scaricamento su ZenFactor.org. Al suo interno contiene:

- `inform.exe` — Inform 6.31 per Win32 (2006-02-10)
- `LGC2Z5.exe` — LGC2Z5 v1.3 per Win32
- [`lgc2z5_it_conv_np.h`](./src/lgc2z5_it_conv_np.h) — estensione `cyoa_it.h` modificata (converti numerazione paragrafi)
- [`lgc2z5_it_mant_np.h`](./src/lgc2z5_it_mant_np.h) — estensione `cyoa_it.h` modificata (mantieni numerazione paragrafi)
- [`Manuale LGC2Z5.htm`][Manuale] — Manuale d'Uso v1.3


# Libro Game Creator

- http://www.matteoporopat.com/librogame/

LGC è un applicativo gratuito per la scrittura e pubblicazione di librigame (anche noti come "libri-gioco" o CYOA — Choose Your Own Adventure), creato da Matteo Proropat:

> Libro Game Creator o LGC è un software per la scrittura di testi interattivi o “narrativi a bivi”. LGC ne permette l’editing, la connessione tra i paragrafi, l’esportazione in vari formati tra i quali HTML ed RTF (con link attivi), la creazione dei grafici di connessione del libro game e altro ancora.

La prima versione di LGC (detta anche "LGC1") risale al 2007, in seguito succeduta e rimpiazzata dalla versione 2 (2010) e infine dalla 3 (2014) che è una riscrittura di LGC in Java e segna il passaggio di LGC da applicazione per soli sistemi Windows ad applicazione multi-piattaforma. 

- __LGC__ (2007–2009)
- __LGC2__ (2010—2014)
- __LGC3__ (2014–)

I vari salti da una versione maggiore all'altra (LGC, LGC2, LGC3) introducono nuove funzionalità che richiedono l'adozione di un nuovo formato per i progetti LGC, spezzando la retrocompatibilità con le versioni precedenti (i progetti nel vecchio formato sono importabili nelle versioni successive, ma non viceversa).

La versione attuale di Libro Game Creator è la 3 (LGC3), il cui progetto è attivamente mantenuto ed aggiornato — a differenza delle versioni precedenti, che non lo sono più in quanto rimpiazzate dall'ultima versione, e quindi obsolete.

# Libro Game Creator 2

Per poter creare librigame da convertire in Z-Machine con LGC2Z5, è necessario usare la versione 2 di __Libro Game Creator__ (LGC2). Matteo Proropat, autore di LGC, mi ha gentilmente concesso di includere in questo progetto una copia dell'ultima versione di LGC2 rilasciata, che troverete all'interno dello zippato `LibroGameCreator-2.0.3.b03.zip` nella cartella:

- [`/LGC2/`](./LGC2/)

Si tratta di un programma standalone, per Windows, che non richiede installazione: è sufficiente dezipparne i contenuti ed avviarlo. Inoltre, per poter usare appieno LGC2 dovrai installare il programma gratuito [Graphviz], richiesto per la creazione dei grafici di connessione del libro (mappe di gioco):

- https://graphviz.gitlab.io/_pages/Download/Download_windows.html

> __APPUNTO TECNICO__ — La versione di LGC2 usata all'epoca della creazione di LGC2Z5 era la `v2.0.1 build 39` (2010-07-05), e quella di Graphviz la `v2.34`.


# Licenza

All'epoca della sua pubblicazione LGC2Z5 fu rilasciato come freeware liberamente distribuibile, come si evince dal suo Manuale: "È un programma gratuito e può essere liberamente distribuito e copiato." Altresì, sono liberamente distribuibili i componenti di terze parti inclusi nello zippato con cui LGC2Z5 viene distribuito.

## Sorgente LGC2Z5

- [`/src/LGC2Z5.au3`](./src/LGC2Z5.au3)

Quando pubblicai LGC2Z5 nel 2010 non ne divulgai il codice sorgente; con questo progetto è la prima volta che viene condiviso. Pubblico il codice sorgente con licenza MIT, dato che è compatibile con i termini stabiliti da Paolo Lucchesi per l'uso di `cyoa_it.h` (evitando così di usare licenze multiple):

    ==============================================================================
                                   The MIT License                                
    ==============================================================================

    LGC2Z5 is licensed under the MIT license:

    "LGC2Z5.au3" is (c) Copyright 2010-18 by Tristano Ajmone:
    https://github.com/tajmone/Archivio-AT-Tristano/

    The files "lgc2z5_it_mant_np.h" and "lgc2z5_it_conv_np.h" are adaptations of
    "cyoa_it.h", created by Paolo Lucchesi in 2004, and modified by Tristano Ajmone
    in 2010 for the LGC2Z5 project. "cyoa_it.h" was released by Paolo Lucchesi under
    MIT compatible license terms (which can be found in the source files):
    http://www.paololucchesi.it

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

Ogni successiva compilazione di LGC2Z5, e opere derivate (sorgenti o binarie), saranno soggette alla medesima licenza.

Copia del testo completo della licenza è disponibile nel file:

- [`/src/LICENSE`](./src/LICENSE)

[Unlicense]: http://unlicense.org/


## Libreria CYOA

I seguenti file inclusi con LGC2Z5 sono adattamenti dell'estensione Inform 6 `cyoa_it.h`, creata da [Paolo Lucchesi]:

- [`/src/lgc2z5_it_conv_np.h`](./src/lgc2z5_it_conv_np.h)
- [`/src/lgc2z5_it_mant_np.h`](./src/lgc2z5_it_mant_np.h)

I termini della loro licenza sono riportati nel codice sorgente stesso, e sono compatibili con i termini della licenza MIT:

```
! Una libreria per la conversione di LibroGame creati con LGC (LibroGameCreator)
! al formato Z5 (Z-Machine v. 5)
!
! Realizzata da Tristano Ajmone (2010) modificando 'cyoa_it.h' di Paolo Lucchesi (2004)
! <tajmone@libero.it>
! http://www.zenfactor.org
!
! ------------------------------------------
! cyoa_it.h
! Una libreria per avventure a scelta multipla (choose your own adventure)
! di Paolo Lucchesi, 2004
!
! Questo file e' software libero, puo' essere liberamente usato, copiato,
! distribuito e modificato. Qualsiasi versione, modificata o meno, di questo
! file distribuita sotto forma di codice sorgente deve contenere riferimento
! all'autore originale e deve essere liberamente usabile, copiabile,
! distribuibile e modificabile.
! Non e' posta alcuna condizione alla distribuzione del file come codice
! compilato.
! Questo file e' distribuito senza alcuna garanzia. L'autore non puo'
! essere ritenuto responsabile in alcun modo di danni provocati
! direttamente o indirettamente da questo file.
! ------------------------------------------
```

## Il Manuale

La cartella sorgente include anche il Manuale d'Uso di LGC2Z5:

- [`/src/Manuale_LGC2Z5.htm`](./src/Manuale_LGC2Z5.htm)

Dichiaro il manuale di pubblico dominio tramite [Unlicense]:

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



## Inform 6

    Inform 6.31 for Win32 (10th Feb 2006)

    This program is a compiler of Infocom format (also called "Z-machine")
    story files: copyright (c) Graham Nelson 1993 - 2006.

Lo zippato `LGC2Z5.zip` contiene una copia binaria del compilatore Inform 6 (`inform.exe`). Inform 6 è copyright © Graham Nelson 1993–2006, ed è rilasciato con doppia licenza: la licenza originale di Inform, oppure la Artistic License 2.0 (a propria scelta). Il [testo completo di entrambe le licenze] è visionabile su GitHub.

Solitamente, le distribuzioni binarie di Inform 6 (incluse quelle [su IF Archive], linkate dal [sito ufficiale Inform]) non includono un apposito file di licenza, e questo è il motivo per cui non inclusi una licenza nello zippato. A scanso di equivoci, riporto di seguito i termini della licenza originale Inform:

```
Original Inform License
=======================

Inform, the program and its source code, its example games and
documentation, including the text and typography of this book, are
copyright (C) Graham Nelson 1993, 94, 95, 96, 97, 98, 99, 2000, 01.
      
The Inform software may be freely distributed provided that: (a)
distributed copies are not substantially different from those archived
by the author, (b) this and other copyright messages are always
retained in full, and (c) no profit is involved. The same conditions
apply to distribution or conversion of any electronic form of this
book which may be made available by the author. Exceptions to these
conditions must be negotiated directly with the author.
                  
A story file produced with the Inform system belongs to whoever wrote
it and may be sold for profit if so desired, without the need for
royalty payment, provided that it prints a game banner conforming to
the standard library's banner at an early stage in play: in
particular, this banner must contain the information that the story
file was compiled by Inform, and the version numbers of compiler and
library used.
                        
The author assumes no liability for errors and omissions in this book,
or for damages or loss of revenue resulting from the use of the
information contained herein, or the use of any of the software
described herein. Inform software is supplied ``as is'' and carries no
warranty, actual or implied.
```

## LGC2

    Libro Game Creator
    Scritto da Matteo Poropat
    (C) 2007 Matteo Poropat (http://www.memoriedalbuio.com)
    In collaborazione con Libro Game's Land (http://www.librogame.altervista.org)

Il testo completo della licenza d'uso di LGC2 può essere visionato nel file:

- [`/LGC2/LICENSE`](./LGC2/LICENSE)


## Fuga dall'Altrove

    ©2007, Matteo Poropat
    2007, Memorie dal Buio – www.memoriedalbuio.com
    2007, Librogame’s Land – www.librogame.altervista.org
    Impaginazione a cura di Dirk06
    Copertina a cura di Dragan
    
    Il presente libro è da intendersi ad uso esclusivamente personale, ne è
    vietata qualsiasi tipo di vendita e la modifica anche parziale.
    Ogni eventuale riferimento a fatti realmente accaduti o persone reali è
    puramente casuale.

Matteo Proropat, autore di _Fuga dall'Altrove_, mi ha concesso il permesso di includere in questo progetto il sorgente del libro game ed i derivanti file convertiti/compilati da LGC2Z5, a titolo di esempio d'uso per LGC2Z5.

- http://www.matteoporopat.com/fuga-dallaltrove-un-libro-game-in-formato-ebook/

Per maggiori informazioni, si veda la cartella:

- [`/esempio/`](./esempio/)



[Fuga dall'Altrove]: #fuga-dallaltrove


[testo completo di entrambe le licenze]: https://github.com/DavidKinder/Inform6/blob/master/licence.txt "Testo completo della dual license di Inform 6"
[su IF Archive]: http://ifarchive.jmac.org/indexes/if-archiveXinfocomXcompilersXinform6Xexecutables.html "Area download dei precompilati di Inform su IF Archive"
[sito ufficiale Inform]: http://inform-fiction.org/software/current.html "Visita il sito ufficiale di Inform 6"

[Costruire i Libri-Gioco]: http://www.storiediguarigione.net/risorse/guide-scrittura/costruire-i-libri-gioco/

[Screenshot LGC2Z5 v1.3]: ./imgs/screenshot_LGC2Z5_v1.3.gif "Anteprima dell’interfaccia grafica di LGC2Z5 v1.3"
[Screenshot Fuga dall'Altrove WinFrotz]: ./imgs/screenshot_Fuga_dall_Altrove_WinFrotz.png "Anteprima di gioco in Windows Frotz del libro game 'Fuga dall'Altrove' di Mattero Proropat"

[Librogame's Land]: http://www.librogame.net/ "Visita Librogame’s Land"
[Il Mondo dei Librogames]: http://www.librogame.com "Visita Il Mondo dei Librogames"

[Get Lamp]: http://www.getlamp.com/ "Visita il sito di Get Lamp"

[iniziativa del W3C per l'accessibilità web]: https://www.w3.org/WAI/ "Visita la homepage della Web Accessibility Initiative (WAI)"

[Paolo Lucchesi]: http://www.paololucchesi.it/at/index.html "Visita il sito di Paolo Lucchesi"

[ZenFactor.org]: <https://web.archive.org/web/20170226125107/http://avventure-testuali.zenfactor.org/lgc2z5.htm> "Visita la homepage di LGC2Z5 su ZenFactor.org archiviata su Wayback Machine"

[AutoIt Script]: https://www.autoitscript.com "Visita il sito di AutoIT Script"
[AutoIt v3.3.6.0]: https://www.autoitscript.com/autoit3/files/archive/autoit/autoit-v3.3.6.0-setup.exe "Scarica AutoIt v3.3.6.0 (link diretto al file di installazione)"
[archivio storico del sito]: https://www.autoitscript.com/autoit3/files/archive/autoit/ "Visita la pagina per il download di versioni precedenti di AutoIT"

[Graphviz]: https://www.graphviz.org/

[librigame]: https://it.wikipedia.org/wiki/Librogame "Visita la pagina 'Librogame' di Wikipedia"

[LGC]: #libro-game-creator "Salta alla sezione su Libro Game Creator"
[Libro Game Creator]: #libro-game-creator "Salta alla sezione su Libro Game Creator"
[Libro Game Creator 2]: #libro-game-creator-2 "Salta alla sezione su Libro Game Creator 2"
[Libro Game Creator v2]: #libro-game-creator-2 "Salta alla sezione su Libro Game Creator 2"
[pagina ufficiale di Libro Game Creator]: http://www.matteoporopat.com/librogame/ "Visita la homepage di Libro Game Creator"
[LGC3]: http://www.matteoporopat.com/librogame/libro-game-creator-3/ "Visita la homepage di Libro Game Creator 3"

[LGC-2.0.3.b03]: https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/lgc/LibroGameCreator-2.0.3.b03.zip "Scarica LGC v2.0.3 da Google Code (link diretto)"
[LGC-2.0.1b39]: https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/lgc/LibroGameCreator-2.0.1b39.zip "Scarica LGC v2.0.1 da Google Code (link diretto)"

[Fuga LGC]: ./esempio/fuga_dall_altrove.lgc "Librogame 'Fuga dall'Altrove', di Matteo Proropat (sorgente LGC)"
[Fuga I6]: ./esempio/fuga_dall_altrove.inf "Librogame 'Fuga dall'Altrove', di Matteo Proropat (conversione Inform 6)"
[Fuga Z5]: ./esempio/fuga_dall_altrove.z5 "Librogame 'Fuga dall'Altrove', di Matteo Proropat (compilato Z5)"

