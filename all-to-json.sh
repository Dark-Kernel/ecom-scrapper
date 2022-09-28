#!/bin/bash


# Amazon

items=( )
for i in range {1..16}; do 
	
	
	item="{ "
	items+=( "$item" )
	item=""
	item=$(cat links.txt | awk -v i="$i" 'NR =='i) 		
	items+=( "$item" )
	item=","
	items+=( "$item" )
	item=""
	item=$(sed -n "$i"p title.txt)
	items+=( "$item" )
	item=","
	items+=( "$item" )
	item=""
	item=$(sed -n "$i"p img-links.txt)
	items+=( "$item" )
	item=","
	items+=( "$item" )
	item=""
	item=$(sed -n "$i"p price.txt)
	items+=( "$item" )
	item=""
	item="}"
	items+=( "$item" )
	item=","
	items+=( "$item" )

	((i=$i+1))
done

#bk
#printf '{"Contents": %s\n\n' "${items[*]}"
#unset items[0]
echo -e "{ \n \"Amazon\": [\n" ${items[*]:10} | sed 's/,$/]}/' > file.json


# Flipkart

items=( )
for i in range {1..16}; do 
	
	
	item="{ "
	items+=( "$item" )
	item=""
	item=$(cat mlinks.txt | awk -v i="$i" 'NR =='i) 		
	items+=( "$item" )
	item=","
	items+=( "$item" )
	item=""
	item=$(sed -n "$i"p mtitle.txt)
	items+=( "$item" )
	item=","
	items+=( "$item" )
	item=""
	item=$(sed -n "$i"p mimg-links.txt)
	items+=( "$item" )
	item=","
	items+=( "$item" )
	item=""
	item=$(sed -n "$i"p mprice.txt)
	items+=( "$item" )
	item=""
	item="}"
	items+=( "$item" )
	item=","
	items+=( "$item" )

	((i=$i+1))
done

echo -e "{ \n \"Flipkart\": [\n" ${items[*]:10} | sed 's/,$/]}/' > mfile.json


# Reliance-digital

items=( )
for i in range {1..16}; do 
	
	
	item="{ "
	items+=( "$item" )
	item=""
	item=$(cat rlinks.txt | awk -v i="$i" 'NR =='i) 		
	items+=( "$item" )
	item=","
	items+=( "$item" )
	item=""
	item=$(sed -n "$i"p rtitle.txt)
	items+=( "$item" )
	item=","
	items+=( "$item" )
	item=""
	item=$(sed -n "$i"p rimg-links.txt)
	items+=( "$item" )
	item=","
	items+=( "$item" )
	item=""
	item=$(sed -n "$i"p rprice.txt)
	items+=( "$item" )
	item=""
	item="}"
	items+=( "$item" )
	item=","
	items+=( "$item" )

	((i=$i+1))
done

echo -e "{ \n \"Reliance\": [\n" ${items[*]:10} | sed 's/,$/]}/' > rfile.json
