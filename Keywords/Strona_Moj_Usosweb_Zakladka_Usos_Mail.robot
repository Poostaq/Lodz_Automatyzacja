*** Settings ***
Library           Selenium2Library
Resource          ../Page_Objects/Strona_Moj_Usosweb_Zakladka_Usos_Mail.robot
Resource          ../Page_Objects/Okno_Wybor_Odbiorcow.robot

*** Keywords ***
Wcisnij przycisk Dodaj Odbiorcow
    ${dodajOdbiorcow}    Przycisk Dodaj Odbiorcow
    Click Element    ${dodajOdbiorcow}

Wpisz temat Wiadomosci
    [Arguments]    ${temat}
    ${poleTemat}    Pole Temat
    Input Text    ${poleTemat}    Blabla

Wpisz tresc Wiadomosci
    [Arguments]    ${tresc}
    ${poleTresc}    Pole Tresc
    Wait Until Element Is Enabled    ${poleTresc}
    Input Text    ${poleTresc}    ${tresc}
    Select Window

Wcisnij przycisk Wyslij
    ${przyciskWyslij}    Przycisk Wyslij
    Click Element    ${przyciskWyslij}
