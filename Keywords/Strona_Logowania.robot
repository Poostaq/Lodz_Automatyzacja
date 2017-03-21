*** Settings ***
Library           Selenium2Library
Resource          ../Page_Objects/Strona_Logowania.robot

*** Keywords ***
Wprowadz Haslo i Login
    [Arguments]    ${login}    ${password}
    ${loginEditbox}    Pole Edycji Loginu
    ${passwordEditbox}    Pole Edycji Hasla
    Input Text    ${loginEditbox}    ${login}
    Input Text    ${passwordEditbox}    ${password}

Wcisnij przycisk zaloguj Strona Logowania
    ${loginButton}    Przycisk Zaloguj
    Click Element    ${loginButton}
