#import "thesis.typ"                             // szablon ze stylem

#show: thesis.setup.with(
  topic-pl: "Szablon pracy dyplomowej",          // tytuł pracy (PL)
  topic-en: "Thesis template",                   // tytuł pracy (EN)
  
  abstract-pl: read("dodatki/streszczenie.txt"), // streszczenie (PL)
  abstract-en: read("dodatki/abstract.txt"),     // streszczenie (EN)
  
  keywords-pl: ("słowo 1", "słowo 2"),           // słowa kluczowe (PL)
  keywords-en: ("keyword 1", "keyword 2"),       // słowa kluczowe (EN)
  
  type: "Projekt inżynierski",                   // rodzaj projektu
  promoter: "Promotor pracy",                    // dane promotora
  institute: "Nazwa jednostki",                  // nazwa jednostki
  department: "Nazwa wydziału",                  // nazwa wydziału
  field: "Kierunek studiów",                     // kierunek studiów
  spec: "Specjalność",                           // specjalność
  year: "2026",                                  // rok złożenia
  authors: (                                     // lista autorów:
    (name: "Autor Pierwszy", uuid: 123456),      //  imię i nazwisko
    (name: "Autor Drugi", uuid: 654123),         //  oraz numer albumu
  ),
)

#include "rozdzialy/wstep.typ"                   // rozdział pierwszy
#include "rozdzialy/formatowanie.typ"            // rozdział drugi
#include "rozdzialy/wykresy.typ"                 // rozdział trzeci
#include "rozdzialy/kompilacja.typ"              // rozdział czwarty
#include "rozdzialy/wnioski.typ"                 // rozdział piąty
