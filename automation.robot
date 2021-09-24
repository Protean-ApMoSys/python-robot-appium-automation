# Don't forget to stop app-inspector in stf.

*** Settings ***
Library  AppiumLibrary

*** Variables ***
${Device_name}  RZ8N70Q975W
${Appium_server}  http://114.143.118.242:9091/wd/hub
${appPackage}  com.android.chrome
${appActivity}  com.google.android.apps.chrome.Main
${platfrom}  11
${automationName}  uiautomator2
${apmosys.key}  2459d657d4b74f6c9714594f9a78a549e10a2b851a574cdbaf6482a0aa0a571e
${apmosys.user}  admin@apmosys.in
${name}  google chrome search using robot
${udid}  RZ8N70Q975W


*** Test Cases ***
Open_Application_function
      ${androiddriver}=  Open Application  ${Appium_server}  platformName=android  platformVersion=${platfrom}  deviceName=${Device_name}  automationName=${automationName}  apmosys.user=${apmosys.user}  apmosys.accessToken=${apmosys.key}  name=${name}  udid=${udid}
  ...  appPackage=${appPackage}  newCommandTimeout=50  appActivity=${appActivity}

Landing Page
	sleep   5
	Click Element   id=com.android.chrome:id/fre_bottom_group
	sleep   2

click on next to for chrome
    sleep   10
	Click Element  id=com.android.chrome:id/next_button
	sleep   2

click on im in
    sleep   10
	Click Element  xpath=//*[@resource-id="com.android.chrome:id/positive_button"]
	sleep   2

input text on chrome
    sleep   5
	Input Text  xpath=//*[@resource-id="com.android.chrome:id/search_box"]/android.widget.RelativeLayout[1]     Apmosys Technologies
	sleep   15

close application
   Close Application


