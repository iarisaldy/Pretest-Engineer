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
    close browser

Login
    Open bukalapak 
    click Element  xpath=//div[@id='vm__white-header-dweb']/section/header/div[3]/div/div/div[2]/div/a[2]/p
    
    close browser                

# Add to Cart


# Search Product

# ntitled Test Case
#     [Setup]  Run Keywords  Open Browser  https://www.bukalapak.com/  ${BROWSER}
#     ...              AND   Set Selenium Speed  ${SELSPEED}
#     # open    https://www.bukalapak.com/
#     click    xpath=//div[@id='vm__white-header-dweb']/section/header/div[3]/div/div/div[2]/div/a/p
#     click    xpath=//div[@id='vm__white-header-dweb']/section/header/div[3]/div/div/div[2]/div/a[2]/p
#     click    xpath=//div[@id='vm__white-header-dweb']/section/header/div[3]/div/div/div[2]/div/a/p
#     click    xpath=//input[@type='text']
#     type    xpath=//input[@type='text']    082264117557
#     click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Nomor handphone atau email'])[1]/following::span[1]
#     click    xpath=//div[@id='Tfa-1624014299245']/section/div/div[2]/div/div[2]/div/div/div/div/button/span
#     click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Login'])[1]/following::a[1]
#     click    id=user_session_username
#     type    id=user_session_username    082264117557
#     click    id=user_session_password
#     type    id=user_session_password    Arisaldi1
#     click    name=commit
#     click    link=Kirim ulang email aktivasi
#     click    link=daftar
#     click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Daftar'])[1]/preceding::div[3]
#     type    xpath=//input[@type='text']    082264117557
#     click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Nomor handphone atau email'])[1]/following::button[1]
#     click    xpath=//div[@id='Tfa-1624014392331']/section/div/div[2]/div/div[2]/div/div/div/div/button/span
#     click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Login'])[1]/following::span[1]
#     click    link=Kirim ulang email aktivasi
#     click    link=login
#     click    id=user_session_username
#     type    id=user_session_username    082264117557
#     click    id=user_session_password
#     click    name=commit
#     click    link=Daftar di sini
#     click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Facebook'])[1]/following::span[2]
#     selectWindow    win_ser_1
#     click    xpath=//div[@id='view_container']/div/div/div[2]/div/div/div/form/span/section/div/div/div/div/ul/li[2]/div
#     close    win_ser_1
#     selectWindow    win_ser_local
#     click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Login'])[1]/following::a[1]
#     click    link=Kirim ulang email aktivasi
#     click    name=resend_email
#     type    name=resend_email    iar
#     click    name=resend_email
#     type    name=resend_email
#     [Teardown]  Close Browser

# Load Homepage klik logo Youtobe Music
#     Open Youtube Music  
#     Click Element  xpath=//div[@id='left-content']/a/picture/img
#     close browser

# Load Homepage klik Menu Home
#     Open Youtube Music  
#     Click Element  xpath=//ytmusic-app-layout[@id='layout']/ytmusic-nav-bar/div[2]/ytmusic-pivot-bar-renderer/ytmusic-pivot-bar-item-renderer/yt-formatted-string
#     close browser 

# Load Halaman Explore klik Menu Explore
#     Open Youtube Music  
#     Click Element  xpath=//ytmusic-app-layout[@id='layout']/ytmusic-nav-bar/div[2]/ytmusic-pivot-bar-renderer/ytmusic-pivot-bar-item-renderer[2]/yt-formatted-string
#     close browser 

# Load Halaman Library klik Menu Library
#     Open Youtube Music 
#     Click Element  xpath=//ytmusic-app-layout[@id='layout']/ytmusic-nav-bar/div[2]/ytmusic-pivot-bar-renderer/ytmusic-pivot-bar-item-renderer[3]/yt-formatted-string
#     close browser

# klik Menu search
#     Open Youtube Music 
#     Click Element  xpath=//ytmusic-app-layout[@id='layout']/ytmusic-nav-bar/div[2]/ytmusic-pivot-bar-renderer/ytmusic-pivot-bar-item-renderer[3]/yt-formatted-string
#     close browser

# Load Halaman Detail Music
#     Open Youtube Music 
#     Click Element  link=One Only
#     close browser 

# Load Halaman Detail Artis
#     Open Youtube Music 
#     Click Element  link=Pamungkas
#     close browser 

# Load Halaman Detail Album
#     Open Youtube Music 
#     Click Element  link=Walk The Talk
#     close browser 

# klik Like
#     Open Youtube Music 
#     Click Element  xpath=(//tp-yt-iron-icon[@id='icon'])[6]

# klik Dislike
#     Open Youtube Music 
#     Click Element  xpath=(//tp-yt-iron-icon[@id='icon'])[5]
#     close browser

