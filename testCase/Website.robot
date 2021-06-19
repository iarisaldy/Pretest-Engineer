*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://www.bukalapak.com/
${email}        iarisaldy@gmail.com
${Password}     Arisaldi1
${User}         Irfan arisaldy
${Username}     xpath=//*[@id="vm__white-header-dweb"]/section/header/div[3]/div/div/div[2]/div/span[6]/div/div[2]/div/div/div/div/ul[1]/li/div/div/div[2]/p/a
${Cari}         sepeda
${Pencarian}    xpath=/html/body/div[2]/div/section/div/div/h1/b 


***Keywords***
Open bukalapak
    open browser    ${url}    ${browser}
    maximize browser window

User Login
    click Element  xpath=//div[@id='vm__white-header-dweb']/section/header/div[3]/div/div/div[2]/div/a[2]/p
    wait until element is visible   id=user_session_username      timeout=60
    click Element   id=user_session_username
    input text      id=user_session_username    ${email}
    click Element   id=user_session_password
    input text      id=user_session_password    ${Password}
    click Element    name=commit

is equal 
    [Arguments]     ${a}    ${b}
    Should be equal     ${a}    ${b}    Custom error    values=True

Validate login by user name
    wait until element is visible   ${Username}      timeout=60
    ${result nama user}      get text    ${Username}
    is equal    ${User}   ${result nama user}

Validate pencarian
    wait until element is visible   ${Pencarian}      timeout=60
    ${result pencarian}    get text    ${Pencarian}
    is equal    “${Cari}”   ${result pencarian}

*** Test Cases ***
Register
    Open bukalapak
    click Element  xpath=//div[@id='vm__white-header-dweb']/section/header/div[3]/div/div/div[2]/div/a/p
    input text     xpath=//input[@type='text']    ${email}
    click Element  xpath=(.//*[normalize-space(text()) and normalize-space(.)='Nomor handphone atau email'])[1]/following::span[1]
    capture page screenshot               
    close browser

Login
    Open bukalapak 
    User Login
    wait until element is visible   xpath=//*[@id="vm__white-header-dweb"]/section/header/div[3]/div/div/div[2]/div/span[6]/div/div/a/div/div      timeout=60
    click Element  xpath=//*[@id="vm__white-header-dweb"]/section/header/div[3]/div/div/div[2]/div/span[6]/div/div/a/div/div
    capture page screenshot
    Validate login by user name
    close browser                

Add to Cart
    Open bukalapak
    User Login
    wait until element is visible   id=v-omnisearch__input      timeout=60
    click Element   id=v-omnisearch__input
    input text      id=v-omnisearch__input    ${Cari}
    click Element   xpath=(.//*[normalize-space(text()) and normalize-space(.)='Lihat BukaMall'])[1]/following::*[name()='svg'][3]
    mouse over      xpath=//section[@id='product-explorer-container']/div/div/div[2]/div/div[2]/div[3]/div/div/div/div/div[2]
    click Element   xpath=//section[@id='product-explorer-container']/div/div/div[2]/div/div[2]/div[3]/div/div/div/div/div[3]/div/button/span/div
    sleep    5s
    capture page screenshot
    close browser 

Search Product
    Open bukalapak
    wait until element is visible   id=v-omnisearch__input     timeout=60
    click Element   id=v-omnisearch__input
    input text      id=v-omnisearch__input    ${Cari}
    click Element   xpath=(.//*[normalize-space(text()) and normalize-space(.)='Lihat BukaMall'])[1]/following::*[name()='svg'][3]
    capture page screenshot
    Validate pencarian
    close browser 