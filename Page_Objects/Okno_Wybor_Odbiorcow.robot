*** Settings ***
Library           Selenium2Library

*** Keywords ***
Pole Dodaj Osobe
    Wait Until Page Contains Element    //textarea[@class='width-100 usosmail-input']
    ${pageObject}    Get Webelement    //textarea[@class='width-100 usosmail-input']
    [Return]    ${pageObject}

Wybrana Osoba
    [Arguments]    ${nazwaOsoby}
    Wait Until Element Is Visible    //div[@class='text-dropdown text-position-below']//*[contains(text(), '${nazwaOsoby}')]
    ${pageObject}    Get Webelement    //div[@class='text-dropdown text-position-below']//*[contains(text(), '${nazwaOsoby}')]
    [Return]    ${pageObject}

Przycisk Zapisz i Zamknij
    ${pageObject}    Get Webelement    //div[@class='ui-dialog-buttonset']//span[@class='ui-button-text']
    [Return]    ${pageObject}
