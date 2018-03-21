"ZenFactor Spa" by Tristano Ajmone

The story headline is "Un[']Avventura Testuale dimostrativa". 
The story genre is "Humor". 
The release number is 2. 
The story creation year is 2010. 

Include Italian by Massimo Stella.

Use full-length room descriptions.

Understand "giu" as down.


Section 1 - Variabili

The maximum score is 3.

Kissed-Guard is a truth state that varies. 
Guard-Settled-Matter is a truth state that varies. 
Segretaria-Greeted is a truth state that varies. 


AiutoVar is a text that varies. AiutoVar is "[paragraph break](scrivi [BOLD TYPE]LEGGI ISTRUZIONI[ROMAN TYPE])".

Section 2 - Istruzioni & Aiuto

The istruzioni is a backdrop. It is everywhere. The description is "Benvenuto a questa avventura testuale introduttiva! Per giocare dovrai digitare dei comandi imperativi rivolgendoti al personaggio del gioco (es: [bold type]ESAMINA PORTA[roman type]).[paragraph break]Questi sono i comandi principali con cui ambientarti nel gioco:[paragraph break][bold type]GUARDA[roman type] (per ottenere la descrizione della stanza)[line break][bold type]ESAMINA OGGETTO[roman type] (per esaminare persone o oggetti, es: esamina porta)[line break][bold type]NORD / EST / SUD / OVEST / SU / GIÙ[roman type] (per spostarti nel gioco)[line break][bold type]PRENDI OGGETTO[roman type] (per prendere un oggetto, es. prendi libro)[line break][bold type]LASCIA OGGETTO[roman type] (per abbandonare un oggetto)[line break][bold type]APRI / CHIUDI OGGETTO[roman type] (per aprire porte, scatole, ecc.)[line break][bold type]INVENTARIO[roman type] (Per sapere quali oggetti hai con te)[paragraph break]Nota Bene: Non è affatto necessario digitare i comandi in maiuscolo (è indifferente), qui sono riportati in maiuscolo e grassetto solo per chiarezza.[paragraph break]Ci sono tanti altri comandi che puoi (e devi) usare per completare questa avventura ma lascerò alla tua curiosità il compito di scorpirl!"



To say Aiuto:
	say AiutoVar;
	now AiutoVar is "".

Section 3 - Backdrops

The pareti is a backdrop. The pareti is everywhere. The description is "[if player is in Di Fronte Alla ZenFactor Spa]Le pareti dell[']edificio sono levigate a specchio[else]Le pareti sono rivestite in una lussuosa carta da parati boreaux[end if]."
Understand "parete", "muro" and "muri" as pareti.

The pavimento is a backdrop. The pavimento is everywhere. The description is "[if player is in Di Fronte Alla ZenFactor Spa]Il marciapiede e la strada sono ben tenuti[else]Il pavimento è in pregiatissimo marmo di Carrara[end if]."
Understand "suolo", "marciapiede", "pavimentazione" and "strada" as pavimento.

Chapter 0 - Intro

When play begins:
	say "Sei Marco Rossi. Dopo aver sentito tanto parlare delle avventure testuali hai deciso di contattare la ZenFactor Spa - una prestigiosa multinazionale del settore, con filiali in tutto il mondo - per saperne di più. Hai fissato un appuntamento e ti avvii verso la sede centrale, sita nella lussuosa zona precollinare di Torino...";




Chapter 1 - Di Fronte Alla ZenFactor Spa

Di Fronte Alla ZenFactor Spa is a room. "L[']mponente edificio della ZenFactor Spa si staglia contro il sole primaverile in tutto il suo splendore. L[']entrata dell[']edificio è a [bold type]NORD[roman type], attraverso la porta.[Aiuto]"

Every turn when player is in Di Fronte Alla ZenFactor Spa:
	say "[one of]Un[']automobile ti passa accanto.[or]Un cane abbaia in lontananza.[or]Una folata di vento ti investe nel suo tepore primaverile.[or]Degli uccelli cinguettano alacremente alle tue spalle.[or]Un pedone attraversa la strada e sparisce dietro l[']angolo.[or]Due anziane signore passeggiano sul lato opposto della strada.[in random order]"

Instead of going nowhere when player is in Di Fronte Alla ZenFactor Spa:
	say "Il tuo obiettivo è entrare nell[']edificio della ZenFactor Spa."

Section 0 - Edificio

The edificio is a scenery in Di Fronte Alla ZenFactor Spa. The description is "E['] una costruzione cubica di due piani, le pareti sono rivestite in lastre cromate."

Section 1 - Porta

A porta a vetri is north of Di Fronte Alla ZenFactor Spa and south of Reception. porta a vetri is a female singular-named locked door. The description is "E['] una grossa porta con telaio in lega metallica e spessi vetri. La porta è [if open]aperta[else]chiusa[end if].[line break]Sopra la porta c[']è scritto:[']PER ATTAVERSARE QUESTA PORTA SCRIVI [bold type][if player is in Di Fronte Alla ZenFactor Spa]NORD[else]SUD[end if][roman type][']"

Instead of opening the porta a vetri when the noun is locked, say "Provi a spingere e a tirare ma la porta non si apre. Dev[']essere chiusa."

Instead of opening a door when the noun is open, say "La porta è già aperta."

Instead of going through closed door: say "Non puoi, la porta è chiusa!"

After closing the porta a vetri when player is in Di Fronte Alla ZenFactor Spa:
	now the porta a vetri is locked;
	say "Chiudi la porta a vetri e senti scattare la serratura."
	

After going through the porta a vetri from Reception:
	now the porta a vetri is closed;
	now the porta a vetri is locked;
	say "La porta si chiude alle tue spalle.";
	continue the action. 

Section 1b - Bussare alle Porte

Knocking is an action applying to one visible thing.

Understand "bussa a/alla/la [something]" as knocking.

Instead of knocking the porta a vetri when the porta a vetri is closed:
	say "La porta a vetri è troppo spessa, il tuo tentativo è vano. In compenso ti scortichi le nocche."


Instead of knocking a open door:
	say "Inutile bussare, la porta è aperta."

Instead of knocking  the porta della sala when the porta della sala is closed:
	say "Bussi alla porta ma non ottieni risposta."

Instead of knocking something:
	say "In questo gioco, ha senso bussare soltanto alle porte!"

Knocking-Nothing is an action applying to nothing.

Understand "bussa" as Knocking-Nothing.

Instead of knocking-nothing when a door (called the porta-del-caso) is in the location:
	try knocking the porta-del-caso.

Instead of knocking-nothing:
	say "Non c'è nessuna porta qui!."

Instead of knocking a door when player is in Reception or when player is in Sala Programmatori:
	say "Che senso avrebbe? Si bussa per entrare, non per uscire!"



Section 2 - Citofono & Placca

The citofono is fixed in place in Di Fronte Alla ZenFactor Spa . The description is "Il citofono è formato da una lastra  in ottone infissa al muro da cui l[']occhio di una telecamera ti scruta. Dal citofono spunta un unico pulsante."

The telecamera is a female singular-named scenery  in Di Fronte Alla ZenFactor Spa . The description is "L[']occhio elettronico della telecamera vigila l[']accesso alla ZenFactor Spa. Al momento la luce della telecamera è spenta."

The placca metallica is a female singular-named fixed in place in Di Fronte Alla ZenFactor Spa . The description is "Sulla placca d[']ottone è inciso: ['][bold type]ZenFactor Spa, Azienda Leader nel settore delle Avventure Testuali. Fondata nel 2009[roman type][']." 

Section 3 - Pulsante

The pulsante is a scenery in Di Fronte Alla ZenFactor Spa . "E['] un comune pulsante, di quelli che se li premi succede qualcosa."
Understand "bottone" as pulsante.

Pressing is an action applying to one visible thing .
Understand "premi [something]" as pressing.

Understand "schiaccia [something]" as pressing.

Carry out pressing:
	say "Non puoi premere [the noun]!"

Instead of pressing the pulsante the first time:
	now the porta a vetri is unlocked;
	now the porta a vetri is open;
	say "La telecamera del citofono si illumina e una voce femminile ti risponde:[line break][line break][']ZenFactor Spa, dica.['][line break][']Salve, sono Mario Rossi, ho un appuntamento per le avventure testuali ...['][line break][line break]Senti scattare la serratura della porta a vetri."

Instead of pressing the pulsante when the porta a vetri is locked:
	now the porta a vetri is unlocked;
	now the porta a vetri is open;
say "La telecamera del citofono si attiva e ti risponde una voce femminile:[line break][line break][']Ancora lei, ma non le avevo già aperto?['][line break][']Eh sì ... ma la porta si è chiusa..['][line break][line break]Senti la voce borbottare qualcosa in tono infastidito, poi la serratura della porta a vetri scatta."

Instead of pressing the pulsante when the porta a vetri is unlocked:
	say "Non serve che suoni il citofono un[']altra volta, la porta è già aperta."




Chapter 2 - Reception

Reception is a room. "La lussuosa sala della reception è immensa e accogliente. L[']aria è fresca e profumata. Una rampa di scale conduce [bold type]SU[roman type], ai piani superiori. Una porta a [bold type]SUD[roman type] conduce fuori dall[']edificio.."

Giocatore Non Autorizzato is a scene.
Giocatore Non Autorizzato begins when play begins.
Giocatore Non Autorizzato ends when Segretaria Libera begins.

Section 1 - Segretaria

The segretaria is a woman in the reception. The description is "La segretaria è un[']attraente donna sulla trentina. [if Segretaria Libera has ended]E['] assorta a fissare lo schermo del computer digitando sulla tastiera a ritmo serrato[else]Al momento è impegnata in una coversazione telefonica[end if]." The indefinite article is "la".

Segretaria Libera is a scene.
Segretaria Libera begins when player is in the Reception for the sixth turn.
Segretaria Libera ends when player is in the Reception for the sixth turn.

When Segretaria Libera begins:
	say "La segretaria riaggancia il telefono e ti si rivolge con un sorriso:[line break][']Lei è venuto qui per informarsi sulle avventure testuali, giusto? Può accomodarsi nell[']ufficio del Direttore, al secondo piano!['][line break]La segretaria indica con un gesto all[']agente della sicurezza che sei autorizzato a salire."

Section 1b - Segretaria > Bacia & Altre Azioni

Instead of doing anything other than examining or kissing or attacking to the segretaria during Giocatore Non Autorizzato:
	say "La segretaria ti blocca con un gesto e indica il telefono per farti capire che è impegnata in una conversazione."

Instead of doing anything other than examining or kissing or attacking to the segretaria:
	say "La segretaria si stringe nelle spalle, [']Non credo di poterla aiutare ulteriormente, mi spiace.['] E si rimette a lavorare al computer."

Instead of kissing the segretaria:
	say "Ti sporgi oltre la scrivania per baciarla ma lei si mette a gridare aiuto. L[']agente della sicurezza ti salta addosso con un balzo felino, immbolizzandoti. Estrae lo sfollagente e prende a manganellarti [if Kissed-Guard is false]urlando con odio [']Sporco maniaco sessuale!['][else]in preda ad un impeto di gelosia - [']Schifoso ... come hai potuto farmi questo! Tu mi hai illuso!['][end if] Alla settima manganellata in testa perdi completamente i sensi...";
	end the game in death.

Section 1c - Segretaria Porge Benvenuto

Report going north from the Di Fronte Alla ZenFactor Spa when Segretaria Libera has not happened:
		segretaria-welcomes in zero turns from now;
		continue the action.

At the time when segretaria-welcomes:
	say "Vedendoti entrare, la segretaria [if Segretaria-Greeted is false]allontana da sé il ricevitore del telefono, [']Lei è il signor Rossi vero? Benvenuto alla ZenFactor Spa. In questo momento sono trattenuta al telefono, ma sarò da lei fra cinque minuti. Intanto si accomodi pure!['] Dopodiché la segretaria[else]ti fa cenno di attendere cinque minuti, poi[end if] torna a dedicarsi alla sua telefonata.";
	now Segretaria-Greeted is true.

At the time when segretaria-greets:
	say "Vedendoti entrare, la segretaria ti fa cenno di attendere cinque minuti, poi torna a dedicarsi alla sua telefonata."



Section 2 - L'Agente della Sicurezza

The agente della sicurezza is a man in the Reception. The description is "L[']agente è grosso come un armadio e peloso come un gorilla. Ha un[']espressione [if Kissed-Guard is true]innamorata. Accortosi che lo osservi, emette un profondo sospiro[else]molto severa[end if]. Sul cartellino della divisa c[']è scritto [']Rocco - Sicurezza Interna[']. Uno sfollagente è appeso alla sua cintura." The indefinite article is "l[']".
Understand "Rocco", "guardia", "sbirro" and "poliziotto" as agente.

The manganello is a scenery in the Reception. The description is "E['] un manganello di legno massiccio. Deve fare molto male."
Understand "sfollagente" as manganello.

The divisa  is a scenery in the Reception. The description is "La divisa della guardia non riveste particolare interesse."
Understand "cintura" and "cartellino" as divisa.

Section 3 - Le Scale

The rampa di scale is a female singular-named backdrop in the Reception, in the Pianerottolo and in the Ufficio del Direttore. "[if player is in Reception]La rampa di scale conduce [bold type]SU[roman type], al primo piano[else if player is in Pianerottolo]Dal pianerottolo partono due rampe di scale: una che ascende [bold type]SU[roman type] all[']ufficio del Direttore, l[']altra che riporta [bold type]GIÙ[roman type], alla Reception[else]Le scale conducono [bold type]GIÙ[roman type], al pianerottolo[end if]. I gradini sono rivestiti in una morbida moquette decorata con eleganti motivi geometrici in tinte scure."

Section 4 - Giornale e Tavolino

The tavolino is a fixed in place supporter in the Reception. The description is "Il tavolino è in ottone, lucidato a specchio. Sembra molto pesante."

The giornale is on the tavolino. The description is "[if noun is carried by player]Sfogli il giornale. Un articolo ti colpisce: [italic type]Una nuova ondata d[']amore travolge le avventure testuali[roman type]. L[']articolo spiega come nelle avventure di nuova generazione si tenda a promuovere l[']amore e la solidarietà anziché la violenza e l[']avversione; per esempio in molte avventure è necessario baciare dei personaggi per completare il gioco. Mhh, interessante ...[else]E['] un[']edizione di [italic type]ZenFactor IF-News[roman type], un quotidiano dedicato al mondo delle avventure testuali. Per poterlo leggere dovresti prima prenderlo."

Instead of going somewhere when player is carrying the giornale:
	say "L[']agente della sicurezza ti trattiene per un polso: [']Non può lasciare la stanza finché non posa il giornale![']"

Instead of dropping the giornale:
	now the giornale is on the tavolino;
	say "Riponi il giornale sul tavolino."

Understand "posa [something]" as dropping.

Section 5 - Poltroncina

The poltroncina is a female singular-named fixed in place thing in the Reception.
The description is "E['] una poltroncina francese Luigi XV, del ‘700. Sembra molto preziosa e delicata."

Understand "sedia" and "poltrona" as poltroncina.

Sedia-Sfasciata is a truth state that varies. 

Instead of taking the poltroncina:
	say "Come afferri la poltroncina l[']agente della sicurezza interviene [if Kissed-Guard is false]bruscamente:[line break][']Dove crede di andare con questa poltroncina Luigi XV, ha idea di quanto vale?['][else]dolcemente:[line break][']Tesoro, lascia stare la poltroncina Luigi XV, è molto costosa e delicata.['][end if]"

Instead of taking the poltroncina when Sedia-Sfasciata is true:
	say "La poltroncina è sfasciata, lasciala al suo posto."

Instead of entering the poltroncina when Sedia-Sfasciata is true:
	say "Non puoi sederti su una poltroncina sfasciata!"

Instead of entering the poltroncina when Sedia-Sfasciata is false:
	say "La poltroncina si sfascia sotto il tuo peso, riversandoti in terra! Ti rialzi col culo dolente.";
	now the description of the poltroncina is "La poltroncina Luigi XV è completamente sfasciata e inservibile. Un danno insestimabile.";
	now the printed name of the poltroncina is "poltroncina rotta";
	now Sedia-Sfasciata is true.

Understand "siedi su/sulla/sullo/sul [poltroncina ]" or "siediti su/sulla/sullo/sul [poltroncina ]" as entering.

Understand "siedi su/sulla/sullo/sul [something]" or "siediti su/sulla/sullo/sul [something]" as shitting.

Shitting is an action applying to one visible thing.
Carry out shitting:
	say "Sopra [the noun]? Non mi sembra una buona idea."

Section 6 - Scrivania, Computer, Telefono, ecc

The scrivania is a female singular-named backdrop. It is in the Reception and in the Ufficio della Direzione. The description is "[if player is in Reception]La scrivania in legno laccato della segretaria è molto ordinata. Sulla scrivania sono appoggiati un monitor, una tastiera e un telefono[else]La lussuosa scrivania del Direttore è disordinatissima: tabulati e fogli ne ricoprono l[']intera superficie. Sulla scrivania c[']è un telefono[end if]."

Understand "tavolo" as scrivania.

The monitor is a scenery in the Reception. The description is "Il monitor a cristalli liquidi dev[']essere collegato a un computer sotto il tavolo. Nulla che ti possa comunque interessare."

Understand "computer", "schermo" and "pc" as monitor.

The tastiera is a female singular-named scenery in the Reception. The description is "Una normale tastiera per computer."

The telefono is a backdrop. The telefono is in the Reception, in the Sala  Programmatori  and in the Ufficio della Direzione. The description is "Un moderno telefono da ufficio, [if player is in Reception]rosso[else if player is in Sala Programmatori]viola[else]nero[end if]."

Section A - Controllo Azioni Giocatore

Instead of going up in the Reception for the first time during Giocatore Non Autorizzato:
	say "L[']agente della sicurezza ti si piazza davanti: ['][if Kissed-Guard is false]Spiacente, lei non può salire, non è stato autorizzato dalla segreteria!['][else]Spiacente Chéri, il lavoro è lavoro. Non puoi salire se non sei stato autorizzato dalla segreteria!['][end if]"
	
Instead of going up in the Reception for the second time during Giocatore Non Autorizzato:
	say "L[']agente della sicurezza ti blocca minacciosamente: [']Non mi piace ripertermi! No autorizzazione, no salire! Chiaro?[']"

Instead of going up in the Reception during Giocatore Non Autorizzato:
	say "L[']agente ti ringhia: [']Quando dico NO è NO!![']"

Instead of kissing the agente della sicurezza for the first time:
	say "Ti fai coraggio e spiaccichi un bacio in bocca alll[']agente di sicurezza. Lui indietreggia sbigottito e ti redarguisce in tono mieloso:[line break][']Non sul posto di lavoro tesoro! Ci vediamo dopo che ho smontato.['][line break]";
	now Kissed-Guard is true;
	increase score by one.

Instead of kissing the agente della sicurezza:
	say "Anticipando sul nascere le tue intenzioni, l[']agente ti fa cenno di [']no['] e di [']dopo[']. Ti strizza l[']occhiolino con complicità e poi torna a concentrarsi sulla sorveglianza."



Chapter 3 - Pianerottolo

Pianerottolo is up from Reception. "Nel relativo silenzio del pianerottolo puoi udire una frenetica attività di tastiere provenire da un ufficio che si trova a [bold type]NORD[roman type]. Le scale conducono [bold type]SU[roman type] nell[']ufficio del Direttore, oppure [bold type]GIÙ[roman type] alla Reception"

A porta della sala is north of Pianerottolo and south of Sala Programmatori. Porta della sala is a female singular-named closed door.
The printed name is "porta[if player is in Pianerottolo] con un cartello".
The description is "La porta è [if noun is closed]chiusa[else]aperta[end if].[if player is in Pianerottolo] Sulla porta è infisso un cartello.[end if]"

After opening the porta della sala for the first time:
	now the description of Pianerottolo is "Il pianerottolo è invaso dal fumo di sigarette che esce dall[']ufficio a [bold type]NORD[roman type]. Dall[']ufficio puoi udire un forte rumore di mani che pigiano tasti.";
	say "Apri la porta e una nube di fumo denso si riversa nel corridoio."

Instead of closing the porta della sala:
	say "Meglio lasciarla aperta, se no moriranno intossicati là dentro."


The cartello is a scenery in the Pianerottolo. The description is  "Sul cartello c[']è scritto SALA PROGRAMMATORI. VIETATO L[']ACCESSO."

A poster is fixed in place in the Pianerottolo. The description is  "E['] un poster della campagna [italic type]IF For Love 2010[roman type]. Sul poster c[']è scritto [']Ditelo con un bacio! No alla violenza nella AT.[']"

Chapter 5 - Sala Programmatori

Sala Programmatori is a room. "La stanza è avvolta in una spessa nube di fumo di sigarette. Una decina di sviluppatori sono chini sulle tastiere dei computer, intenti a programmare fumando in maniera febbrile. Il rumore delle tastiere è assordante. L[']uscita è a [bold type]SUD[roman type]."

The sviluppatori is a scenery in the Sala Programmatori. The description is "Una decina di sviluppatori sono concentratissimi sui loro terminali fumano una sigaretta dietro l[']altra. Molti di loro hanno dei tic nervosi."

Understand "sviluppatore"  as sviluppatori.

Instead of doing anything other than examining to the sviluppatori:
	Say "Gli sviluppatori sono troppo impegnati per darti retta."

Every turn rule when player is in the Sala Programmatori:
	say "[one of]Uno degli sviluppatori inizia a tossire selvaggiamente. Espettora un grumo giallastro che finisce sul pavimento. Poi riprende a fumare la sua sigaretta[or]La ventola di un computer incespica qualche secondo producendo un suono stridulo[or]Un programmatore sbadiglia con forza, inducendo i restanti a imitarlo[or]Uno sviluppatore rutta fragorosamente[in random order]."

Section 1 - Programmatore

The programmatore is a man in the Sala Programmatori. The description is "Il programmatore sembra molto nervoso, si muove a scatti e i suoi occhi sono cerchiati di nero. E['] coperto dalla psioriasi.[if Guard-Settled-Matter is false] Ti guarda con astio.[end if]". The indefinite article is "un". 

Instead of kissing programmatore:
	say "Non ce la fai, ti viene il voltastomaco."


Section 6 - Scatolone e Opuscolo (winnig game here!)

A scatolone is a fixed in place closed openable container in the Sala Programmatori. The indefinite article is "uno".
Understand "scatola" as scatolone.

Instead of examining the scatolone:
	say "[if noun is closed]E['] uno scatolone chiuso con sopra scritto ['][bold type]OPUSCOLI - AT[roman type]['][else]Lo scatolone è aperto. E['] pieno di opuscoli[end if]."

Instead of taking the scatolone:
	say "Non è il caso che tu ti prenda tutto lo scatolone."

The opuscoli is inside the scatolone. The description is "Sembrano degli opuscoli introduttivi alle avventure testuali."
The indefinite article is "degli".
Understand "opuscolo" as opuscoli.

Instead of taking the opuscoli:
	if Guard-Settled-Matter is false:
		say "Il programmatore con la psioriasi ti spinge contro il muro: [']Giù le mani daglli opuscoli, maledetto intruso!!!['][line break]";
	otherwise:
		say "Il programmatore con la psioriasi scatta dalla sedia:[line break][']Amichetto di Rocco o meno, che sia, lei non può prendere gli opuscoli senza il permesso del Direttore!['][line break]".

Instead of taking the opuscoli during Direttore Libero:
	if Guard-Settled-Matter is false:
		say "Peschi un opuscolo dalla scatolone ma non fai in tempo ad aprirlo perché vieni colpito alle spalle e crolli sul pavimento. L[']ultima cosa che riesci a vedere prima di svenire è la faccia del programmatore psioriasico che solleva un enorme posacenere in pietra per colpirti in faccia ...";
		end the game in death;
	otherwise:
		say "Peschi un opuscolo dalla scatolone ma il programmatore psioriasico sbraita,[line break][']Le ho detto che ci vuole l[']autorizzazione del Direttore!['][line break][']Ma è stato il Direttore a dirmi di prenderlo!['][line break]Il programmatore, titubante, telefona al Direttore per accertare quanto dici, dopodiché ti fà bruscamente cenno di procedere.[paragraph break]Finalmente riesci a sfogliare l[']opuscolo. Si tratta del documento [italic type]Introduzione Alle Avventure Testuali[roman type] di Emily Short, tradotto in italiano. Lo sfogli e ti accorgi che è un ottimo testo introduttivo.[line break]Leggendo scopri che era disponibile in PDF gratuito sul sito www.ZenFactor.org. Tutta sta sfacchinata e potevi scaricarlo da un sito in trenta secondi![paragraph break]Bene, la tua missione ora è completata!";
		increase score by one;
		end the game in victory.

Section 7 - Computer

The computer is a scenery in the Sala Programmatori. The description is "I computer sono vecchissimi: dei 486 o dei Pentium-I al massimo. Ottimo, questo vuol dire che per creare avventure testuali non servono computer di ultima generazione."

Understand "pc" as computer.

The apparecchiature is a female plural-named scenery in the Sala Programmatori. The description is "Non vale la pena soffermarsi sulla tecnologia in questa sala, tutta roba che conosci già."

Understand "monitor", "schermo", "schermi", "tastiera" and "tastiere" as apparecchiature. 

Section 8 - Mobilio

The mobilio is a scenery in the Sala Programmatori. The description is "Non c[']è nulla di speciale nei tavoli, nelle sedie, e nel resto del mobilio spartano di questa stanza."

Understand "sedia", "sedie", "tavolo", "tavoli", "scrivania" and "scrivanie" as mobilio.

Section A - Questioni di Sicurezza

Report going north from the Pianerottolo when Guard-Settled-Matter is false:
	if the Sala Programmatori is visited:
		the programmer surprises in zero turns from now;
	otherwise:
		the programmer warns in zero turns from now.

At the time when the programmer warns:
	say "Uno dei programmatori - un tipo sulla cinquantina ricoperto di psioriasi - si accorge della tua presenza, si sfila la sigaretta di bocca e ti ammonisce:[line break][']Lei non può stare nella sala di programmazione! E['] una questione di segretezza industriale. Quindi la prego di uscire subito.[']";
	the programmer warns-again in zero turns from now;

At the time when the programmer warns-again:
	if player is in Sala Programmatori:
		say "Il programmatore con la psioriasi ti tira per la manica della camicia, [']Ha sentito cosa le ho detto? Non può restare qui![']";
		the programmer acts in zero turns from now;
	

At the time when the programmer acts:
	if player is in Sala Programmatori:
		say "[']Lei è un tipo tenace eh?['] tuona il programmatore con la psioriasi, poi alza la cornetta e chiama la sicurezza interna: ";
		carry out the Security busting activity .

At the time when the programmer surprises:
	if player is in Sala Programmatori:
		say "Vedendoti entrare, il programmatore psioriasico sobbalza sulla sedia.[line break][']Di nuovo qui? Ma allora non mi ha capito!['][line break]Il programmatore si avventa sul telefono e chiama la sicurezza interna: ";
		carry out the Security busting activity.

Section B - Irruzione Guardia 

Security busting is an activity.
After Security busting:
	say "[line break][']Sicurezza? Intervenite subito, c[']è un intruso in sala programmazione!['][paragraph break]";
	if Kissed-Guard is true:
		say "Rocco, l[']agente di sorveglianza, entra nella sala e si rivolge al programmatore con la psioriasi:[line break][']Tranquillo Nunzio, questo è un mio amichetto.['] - e, mentre pronuncia [italic type]amichetto[roman type], ti fa l[']occhilino - [']E['] solo venuto a farsi in giro.['][paragraph break]Stupito, il programmatore borbotta:[line break][']Ah, beh ... se è un tuo amico ... beh ... faccia pure come se fosse a casa sua.['][line break]Il programmatore torna al suo computer e Rocco, dopo aver schioccato le labbra nella tua direzione, lascia la stanza sculettando.";
		now the Guard-Settled-Matter is true;
	otherwise:
		say "L[']agente di sorveglianza irrompe nella stanza impugnando lo sfollagente. Dopo la prima manganellata perdi i sensi...";
		end the game in death.

Chapter 6 - Ufficio Direttore

Ufficio della Direzione is up from Pianerottolo. "L[']Ufficio della Direzione è fresco e profumato. In sottofondo puoi udire l[']aria condizionata all[']opera. Una rampa di scale conduce [bold type]GIÙ[roman type] al Pianerottolo."

The Direttore is a man in the Ufficio della Direzione. "Seduto dietro la scrivania c[']è il Direttore impegnato [if Direttore Libero is happening]a studiare della documentazione[else]in una viva conversazione al telefono[end if]."
The Description is "E['] Tristano Ajmone, il direttore della ZenFactor Spa. In questo momento sta conversando al telefono e ti ignora."

Understand "Tristano" and "Ajmone" as direttore.

Section 1 - Mobilio

[	IL TELEFONO E LA SCRIVANIA SONO BACKDROPS
	DEFINITI NELLA RECEPTION	]


the tabulati is a plural-named scenery in the Ufficio della Direzione. The description is "Non riesci a caparci nulla, sembrano listati di codice e appunti tecnici."

understand "documentazione", "fogli", "foglio" and "tabulato" as tabulati.

Instead of taking the tabulati, say "Allunghi la mano verso il tavolo ma il Direttore te la respinge con un sonoro schiaffone."

Section 2 - Lo Sgabello

the sgabello con le rotelle is a supporter in the Ufficio della Direzione. The description is "Carino! E['] uno sgabello ultramoderno, dotato di schienale, braccioli e rotelle per muoversi agilmente. Però ... a guardarlo da vicino non sembra molto robusto, sembra stia cedendo." The indefinite article is "uno".

Instead of taking the sgabello:
	say "Non mi sembra il caso, non sarebbe educato prendersi lo sgabello!"

Understand "siedi su/sulla/sullo/sul [sgabello]" or "siediti su/sulla/sullo/sul [sgabello con le rotelle]" as entering.

Instead of entering the sgabello when player is in Ufficio della Direzione:
	say "Ti siedi con slancio sullo sgabello ma lo schienale cede. Perdi l[']equilibrio, scalci, ti agiti e lo sgabello inizia a correre sulle rotelle, fino alla rampa delle scale ... dove ruzzolate assieme giù, fino alla ...";
	Move player to the Reception;
	remove the sgabello from play;
	chair-falls in zero turns from now.

At the time when chair-falls:
	say "Devastato dalla caduta per le scale ti rialzi e ti stiracchi. Quel che ti è successo ti sta solo bene, così impari ad esaminare gli oggetti prima di lanciarti in grandiose iniziative. Se avessi esaminato lo sgabello avresti visto che era rotto. Sempre esaminare![paragraph break]L[']agente della sorveglianza ti guarda perplesso, poi raccoglie lo sgabello rotto e lo fa sparire di torno."


Section A - Azioni del Giocatore

Instead of doing anything other than examining to the direttore for the first time:
	say "Il Direttore appoggia la mano sinistra sul microfono del telefono e ti sussurra, [']Ma non vede che sono al telefono? Aspetti un attimo.['][line break]In questo posto sembrano tutti impegnatissimi a fare qualcosa..."

Instead of doing anything other than examining or kissing to the direttore:
	say "Il Direttore ti lancia un[']occhiata torva, indica la cornetta del telefono e ti fa cenno di attendere." 

Instead of doing anything other than examining or kissing to the direttore during Direttore Libero:
	say "Il Direttore ti ignora volutamente." 

Instead of kissing the direttore for the first time:
	say "Con slancio felino, ti lanci sul direttore. Dopo una breve collutazione in terra, riesci a baciarlo in bocca, dopodiché ti rialzi e aspetti con ansia la reazione del Direttore.[line break]Questi, rialzatosi, ti sferra un calcio nei testicoli e ti spinge giù dalle scale. Dopo una rovinosa ruzzolata per le scale ti ritrovi nella ...[line break]";
	Move player to the Reception;
	segretaria-freaks in zero turns from now.

Instead of kissing the direttore:
	say "Lascia perdere, ti ha già dimostrato di essere un osso duro. Non approfitterei troppo della sua indulgenza."


At the time when segretaria-freaks:
	say "Allibita dal tuo volo per le scale, la segretaria telefona al Direttore: [']Signor Direttore, riguarda il signor Rossi ... Come? ... Sul serio?! ... Un maniaco sessuale? che mondo! ... Ok ... Arrivederci Direttore.['] Poi ti guarda con disapprovazione e si rimette al lavoro. Tu ti rimetti in piedi, sei un po['] acciaccato.[no line break][if Kissed-Guard is true] Rocco, vedendoti così malconcio, tirà su col naso e lascia scivolare una lacrima lungo la sua guancia pelosa.[end if]"
	

Section B - Scene

The Direttore Libero is a scene.
Direttore Libero begins when player is in the Ufficio della Direzione for the sixth turn.

When Direttore Libero begins:
	now the description of Direttore is "Il Direttore è chino sulla scrivania occupato a leggere dei tabulati e scribacchiare appunti.";
	say "[line break]Dopo aver salutato l[']interlocutore, il Direttore riaggancia il ricevitore e ti stringe energicamente la mano sfoggiando un ampio un sorriso:[line break][']Bene eccomi qui! Mi dica, come posso aiutarla?['][line break][']Buongiorno, vorrei saperne di più sulle avventure testuali.['][line break][']Ottima scelta! Sono un po['] di fretta ma le lascio un opuscolo introduttivo. Attenda un attimo ....['] - fruga nei cassetti della scrivania - [']... che strano, sono finiti!['][paragraph break]Dopo una grattatatina di nuca, il Direttore indica il pianerottolo: [']Guardi, potrà trovare alcune copie dell[']opuscolo in sala programmatori.['] [if Kissed-Guard is true]Il Direttore ha un attimo di esitazione, poi riprende, [']Tra l[']altro, la mia segretaria mi ha informato che lei ha avuto modo di conoscere Rocco della sicurezza interna. Mi congratulo con lei, Rocco è una persona speciale!['] - dopodiché soffoca una risatina prima di proseguire - [else]Poi sbatte le mani e conclude: ['][end if][']Ora devo proprio tornare al lavoro, le scadenze incombono.['][line break]";
	increase score by one.

Section C - Telefonata Direttore

Every turn when the player is in the Ufficio della Direzione and Direttore Libero has not happened:
	say "Il Direttore [one of]scuote la testa,[or]si morde le labbra,[or]fa spallucce,[or]schiocca la lingua,[at random] [one of][']40.000 euro? Beh sì ...['][or]inizia a scaccolarsi il naso ma, ricordandosi della tua presenza, finge subito di grattarsi i baffi.[or][']Facciamo un milione di euro tondi e non se ne parla più ...['][or][']Giuliana? Non non mi pare ...['][or][']Mhh, non saprei ... però...['][or]['].... entro sabato mattina, non oltre!['][or]sembra molto assorbito dalla conversazione telefonica.[in random order]"

Section D - Porge Benvenuto

Report going up from the Pianerottolo when Direttore Libero has not happened:
	direttore-welcomes in zero turns from now;
	continue the action.

At the time when direttore-welcomes:
	say "[line break]Vedendoti arrivare, il Direttore ti comunica a gesti che è occupato al telefono e ti invita ad attendere indicandoti [if sgabello is in the room]lo sgabello[else]il posto dove un tempo stava lo sgabello su cui sei ruzzolato giù per le scale[end if]."

Test x1 with "premi pulsante / nord".
Test X2 with "test x1 / esamina guardia / bacia guardia / x guardia / bacia guardia / su / su / apri porta / nord / x programmatori / x scatolone / apri scatolone / x scatolone / prendi opuscolo".
Test X3 with "test x1 / test x2 / su / x direttore / parla a direttore / x direttore / chiedi a direttore di me / x direttore / x direttore".
Test Y2 with "test x1 / z / z / z / z / z / su / apri porta".
