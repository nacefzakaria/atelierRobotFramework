*** Keywords ***
Click Login Button
    Wait Until Element Is Visible    xpath://a[contains(@href, 'join/login-popup') and contains(@href, 'locale=fr_FR') and contains(@href, 'response_type=html')]
    Click Element    xpath://a[contains(@href, 'join/login-popup') and contains(@href, 'locale=fr_FR') and contains(@href, 'response_type=html')]
Input Username
    [Arguments]    ${username}
    Input Text    id:form-group--1    ${username}

Input Password
    [Arguments]    ${locator}    ${password}
    Input Text    ${locator}    ${password}

Submit Login
    Click Button    css:button.ud-btn-brand

Click My Learning Button
    [Documentation]    Clicks the "My learning" button on the Udemy homepage.
    Wait Until Page Contains Element    xpath://div[@class='my-learning-unit--learning-link-desktop--2_8bd']/a[@data-purpose='my-courses-link-desktop']
    Click Element    xpath://div[@class='my-learning-unit--learning-link-desktop--2_8bd']/a[@data-purpose='my-courses-link-desktop']


Input Search Term
    [Arguments]    ${search_term}
    Input Text    id:header-search-field    ${search_term}

Submit Search
    Click Button    id:header-search-button

Verify Course Appears
    [Arguments]    ${course_name}
    Page Should Contain    ${course_name}
