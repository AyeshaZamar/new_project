from pages.BasePage import BasePage
from selenium.webdriver.common.by import By

class SigninPage(BasePage):
    TXT_EMAILID = (By.NAME, "email")
    BTN_CONTINUE = (By.ID, "continue")
    TXT_PASSWORD = (By.NAME, "password")
    BTN_SIGNIN = (By.ID,"ap_email" )
    MSG_INVALIDCREDS = (By.ID,"spanMessage")

    """Constructor of CarrersPage class"""

    def __init__(self, driver):
        super().__init__(driver)

    def enter_signin_credentials(self, email, pwd):
        self.input_element(self.TXT_EMAILID, email)
        self.input_element(self.TXT_PASSWORD, pwd)

    def enter_emailid(self,email):
        self.input_element(self.TXT_EMAILID, email)

    def enter_continue(self):
        self.click_element(self.BTN_CONTINUE)

    def enter_password(self, pwd):
        self.input_element(self.TXT_PASSWORD, pwd)

    def enter_signin(self):
        self.click_element(self.BTN_SIGNIN)

    def validateTitle(self):
        assert self.get_title() == "amazon.in"

    def validateInvalidCreds(self):
        assert self.get_element_text(self.MSG_INVALIDCREDS) == "Invalid credentials"

    # def validateEmptyUsername(self):
    #     assert self.get_element_text(self.MSG_INVALIDCREDS) == "emailid cannot be empty"
    #
    # def validateEmptyPassword(self):
    #     assert self.get_element_text(self.MSG_INVALIDCREDS) == "Password cannot be empty"