*** Settings ***
Library           Selenium2Library
Resource          ../Page_Objects/Common.robot

*** Keywords ***
Otworz przegladarke na stronie
    [Arguments]    ${URL}    ${BROWSER}
    Open Browser    ${URL}    ${BROWSER}

Wcisnij przycisk zaloguj Strona Glowna
    ${loginButton}    Przycisk Zaloguj Sie
    Click Element    ${loginButton}

Przejdz na zakladke MOJ USOSWEB
    ${zakladkaMojusosweb}    Zakladka Moj USOSWEB
    Click Element    ${zakladkaMojusosweb}

Wcisnij przycisk wyloguj Strona Glowna
    ${logoutButton}    Przycisk wyloguj sie
    Click Element    ${logoutButton}
