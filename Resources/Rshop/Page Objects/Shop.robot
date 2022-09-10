*** Settings ***
Library  SeleniumLibrary
Resource  ../../Rshop/Page Objects/TopNav.robot

*** Variables ***
${SINGLE_PRODUCT_IMG} =  xpath=//*[@id="primary"]/ul/li[2]/figure/a[2]/img
${SINGLE_PRODUCT_LINK} =  xpath=//*[@id="post-1042"]/div/div/div/div/div/form/table/tbody/tr[1]/td[3]/a
${PRODUCT_IMG_1} =  xpath=//*[@id="primary"]/ul/li[6]/figure/a[2]/img
${PRODUCT_IMG_2} =  xpath=//*[@id="primary"]/ul/li[7]/figure/a[2]/img
${PRODUCT_IMG_3} =  xpath=//*[@id="primary"]/ul/li[8]/figure/a[2]/img
${ADD_TO_CART_BUTTON} =  xpath=//*[@id="primary"]/ul/li[2]/figure/div/div/a[2]
${VIEW_CART_BUTTON} =  xpath=//*[@id="woocommerce_widget_cart-1"]/div/p[2]/a[1]
${PRODUCT_QUANTITY} =  xpath=//*[@id="woocommerce_widget_cart-1"]/div/ul/li/span
${PRODUCT_SINGLE_PAGE_ADD_TO_CART_BUTTON} =   css=.single_add_to_cart_button
${SUCCESS_MESSAGE} =  has been added to your cart
${PRODUCT_SINGLE_PAGE_VIEW_CART_BUTTON} =   xpath=/html/body/div[2]/div/main/div/div/div[1]/div/a

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Shop
    Sleep  3s

Add Single Product to Cart
    Mouse Over  ${SINGLE_PRODUCT_IMG}
    Wait Until Element Is Visible    ${ADD_TO_CART_BUTTON}
    Click Link  ${ADD_TO_CART_BUTTON}
    Wait Until Element Is Visible  ${VIEW_CART_BUTTON}
    Click Link  ${VIEW_CART_BUTTON}
    Element Should Be Visible  ${SINGLE_PRODUCT_LINK}


Add Multiple Products to Cart
    Mouse Over  ${SINGLE_PRODUCT_IMG}
    Wait Until Element Is Visible  ${ADD_TO_CART_BUTTON}
    Click Link  ${ADD_TO_CART_BUTTON}
    Sleep    2s
    execute javascript  window.scrollTo(0,300)
    Mouse Over  ${PRODUCT_IMG_1}
    # Click Link  Add to cart
    # Click Link    xpath=/
    Mouse Over  ${PRODUCT_IMG_2}
    Click Link  Add to cart
    Mouse Over  ${PRODUCT_IMG_3}
    Click Link  Add to cart
    Click Link  ${VIEW_CART_BUTTON}
    Element Should Be Visible  ${SINGLE_PRODUCT_LINK}




