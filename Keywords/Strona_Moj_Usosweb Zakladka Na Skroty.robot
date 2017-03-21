*** Settings ***
Library           Selenium2Library
Resource          ../Page_Objects/Strona_Moj_Usosweb Zakladka Na Skroty.robot

*** Keywords ***
Przejdz na zakladke Usos Mail
    ${usosMail}    Zakladka Usos Mail
    Click Element    ${usosMail}
