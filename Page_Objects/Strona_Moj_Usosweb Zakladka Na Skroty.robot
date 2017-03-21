*** Settings ***
Library           Selenium2Library

*** Keywords ***
Zakladka Usos Mail
    ${pageObject}    Get Webelement    //table[@id='layout-t2']//td/div[6]/a
    [Return]    ${pageObject}
