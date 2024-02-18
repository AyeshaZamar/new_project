from pages.BasePage import BasePage
from selenium import webdriver
from webdriver_manager import ChromeDriverManager
from selenium.webdriver.common.by import By

class HomePage(BasePage):
    driver = webdriver.Chrome(ChromeDriverManager().install())
    driver.implicitly_wait(5)
    driver.get("https://www.amazon.com/")
    driver.save_screenshot('HomePage.png')
    driver.close()

    """Constructor of CarrersPage class"""

    def __init__(self, driver):
        super().__init__(driver)
