*** Settings ***
Library           Selenium2Library
Resource          ../Page_Objects/Okno_Wybor_Odbiorcow.robot

*** Keywords ***
Wprowadz Nazwe Odbiorcy w polu Dodaj Osobe
    [Arguments]    ${nazwaOsoby}
    ${dodajOsobe}    Pole Dodaj Osobe
    Input Text    ${dodajOsobe}    ${nazwaOsoby}

Wybierz z listy podana osobe
    [Arguments]    ${nazwaOsoby}
    ${wybranaOsoba}    Wybrana Osoba    ${nazwaOsoby}
    Click Element    ${wybranaOsoba}

Wcisnij przycisk Zapisz i Zamknij
    ${przyciskZapiszIZamknij}    Przycisk Zapisz i Zamknij
    Click Element    ${przyciskZapiszIZamknij}
