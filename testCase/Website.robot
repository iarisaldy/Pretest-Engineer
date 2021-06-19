*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}           chrome
${url}        https://www.bukalapak.com/ 

***Keywords***
Open bukalapak
    open browser    ${url}    ${browser}
    maximize browser window

*** Test Cases ***
Register
    Open bukalapak
    click Element  xpath=//div[@id='vm__white-header-dweb']/section/header/div[3]/div/div/div[2]/div/a/p
    click Element  xpath=(.//*[normalize-space(text()) and normalize-space(.)='Daftar'])[1]/preceding::div[3]
    input text    xpath=//input[@type='text']    iarisaldy@gmail.com
    click Element  xpath=(.//*[normalize-space(text()) and normalize-space(.)='Nomor handphone atau email'])[1]/following::span[1]               
    close browser

Login
    Open bukalapak 
    click Element  xpath=//div[@id='vm__white-header-dweb']/section/header/div[3]/div/div/div[2]/div/a[2]/p
    click Element   id=user_session_username
    input text      id=user_session_username    iarisaldy@gmail.com
    click Element   id=user_session_password
    input text      id=user_session_password    Arisaldi1
    click Element    name=commit
    close browser                

# Add to Cart


# Search Product

