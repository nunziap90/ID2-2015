## DATASET

Il brief che ci è stato indicato richiede come base di partenza un Dataset relativo alla Facoltà di Design dell'Università della Repubblica di San Marino (a noi decidere se si tratti di contenuti, studenti, output, etc).

Ho voluto prendere in considerazione dati che immagino in continuo mutamento, vivaci, molto diversi fra loro anche nell'arco di una singola giornata: il rumore ed il calore. Mi affascinano in quanto li considero valori strettamente legati alla quotidianità della vita universitaria nella sua sede, l'antico monastero Santa Chiara. Penso che potrebbero trovare una traduzione valida sottoforma di installazione e che sarebbero anche capaci di significati paralleli.

## Luoghi

Primissimo step, la creazione di un elenco degli spazi dove andare ad effettuare il prelievo dei dati. Ho già attuato qui una scrematura rispetto ai luoghi che secondo me "fanno" l'Università, andando a escludere tutti gli spazi interni alla sede che però non sono abitualmente frequentati da studenti o docenti.

Aule | Laboratori | Sale Docenti | Condivisi | Cellette
---------- | ----------- | ----------- | ----------- | -----------
A | Modelli | Direzione | Portineria | Celletta 1 
B | Informatica | Segreteria | Riviste | Celletta 2
D | Fotografia | Ricerca | Stampanti | Celletta 3
E |    |   | Plotter | Celletta 4
F |   |   | Distributori 1 | Celletta 5
G |   |   | Distributori 2 |  
  |   |   | Prato |  
  |   |   | Ponte fumatori | 

## Rumore

#####Strumento

Possiamo prelevare il rumore tramite _sensori di rilevamento del suono_. 

Il _segnale in ingresso_ (il suono) è una vibrazione che si propaga nell'aria formando aree a pressione variabile (onde sonore). Trattasi quindi di un _valore analogico_. 

Il _microfono_ (o trasduttore) è quello strumento che percepisce l'intensità delle variazioni di pressione, proprio come fa parte del nostro orecchio, per tradurle però in un _valore digitale_. 

I sensori di rilevamento del suono, per rendere "udibile" agli strumenti del caso il segnale in input, necessitano solitamente di un _amplificatore_, che può esser integrato o meno.

![syncview](http://i.imgur.com/OIBm5vt.jpg?1)
![photoshopmaster](http://i.imgur.com/GuZEYaE.jpg?1)

Il sensore presentato in foto permette la regolazione della sensibilità tramite un potenziometro (direttamente sul circuito) ed è dotato di due uscite AO (_uscita analogica, uscita in tempo reale del segnale di tensione del microfono_) e DO (per la gestione in digitale delle soglie) - credo. Ha dimensioni molto ridotte (43 x 16 x 14 mm) ed è molto economico (meno di 5 euro).

#####Ricerca significato

![rumore](http://i.imgur.com/eeZg84x.jpg?1)

![assenza](http://i.imgur.com/NsYxpl4.jpg?1)

#####References

Progetti

http://www.claudiaciarpella.com/portfolio/hover/

http://hackaday.com/2010/06/25/yukikaze-music-visualizations/

https://www.youtube.com/watch?v=jJfpL5QkixU

Esempi livello base (interafacciare mic&scheda Arduino)

http://scuola.arduino.cc/lesson/zzoknZl/Audio_Input

http://luca-petrosino.blogspot.it/2011/06/arduino-leggere-i-valori-dal-microfono.html

https://chiaraartini.wordpress.com/category/progetto/

http://www.danielealberti.it/2013/07/arduino-leggere-il-valore-da-un.html

Sensore

http://it.wikipedia.org/wiki/Microfono

http://www.instructables.com/id/Sound-Pressure-sensor-for-Arduino-based-on-ZX-soun/

http://www.giga-mobile.com/it/electronic-diy-single-chip-microcomputer/30459-keyes-microphone-sound-detection-sensor-module-for-arduino---red.html

## Calore
