*** Settings ***
Test Teardown
Library           Selenium2Library
Resource          ../Keywords/Common.robot
Resource          ../Config.robot
Resource          ../Keywords/Strona_Logowania.robot
Resource          ../Keywords/Strona_Moj_Usosweb Zakladka Na Skroty.robot
Resource          ../Keywords/Strona_Moj_Usosweb_Zakladka_Usos_Mail.robot
Resource          ../Keywords/Okno_Wybor_Odbiorcow.robot

*** Variables ***
${imieNazwiskoProfesora}    ${EMPTY}
${nazwiskoProfesora}    ${EMPTY}

*** Test Cases ***
Wyslanie_maila_do_profesora
    Otworz przegladarke na stronie    https://www.usosweb.uni.lodz.pl/    ${BROWSER}
    Wcisnij przycisk zaloguj Strona Glowna
    Wprowadz Haslo i Login    ${login}    ${password}
    Wcisnij przycisk zaloguj Strona Logowania
    Przejdz na zakladke MOJ USOSWEB
    Przejdz na zakladke Usos Mail
    Wpisz temat Wiadomosci    Blabla
    Wpisz tresc Wiadomosci    Drogi panie Profesorze \n Niestety nie będzie mnie na Wykładzie ponieważ mam kaca-giganta. \n Pozdrawiam Grzegorz Holak \n WIADOMOSC TESTOWA
    Wcisnij przycisk Dodaj Odbiorcow
    Wprowadz Nazwe Odbiorcy w polu Dodaj Osobe    ${imieNazwiskoProfesora}
    Wybierz z listy podana osobe    ${nazwiskoProfesora}
    Wcisnij przycisk Zapisz i Zamknij
    Sleep    2
    Wcisnij przycisk Wyslij
    Wcisnij przycisk wyloguj Strona Glowna
