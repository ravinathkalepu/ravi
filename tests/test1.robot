*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
*** Variables ***


*** Test Cases ***
Google
    #create webdriver    chrome  executable_path = "C:\chromedriver.exe"
    open browser    https://www.google.com/     chrome
    maximize browser window
    sleep    10
    close browser


*** Keywords ***
