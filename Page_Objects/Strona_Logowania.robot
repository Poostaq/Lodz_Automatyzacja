*** Settings ***
Library           Selenium2Library

*** Keywords ***
Pole Edycji Loginu
    ${pageObject}    Get Webelement    //input[@id='username']
    [Return]    ${pageObject}

Pole Edycji Hasla
    ${pageObject}    Get Webelement    //input[@id='password']
    [Return]    ${pageObject}

Przycisk Zaloguj
    ${pageObject}    Get Webelement    //div[@id='login']//input[@name='submit']
    [Return]    ${pageObject}
