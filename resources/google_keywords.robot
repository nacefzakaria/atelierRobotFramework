*** Settings ***
Documentation    Keywords related to Google search.

*** Keywords ***
Input Search Query
    [Arguments]    ${query}
    Input Text    name=q    ${query}

Press Enter Key
    Press Keys    name=q    \ue007

Verify Title Contains
    [Arguments]    ${expected_title}
    Wait Until Page Contains    ${expected_title}    timeout=10s