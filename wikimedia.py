#!/usr/bin/python3
# -*- coding: utf-8 -*-
import sys
from selenium.webdriver.common.keys import Keys 
from selenium import webdriver 
from selenium.webdriver.chrome.options import Options

chrome_options = Options()
chrome_options.add_argument("--headless")
driver = webdriver.Chrome(options=chrome_options)


input = sys.argv[1:]
args = (' '.join(input))


link = 'https://en.wikipedia.org/w/index.php?title=Special:ElectronPdf&page={}&action=show-download-screen'
open = link.format(str(args))
driver.get(open)
driver.find_element_by_xpath("//html/body/div[3]/div[3]/div[3]/form/div/span/span/button").click()






















