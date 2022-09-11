*** Settings ***
Documentation  Rshop Top Navigation
Library  SeleniumLibrary

*** Variables ***
${HOME_NAV} =        xpath=//*[@id="menu-item-1151"]/a
${SHOP_NAV} =        xpath=//*[@id="menu-item-1161"]/a
${WISHLIST_NAV} =    xpath=//*[@id="menu-item-1162"]/a
${COLLECTION_NAV} =  xpath=//*[@id="menu-item-1162"]/a
${CONTACT_NAV} =     xpath=//*[@id="menu-item-1164"]/a
${MY_ACCOUNT_NAV} =  xpath=//*[@id="masthead"]/div[3]/div/div[2]/div[2]/a

*** Keywords ***
Navigate to "Home" Page
    Wait Until Element Is Visible    ${HOME_NAV}
    Click Element    ${HOME_NAV}
    Wait Until Page Contains  Home

Navigate to "Shop" Page
    Wait Until Element Is Visible    ${SHOP_NAV}
    Click Element    ${SHOP_NAV}
    Wait Until Page Contains  Shop      

Navigate to "Wishlist" Page
    Wait Until Element Is Visible    ${WISHLIST_NAV}
    Click Element    ${WISHLIST_NAV}
    Wait Until Page Contains  Shop   

Navigate to "Collection" Page
    Wait Until Element Is Visible    ${COLLECTION_NAV}
    Click Element    ${COLLECTION_NAV}
    Wait Until Page Contains  Collection   

Navigate to "Contact" Page
    Wait Until Element Is Visible    ${CONTACT_NAV}
    Click Element    ${CONTACT_NAV}
    Wait Until Page Contains  Contact

Navigate to "Cart" Page
    Wait Until Page Contains  Cart

Navigate to "My Accounts" Page
    Wait Until Element Is Visible    ${MY_ACCOUNT_NAV}
    Click Element    ${MY_ACCOUNT_NAV}
    Wait Until Page Contains  My Account

# Enter Search Term
#     Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}

# Submit Search
#     Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input