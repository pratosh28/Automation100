*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
#${URL}  https://www.google.com
${URL}  https://www.facebook.com

*** Test Cases ***
TC_008 execute java script
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    execute javascript  window.scrollTo(0,1000)
    sleep  5 seconds
    #Input credentials with Argument  pratosh.kr@gmail.com  90313156959031315695
    Close Browser


*** Keywords ***
Input credentials without Argument
    input text  name:email  pratosh.kr@gmail.com
    input password  xpath://input[@name='pass']  90313156959031315695

Input credentials with Argument
    [Arguments]  ${email}  ${password}
    input text  name:email  ${email}
    input password  xpath://input[@name='pass']  ${password}