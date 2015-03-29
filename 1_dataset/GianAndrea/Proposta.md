# METADATA JUICE



#### CONCEPT 
Il progetto è pensato sulla base dei dati digitali della rete universitaria. 



-



#### FUNZIONAMENTO

Un ***server*** elabora e programma delle informazioni digitali, in un insieme organizzato di dati. 
Esso non è altro che un ***database*** fisico nel quale, le informazioni in esso registrate (***record***), venogno strutturate e collegate tra loro, secondo un particolare modello logico di tipo relazionale, gerarchico, reticolare o a oggetti. 
Queste operazioni vengono gestite attraverso un ***DBMS - Database Management System***, ovvero un software informatico di controllo e manipolazione dei dati server. Nel nostro caso si parla di ***server di rete***, ovvero un sistema che fornisce un servizio di controllo di trasmissione e ricezione dati tra diversi dispositivi. 

Il software che gestisce la rete è [PaloaltoNetworks] (https://www.paloaltonetworks.com/), e sulla base del traffico informatico, può registrare il flusso dei dati in tempo reale, il numero di accessi, il tempo di connessione degli utenti, chi sono, i dati scambiati, le attività svolte, quali siti vengono navigati, minacce, ecc. 

Tramite il servizio di DBMS, si possono estrapolare dati dal server, grazie ad un linguaggio di interrogazione (***DQL - Data Query Language***), cioè un tipo di sintassi che estrae dal database il tipo di informazione richiesta. Il linguaggio viene utilizzato dal software per appunto creare delle ***query***, in modo da ottenere i "*record*" da analizzare. 
Il tipo di linguaggio usato è il *SQL - Structured Query Language*, un codice standardizzato per database basati sul modello relazionale della rappresentazione o strutturazione dei dati. 

Dal sistema predefinito si possono creare dei report predefiniti, personalizzati da zero, o modificandone uno predefinito. Quest'ultimi possono essere esportati in ***CSV - Comma-Separated Values***, ***XML - eXtensible Markup Language***, PDF, inviati via email in base a una pianificazione, o integrati ad una repository utente, attraverso delle ***API - Application Programming Interface*** descritte in questa [***guida***] (https://www.paloaltonetworks.com/content/dam/paloaltonetworks-com/en_US/assets/pdf/technical-documentation/pan-os-61/XML-API-6.1.pdf) o [***link***] (https://www.paloaltonetworks.it/documentation/wildfire/wf_admin/section_4/chapter_4.html).

I record possono essere elaborati successivamente da Processing, per creare una propria personale rappresentazione dei dati registrati.

**ISPIRAZIONI**

[4010 Facebook Tree] (http://www.onformative.com/work/4010-facebook-tree/)
[Type/Dynamics] (http://lust.nl/#projects-5525)



-



#### FONTI DEI DATI
Utilizzo del server. Estrapolazione di dati tramite dei report



-



#### DATI SERVER
Domain,Receive Time,Serial #,Type,Threat/Content Type,Config Version,Generate Time,Source address,Destination address,NAT Source IP,NAT Destination IP,Rule,Source User,Destination User,Application,Virtual System,Source Zone,Destination Zone,Inbound Interface,Outbound Interface,Log Action,Time Logged,Session ID,Repeat Count,Source Port,Destination Port,NAT Source Port,NAT Destination Port,Flags,IP Protocol,Action,Bytes,Bytes Sent,Bytes Received,Packets,Start Time,Elapsed Time (sec),Category,Padding,seqno,actionflags,Source Country,Destination Country,cpadding,pkts_sent,pkts_received
