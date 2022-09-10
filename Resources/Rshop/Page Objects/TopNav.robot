*** Settings ***
Documentation  Rshop Top Navigation
Library  SeleniumLibrary

*** Variables ***
${HOME_NAV} =  xpath=//*[@id="menu-item-1147"]/a
${SHOP_NAV} =  xpath=//*[@id="menu-item-1129"]/a
${WISHLIST_NAV} =  xpath=//*[@id="menu-item-1130"]/a
${COLLECTION_NAV} =  xpath=//*[@id="menu-item-1131"]/a
${CONTACT_NAV} =   xpath=//*[@id="menu-item-1132"]/a

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
    Wait Until Page Contains  My Account

# Enter Search Term
#     Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}

# Submit Search
#     Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input