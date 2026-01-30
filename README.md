# Szablon pracy dyplomowej

Niniejszy szablon zawiera formaty nagłówków, stronę tytułową, jak i propozycje spisu treści, podpisów pod rysunkami, wzory tabel itp., przeznaczone jako wzór przy formatowaniu pracy dyplomowej.

Projekt wykorzystuje tylko i wyłącznie wolne oprogramowanie i zachęca użytkowników do stosowania go podczas codziennej pracy. Celem projektu jest również zachęcenie odbiorców do stosowania systemu składu `Typst` podczas tworzenia dokumentów, jako alternatywy dla klasycznych edytorów tekstu, które mimo pozornie łatwiejszej obsługi, nie oferują tak dużej prostoty, swobody i jakości sporządzania dokumentów. O ile próg wejścia w `LaTeX` jest dość wysoki, o tyle dotyczy to głównie tworzenia tego typu szablonu, a nie stosowania ich.

**UWAGA** - nie jest to oficjalny szablon pracy dyplomowej. Na stronie [Politechniki Śląskiej](https://www.polsl.pl/) nie są dostępne uniwersalne i jednolite szablony, tym bardziej w formacie `Typst`. Wytyczne odnośnie sporządzania prac dyplomowych ustala [Zarządzenie nr 54/2022](https://lex.polsl.pl/423-lista/d/20505/5/), przy czym są one opisane w formularzu `Z4-PU12`. Formularz ten daje jednak bardzo dużą swobodę w formatowaniu pracy, gdzie to promotor lub prowadzący pracę określa wytyczne do jej przygotowania. Zaproponowany szablon zachowuje najistotniejsze zalecenia wymienione w omawianym dokumencie.

## Struktura katalogów

Szablon złożony jest z następujących katalogów:
* `rozdzialy` – tutaj zaleca się umieszczać kolejne pliki rozdziałów,
* `obrazki` – tutaj zaleca się umieszczanie obrazków i rysunków,
* `dodatki` – tutaj znajdują się streszczenia i bibliografia.

## Pliki w katalogu głównym

W katalogu głównym znajdują się następujące pliki:
* `build.sh` – skrypt stosowany do wygenerowania pliku `PDF`,
* `thesis.typ` – klasa szablonu dokumentu (nie należy edytować),
* `main.typ` – główny plik dokumentu (należy uzupełnić).

## Podstawowe opcje szablonu

W pliku `main.typ` należy uzupełnić dane dotyczące pracy, zgodnie z komentarzami w pliku, a następnie dodać kolejne rozdziały pracy. Poza opcjami wskazanymi bezpośrednio w omawianym pliku, istnieje również możliwość ustawienia opcji:
* `place` – miejsce złożenia pracy, domyślnie `Gliwice`,
* `bibfile` – ścieżka pliku z bibliografią, domyślnie `dodatki/bibliografia.bib`,
* `bibstyle` – styl bibliografii, domyślnie `ieee`,
* `print` – wersja do druku (przesunięty wewnętrzny margines, ułatwiający bindowanie), domyślnie `false`,
* `font-sans` – czcionka bezszeryfowa, domyślnie `Latin Modern Sans`,
* `font-roman` – czcionka szeryfowa, domyślnie `Latin Modern Roman`,
* `font-mono` – czcionka o stałej szerokości, domyślnie `Latin Modern Mono`,
* `font-math` – czcionka stosowana w równaniach, domyślnie `Latin Modern Math`,
* `font-size` – główny rozmiar czcionki, domyślnie `12pt`,

Pliku `thesis.typ` nie zaleca się edytować – można to jednak zrobić, jeśli konieczna jest edycja stylu dokumentu i dostosowanie go do własnych preferencji. W tym celu najeży jednak posiadać pewną wiedzę i wprawę w stosowaniu `Typst`.

## Kompilacja dokumentu

Niniejszy szablon może być stosowany bezpośrednio w serwisie [`typst.app`](https://typst.app). Zaleca się jednak, z uwagi na ochronę własności intelektualnej i zapobieganie analizowaniu dokumentu przez obce podmioty, instalację kompilatora `Typst` na własnym komputerze. Kompilator ten dostępny jest w zasadzie dla każdej dystrybucji systemu operacyjnego z rodziny `GNU/Linux`, `MacOS` oraz `Windows`. Oprogramowanie dostarczane jest zwykle w postaci pojedynczego pliku, a importowane biblioteki są pobierane automatycznie.

Dysponując powłoką zgodną z `bash` istnieje możliwość uruchomienia skryptu `build.sh`, który dokona konwersji obrazów z formatu programu `LibreOffice` do formatu `PDF`, a następnie wygeneruje w folderze projektu plik `main.pdf` z gotowym dokumentem. Kompilator `Typst` uruchomić można również w trybie śledzenia zmian pliku, stosując opcję `watch` zamiast `compile`.

Najłatwiejszą metodą budowy dokumentu, poza stosowaniem skryptu `build.sh`, jest użycie kompilatora `Typst` w trybie śledzenia zmian dokumentu:
```bash
typst watch main.typ
```

## Licencja

Niniejszy szablon dostępny jest na licencji `GNU LGPL v2.1`. Stosowanie, modyfikowanie i rozpowszechnianie niniejszego szablonu jest dozwolone w dowolnym celu, przy czym sam szablon traktowany jest jak zewnętrzna biblioteka.

Plik `polsl_logo.pdf`, który znajduje się w folderze `obrazki`, jest własnością Politechniki Śląskiej, a jego stosowanie regulowane jest przepisami zawartymi w [Księdze Znaku](https://www.polsl.pl/siwps/logo-2/). Plik należy stosować tylko zgodnie z jego licencją i w warunkach, dla których jest to dozwolone.
