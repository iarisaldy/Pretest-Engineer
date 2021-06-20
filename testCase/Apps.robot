*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
Open Application
    Open Application     http://localhost:4723/wd/hub	platformName=Android    platformVersion=8.1.0	    deviceName=cd47883e     appPackage=Login Register

# Register

# Login
                     