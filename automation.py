import unittest

import self
from appium import webdriver
from appium.webdriver.common.mobileby import MobileBy
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

desired_cap = {
    "name" : "python appium automation",
    "appPackage" : "com.android.chrome",
    "appActivity" : "com.google.android.apps.chrome.Main",
    "platformName" : "android",
    "platformVersion" : "11",
    "udid" : "RZ8N70Q975W",
    "deviceName" : "samsung",
    "automationName" : "uiautomator2",
    "apmosys.accessToken" : "2459d657d4b74f6c9714594f9a78a549e10a2b851a574cdbaf6482a0aa0a571e",
    "apmosys.user" : "admin@apmosys.in"
}

# Initialize the remote Webdriver using BrowserStack remote URL
# and desired capabilities defined above
driver = webdriver.Remote('http://114.143.118.242:9091/wd/hub', desired_cap)
driver.implicitly_wait(10)
search_element = driver.find_element_by_id('com.android.chrome:id/fre_bottom_group')
search_element.click()
driver.implicitly_wait(5000)

search_element = driver.find_element_by_id('com.android.chrome:id/next_button')
search_element.click()
driver.implicitly_wait(10)

search_element = driver.find_element_by_xpath('//*[@resource-id="com.android.chrome:id/positive_button"]')
search_element.click()
driver.implicitly_wait(10)
# Invoke driver.quit() after the test is done to indicate that the test is completed.
driver.quit()