# METADATA JUICE
![] (https://m1.behance.net/rendition/modules/298984/disp/591421215868393.jpg)


#### CONCEPT 
Lo scopo del progetto è quello di utilizzare i dati Il progetto è pensato sulla base dei dati digitali della rete universitaria. 

Parlando di dati e in questo caso di codificazioni, è interessante questa riflessione su come, il valore espressivo di una semplice lettera, può rappresentare in sé nuove interpretazioni, linguaggi, narrazioni diverse di un contenuto più ampio (dateset).  Il progetto che parla di questo argomento è [Type/Dynamics] (http://lust.nl/#projects-5525).

>Nowadays attention is paid more to the design of rules, or creating the framework in which something can happen. In a database for instance, content does not have an innate form, but rather receives form at the moment it is shown via the interface. In fact, the same information can be represented in an endless number of ways. The interface allows for content to be shown as data, as information, or as knowledge; ultimately content appears as loose data without a context, as data in a context, or as interpreted information. This data can even change per week, day, or minute. [ ] In a time when data can be accessed and can manifest itself in all kinds of ways, typography should no longer represent just formal aspects of information. Instead typography can itself be the carrier of content. A letter is the smallest content entity, but even this letter can contain the whole dataset for the content it represents.



-



#### FUNZIONAMENTO

Un ***server*** elabora e programma delle informazioni digitali, in un insieme organizzato di dati. 
Esso non è altro che un ***database*** fisico nel quale, le informazioni in esso registrate (***record***), venogno strutturate e collegate tra loro, secondo un particolare modello logico di tipo relazionale, gerarchico, reticolare o a oggetti. 
Queste operazioni vengono gestite attraverso un ***DBMS - Database Management System***, ovvero un software informatico di controllo e manipolazione dei dati server. Nel nostro caso si parla di ***server di rete***, ovvero un sistema che fornisce un servizio di controllo di trasmissione e ricezione dati tra diversi dispositivi. 

Il software che gestisce la rete è [PaloaltoNetworks] (https://www.paloaltonetworks.com/), e sulla base del traffico informatico, può registrare il flusso dei dati in tempo reale, il numero di accessi, il tempo di connessione degli utenti, chi sono, i dati scambiati, le attività svolte, quali siti vengono navigati, minacce, ecc. 

Tramite il servizio di DBMS, si possono estrapolare dati dal server, grazie ad un linguaggio di interrogazione (***DQL - Data Query Language***), cioè un tipo di sintassi che estrae dal database il tipo di informazione richiesta. Il linguaggio viene utilizzato dal software per appunto creare delle ***query***, in modo da ottenere i "*record*" da analizzare. 
Il tipo di linguaggio usato è il *SQL - Structured Query Language*, un codice standardizzato per database basati sul modello relazionale della rappresentazione o strutturazione dei dati. 

Dal sistema predefinito si possono creare dei report predefiniti, personalizzati da zero, o modificandone uno predefinito. Quest'ultimi possono essere esportati in registri ***CSV - Comma-Separated Values***, ***XML - eXtensible Markup Language***, PDF, inviati via email in base a una pianificazione, o integrati ad una repository utente, attraverso delle ***API - Application Programming Interface*** descritte in questa [***guida***] (https://www.paloaltonetworks.com/content/dam/paloaltonetworks-com/en_US/assets/pdf/technical-documentation/pan-os-61/XML-API-6.1.pdf) o [***link***] (https://www.paloaltonetworks.it/documentation/wildfire/wf_admin/section_4/chapter_4.html).

Una volta ottenuti i registri, successivamente possono essere elaborati da noi stessi, per dare un nostro preciso significato ed una propria personale interpretazione. Utilizzando un programma di elaborazione dati, si possono dunque richiamare questi datalog attraverso una precisa terminologia del software, in modo da ricreare la rappresentazione progettata. L'interrogazione del server e l'estrapolazione delle relative informazioni, segue le regole dell'algoritmo da noi scritto.

**ISPIRAZIONI**

[4010 Facebook Tree] (http://www.onformative.com/work/4010-facebook-tree/)

[Type/Dynamics] (http://lust.nl/#projects-5525)

[Matrix] (http://it.wikipedia.org/wiki/Matrix)


-



#### FONTI DEI DATI
Utilizzo del server. Estrapolazione di dati tramite dei report



-



#### DATI SERVER
Domain,Receive Time,Serial #,Type,Threat/Content Type,Config Version,Generate Time,Source address,Destination address,NAT Source IP,NAT Destination IP,Rule,Source User,Destination User,Application,Virtual System,Source Zone,Destination Zone,Inbound Interface,Outbound Interface,Log Action,Time Logged,Session ID,Repeat Count,Source Port,Destination Port,NAT Source Port,NAT Destination Port,Flags,IP Protocol,Action,Bytes,Bytes Sent,Bytes Received,Packets,Start Time,Elapsed Time (sec),Category,Padding,seqno,actionflags,Source Country,Destination Country,cpadding,pkts_sent,pkts_received

[Cartella Dati] (https://www.copy.com/s/su4Cu0lLhJIXjwh1/Nuova%20cartella) 
