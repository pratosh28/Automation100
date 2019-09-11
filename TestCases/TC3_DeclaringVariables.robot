*** Settings ***
Library  Collections


*** Variables ***



*** Test Cases ***
TC_003 Testing Variables
    ${var1}=  set variable  Helloworld
    log to console  ${var1}
    @{list}  create list  My  name  is   Pratosh  Kumar.
    log to console  ${list}
    ${new_list}=  get from list  ${list}  3
    log to console  ${new_list}


*** Keywords ***
