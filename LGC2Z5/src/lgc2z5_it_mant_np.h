! lgc2z5_it.h
!
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
! Non sono usate le librerie standard inform. E' richiesto solo il compilatore
! inform v. 6.30 o superiore.
! Il file di gioco deve iniziare con la stringa
!
! #include "cyoa_it";
!
! Gli oggetti che compongono l'avventura possono essere di due tipi: nodi (di
! classe Node) e opzioni (di classe Option). I nodi sono le situazioni di
! gioco e hanno il seguente formato
!
! Node <nomenodo> "Descrizione breve del nodo"
!    with text <descrizionelunga>;
!
! dove <descrizionelunga> puo' essere una stringa o una routine.
!
! Le opzioni rappresentano le scelte possibili in un dato nodo, devono essere 
! figli di tale nodo e possono avere uno tra i due seguenti formati:
!
! Option [nomeopzione] "Descrizione dell'opzione"
!    with goto <prossimonodo>;
!
! Option [nomeopzione] "Descrizione dell'opzione"
!    with action azionedafare;
!
! dove [nomeopzione] e' il nome (facoltativo) dell'opzione, <prossimonodo> e'  
! il nodo raggiunto con tale opzione, e <azionedafare> e' una stringa o una 
! routine che viene stampata o eseguita se l'opzione viene scelta.
!
! La routine moveto(<nuovonodo>) fa diventare <nuovonodo> situazione attiva.
! Il gioco inizia con la routine (definita dall'autore) Init, che deve per lo
! meno contenere l'istruzione
!
! moveto(<primonodo>);
!
! La libreria gestisce salvataggi, ripristini e interruzioni di gioco con i tasti
! S, R e Q.
! La libreria non funziona sotto glulx.
! Vedere il file cyoatest.inf per esempio.
!
! ------------------------------------------

Attribute general; !--- Usabile liberamente dall'autore del gioco

Global stat=0; !--- Il nodo attuale

Global nopt=0; !--- Numero di opzioni
Array opt --> 9; !--- Array delle opzioni

!--- La classe per i nodi
Class Node
  with text "",
  ndo [x i k;
      !--- Stampa il nome e il testo del nodo
      style reverse;
      print "   ", (name) self, "   ";
      style roman;
      print "^";
      self.text();
      !--- Legge tutte le opzioni figlie del nodo (max 9) e le memorizza in opt
      nopt=0;
      objectloop (x in self) {
          if (x ofclass Option && nopt<9) {
              opt-->nopt=x;
              nopt++;
          }
      }
      !--- Nessuna opzione: fine, esci
      if (nopt<=0) { stat=0; rfalse; }
      !--- Stampa la lista delle opzioni
      print "^A te la scelta avventuriero:^";
      for (i=0: i<nopt: i++) print i+1, ". ", (name) opt-->i, "^";
	    !--- Aspetta che il giocatore prema il numero di un'opzione, valore in k
      print ">>> ";
      while(true) {
          k=getchar();
          if (k == 83 or 82 or 81) break;
          if (k == 115 or 114 or 113) { k=k-32; break; }
          if (k > 48 && k <= (48+nopt)) { k=k-48; break; }
      }
      if (k == 83) { save rsdest; rtrue; }
      if (k == 82) { restore rsdest; rtrue; }
      if (k == 81) quit;
      print k, "^^";
      !--- esegui la proprieta' odo dell'opzione scelta
      k=k-1;
      x=opt-->k;
      x.odo();
.rsdest;
      rtrue;
  ];

Class Option
  with odo [;
      !--- esegui la proprieta' action, se esiste
      if (self provides action) { self.action(); ""; }
      !--- altrimenti il nuovo nodo e' il valore della proprieta' goto
      if (self provides goto) stat=self.goto();
  ];

!--- Oggetto falso, solo per evitare il warning
Object xdummy
   has general;

!--- La procedura main, da cui inizia tutto
[ main;
    Init();
    !--- Finche' stat e' un nodo, esegui la sua proprieta' ndo
    while (stat ofclass Node) {
        stat.ndo();
    }
];

!--- moveto(x) sposta il giocatore nel nodo x
[ moveto x;
    stat=x;
];

!--- getchar() aspetta la pressione di un tasto e restituisce il valore
[ getchar k; @read_char 1 -> k; return k; ];
