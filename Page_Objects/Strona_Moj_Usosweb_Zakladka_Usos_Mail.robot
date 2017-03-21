*** Settings ***
Library           Selenium2Library

*** Keywords ***
Przycisk Dodaj Odbiorcow
    ${pageObject}    Get Webelement    //tbody/tr[@class='strong']//input[@class='submit chooseRecipients']
    [Return]    ${pageObject}

Pole Temat
    ${pageObject}    Get Webelement    name=subject
    [Return]    ${pageObject}

Pole Tresc
    Select Frame    //iframe[@id='mce_0_ifr']
    ${pageObject}    Get Webelement    //*[@id="tinymce"]
    [Return]    ${pageObject}

Przycisk Wyslij
    ${pageObject}    Get Webelement    //input[@value='wyślij']
    [Return]    ${pageObject}
