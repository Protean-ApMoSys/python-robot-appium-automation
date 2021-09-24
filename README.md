# python-robot-framework-protean-apmosys

This repository demonstrates how to run Appium Python Robot tests on Apmosys-protean App Automate.

## Setup

### Requirements


1. Python 3.6+ or Python 2.7+

    - For Windows, download latest python version from [here](https://www.python.org/downloads/windows/) and run the installer executable
    - For Mac and Linux, run `python --version` to see what python version is pre-installed. If you want a different version download from [here](https://www.python.org/downloads/)

2. Package Manager pip

    Note : `pip` comes installed with Python 2.7.9+ and python 3.4+

    - If `pip` is not installed, follow these instructions:
        - Securely download get-pip.py by following this link: [get-pip.py](https://bootstrap.pypa.io/get-pip.py) or use following cURL command to download it:

        ```sh
        curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
        ```

        - After dowloading, run the file :

            - For Python 3

                ```sh
                python3 get-pip.py
                ```

            - For Python 2

                ```sh
                python2 get-pip.py
                ```

### Install the dependencies

To install the dependencies, run the following command in project's base directory:

- For Python 3

    ```sh
    pip3 install -r requirements.txt
    ```

- For Python 2

    ```sh
    pip2 install -r requirements.txt
    ```

## Getting Started

Getting Started with Appium tests in Python on BrowserStack couldn't be easier!

### Run your first test :

**1. Upload your Android or iOS App**

Upload and install your Android app (.apk or .aab file) or iOS app (.ipa file) to Protean servers from upload app section of Dashboard tab.


**2. Configure and run your first test**

Open `automation.py` file if you want to work with plain python script  in this directory :
OR pen `automation.robot` file  if you want to work with Robotframework script
- Replace `YOUR_USERNAME` & `YOUR_ACCESS_KEY` with your Protean access credentials. 

 `USERNAME` is Protean login id / email.

 You can get `ACCESS_KEY` from `keys` section of `Settings` tab of Protean App.

- Replace `Custom_AppPackage` & `Custom_AppActivity` with the correct app details.

- Replace `Device_Name`, `UDID`(Serial No of device), `Platform_Name`(Android/IOS), `Platform_Version` and `Test_Name`(Any name)

- Write test script for your app

- Run python test using `python automation.py` for python2  and `python3 automation.py` for python3.

- Run robotframework test using `robot automation.robot`

- You can access the test execution results on [Automation --> Automation_Logs tab]

---
### Find Elements of mobile
- Go to `Automation` tab.
- Click on `Start app Inspector` button, then app inspector window will open on next tab.
- Go to mobile screen and go to page where you want to find locator of element.
- Now go to app inspector tab and `refresh it`.
- Mobile screen with your elemwnt will appear, now click on the element which you want to locate, then you will find all loactors of that element on right side of that mobile screen.
- Copy locator which you want and paste it on your script.
- You can also find `appPackage` in this tab.