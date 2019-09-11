*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
#${URL}  https://www.google.com
${URL}  https://www.facebook.com

*** Test Cases ***
TC_001 Text Box Manipulation
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    set selenium speed  2seconds
    input text  name:email  pratosh.kr@gmail.com
    input password  xpath://input[@name='pass']  90313156959031315695
    clear element text  xpath://input[@name='pass']
    select radio button  sex  1
    #Close Browser


*** Keywords ***