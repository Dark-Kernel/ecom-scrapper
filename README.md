
# Ecommerce web scraper 


A simple tool written in bash to scrape price, links, images, title of products from e-commerce websites 
 
 - Amazon
 - Flipkart
 - Reliance-digital


After scraping you can convert files in json format with one more script which converts that .txt files to json.


1. `bash scrape-all.sh`

    Get things scraped, then you will see numbers of .txt files in pwd.

2. `bash all-to-json.sh`
 
    Now, you get .json files which you can use in your website.

3. `jq . file.json`

    To get formatted json output. 


Thanks to pup tool by [ericchiang](https://github.com/ericchiang/pup)


