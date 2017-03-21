*** Settings ***
Library           Selenium2Library

*** Keywords ***
Przycisk Zaloguj Sie
    ${pageObject}    Get Webelement    //div[@class='do_not_print']//a[@class='casmenu']
    [Return]    ${pageObject}

Zakladka Moj USOSWEB
    ${pageObject}    Get Webelement    //table[@id='layout-c12-t']/tbody/tr/td[@class='m']/a[3]
    [Return]    ${pageObject}

Przycisk wyloguj sie
    ${pageObject}    Get Webelement    //div[@class='do_not_print']//a[@class='casmenu'][2]
    [Return]    ${pageObject}
