#!/bin/bash

wget -q 'https://www.amazon.in/s?k=mi' -O main.html 2>&1
wget -q 'https://www.flipkart.com/search?q=iphone' -O mflip.html 2>&1
wget -q 'https://www.reliancedigital.in/search?q=samsung' -O rmain.html 2>&1



# Amazon

cat main.html | pup 'span.a-price-whole text{}' | sed 's/^/"price": "/g' | sed 's/$/"/g' > price.txt

cat main.html | pup 'span.a-text-normal text{}' | sed 's/^/"title": "/g' | sed 's/$/"/g' | sed '1d' > title.txt

cat main.html | pup 'img.s-image attr{src} ' | sed 's/^/"src": "/g' | sed 's/$/"/g' > img-links.txt

cat main.html | pup 'a.s-no-outline attr{href}' | sed 's/^/"link": "amazon.in/g' | sed 's/$/"/g' > links.txt



# Flipkart

cat mflip.html | pup 'div._4rR01T text{}' | sed 's/^/"title": "/g' | sed 's/$/"/g' > mtitle.txt

cat mflip.html | pup 'img._396cs4 attr{src}' | sed '/^\//d' | sed 's/^/"src": "/g' | sed 's/$/"/g'  > mimg-links.txt

cat mflip.html | pup 'div._30jeq3 text{}' | sed 's/^/"price": "/g' | sed 's/$/"/g'  > mprice.txt

cat mflip.html | pup 'a._1fQZEK attr{href}' | sed 's/^/"link": "https:\/\/www.flipkart.com/g' | sed 's/?.*/"/;/^$/d' > mlinks.txt

cat mflip.html | pup 'div._3LWZlK text{}' | sed 's/^/"rating": "/g' | sed 's/$/"/g' > mratings.txt


# Reliance-digital

cat rmain.html | pup 'p.sp__name text{}' | sed 's/^/"title": "/g' | sed 's/$/"/g' > rtitle.txt

cat rmain.html | pup 'img.imgCenter attr{data-srcset}' | sed 's/^/"src": "https:\/\/www.reliancedigital.in/g' | sed 's/$/"/g' > rimg-links.txt

cat rmain.html | pup 'span.kCenjr text{}' | sed '/₹/d' | sed 's/^/"price": "/g' | sed 's/$/"/g' > rprice.txt

cat rmain.html | pup '[target="_blank"] attr{href}' | sed 's/^/"link": "https:\/\/www.reliancedigital.in/g' | sed 's/$/"/g' > rlinks.txt

#cat rmain.html | pup 'p.sp__name text{}' | sed 's/^/"title": "/g' | sed 's/$/"/g' > rrating.txt



