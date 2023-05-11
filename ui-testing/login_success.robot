*** Settings ***
Library   SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL}     http://58.97.116.241:3000

*** Test Cases ***
Success
    ไปยังหน้า login
    ทำการ login ด้วย user="somkiat" และ password="1234567"
    สามารถ login เข้าระบบได้

*** Keywords ***
สามารถ login เข้าระบบได้
    Wait Until Element Contains    xpath:/html/body/div/h4    Login success

ทำการ login ด้วย user="${user}" และ password="${password}"
    Input Text    name=name    ${user}
    Input Text    name=password    ${password}
    Click Element    xpath://form/button
    
ไปยังหน้า login
    Open Browser   ${URL}/login   
    ...    browser=chrome
    ...    remote_url=http://selenium-hub:4444/wd/hub
    Maximize Browser Window