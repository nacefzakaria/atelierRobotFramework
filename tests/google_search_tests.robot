*** Settings ***
Documentation    Test cases for Google search
Library           SeleniumLibrary
Resource    ../resources/google_keywords.robot
Suite Setup       Open Browser    ${UD_URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${UD_URL}         https://google.com
${BROWSER}        chrome

*** Test Cases ***
Verify Title
    Verify Title Contains   google
Search in Google
    [Documentation]    Search for a query in Google.
    Input Search Query    Zakaria
    Press Enter Key
