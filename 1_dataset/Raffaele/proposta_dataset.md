#PROPOSTA DATASET

## IDEA

Dovendo lavorare su dati inerenti la nostra facoltà sarebbe interessante capire e riuscire a visualizzare i **consumi** che derivano dalle attività svolte all’interno di essa. Come consumi si intendono le quantità di **risorse** acquisite e poi utilizzate dagli studenti e da chi occupa la facoltà in generale.
In particolare potremmo concentrare la nostra attenzione sulle quantità di materiali utilizzati in laboratorio (legno, forex, PMMA, gomma, ecc.) e di carta, sui consumi di energia elettrica e di acqua e sui rifiuti prodotti, divisi tramite la raccolta differenziata.


![Alt Text](http://i.imgur.com/LbtxYL9.png)


Abbiamo 3 categorie di risorse che possiamo analizzare: le Entrate (materiale da laboratorio e carta per stampanti), le Uscite (stampe e rifiuti) e una categoria Intermedia che comprende i consumi di energia elettrica e acqua.

##ACQUISIZIONE DATI

Per la raccolta di questi dati sarebbe necessaria la collaborazione del personale dell’università che dovrebbe registrare alcuni dati come ad esempio i consumi di energia elettrica e acqua in base alle bollette periodiche; altrimenti sarebbe più efficace riuscire a registrare le letture dei contatori. Anche gli ordini dei materiali messi a disposizione degli studenti dovrebbero essere registrati considerando le quantità acquistate. Per quanto riguarda la parte delle Uscite rappresentata dalle stampe effettuate in facoltà la società esterna che si occupa della manutenzione delle stampanti potrebbe controllare la quantità di stampe e aggiornare i dati periodicamente anche in maniera automatica; un’alternativa sarebbe, se possibile, quella di collegarsi ai lettori delle schede che permettono di stampare e contare così il numero delle stampe.
Visto che la spesa per i rifiuti è integrata nella bolletta dell’energia elettrica, in questo caso sarebbe possibile utilizzare degli strumenti aggiuntivi; ad esempio si potrebbero inserire dei sensori all’interno dei bidoni e dei cestini per avere un controllo preciso sulle quantità di rifiuti prodotti. Un’altra alternativa sarebbe quella di predisporre un semplice sistema di pesatura dei sacchi di rifiuti accumulati; in questo modo avremmo la possibilità di quantificare l’output in maniera più semplice, senza utilizzare un numero eccessivo di elementi elettronici “intelligenti”, anche se pure in questo caso sarebbe necessaria la collaborazione del personale che si occupa della loro raccolta.

##TIPOLOGIA DATI

Una volta raccolti i dati avranno le seguenti caratteristiche:


![Alt Text](http://i.imgur.com/iZBLFCO.png)


I dati quindi, per essere uniformi, si presenteranno così:

Struttura:   fase - inizio periodo - fine periodo - tipologia - quantità - unitàdimisura

*Esempio:   input - 02/25/2015 - 04/25/2015 - legno - 20 - kg*



##UTILIZZO DATI

I dati raccolti andranno ad esprimere, tramite la loro visualizzazione, gli input e gli output della sede universitaria indicando quindi come le risorse vengono impiegate e quanto viene trasformato in rifiuti. Il dataset utilizzato potrebbe evidenziare il cambiamento dei consumi all'interno della facoltà con il passare degli anni, tenendo così uno storico che metta in luce come sono cambiati, oppure no, i nostri comportamenti, considerando anche che la sostenibilità è un tema ampiamente affrontato durante i corsi svolti. Avendo una visione generale si potrebbero confrontare i dati riferiti a diversi periodi dell'anno accademico, o a diversi annio ed evidenziarne le differenze; un esempio può essere la quantità delle stampe durante il periodo degli appelli d'esame in cui avremo una maggior valore rispetto al resto dell'anno. Sempre rimanendo su una visione più "estesa" si potrebbero rendere evidenti i consumi eccessivi e paragonarli con un livello di sostenibilità da stabilire; questo per rendere gli studenti consapevoli dei loro comportamenti.
Avendo dei dati non in tempo reale la loro visualizzazione sarebbe piuttosto statica e non cambierebbe molto spesso ma si possono ipotizzare delle interazioni che propongano dei confronti significativi tra i vari dati e il loro sviluppo nel tempo.
Avendo invece dati con un cambiamento continuo o più frequente, con i metodi ipotizzati in precedenza, essi consentirebbero una visualizzazione che si cambi in maniera autonoma e si avrebbero dei risultati più precisi da visualizzare in ogni momento senza dover attendere un aggiornamento periodico stabilito nel tempo.
Alla fine quindi avremo un dataset che ci parlerà di come i nostri comportamenti o le nostre abitudini sono cambiate con il passare degli anni; inoltre si potrà verificare l'efficienza della struttura universitaria e di chi sfrutta le sue risorse ogni giorno.

##ESEMPI/REFERENZE
