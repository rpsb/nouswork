#!/bin/bash

#url=http://10.11.100.160:85/folio/Brokerage/branches

repo_list=$(svn ls http://10.11.100.160:85/folio/Brokerage/branches)

echo "BRANCH LIST:"
for i in $repo_list
do
        echo "$i"
done

for i in $repo_list
do
        
        last_date=$( svn log http://10.11.100.160:85/folio/Brokerage/branches | head -2 | awk -F "|" '{print $3}' | awk '{print $1}' )
        start_ts=$(date -d "$last_date" '+%s')
        end_ts=$(date -d "2019-01-09" '+%s')
        days=$(echo "( $end_ts - $start_ts )/(60*60*24)" | bc)
        
		if [ $days -gt 180 ]
		then 
			echo "no of days last commited is $days"
			read -p "Do you want to Delete (y/n)?" choice

        case "$choice" in 
         y|Y ) echo "$i is deliting"
                svn delete http://10.11.100.160:85/folio/Brokerage/branches/$i -m "removing $i"
                ;;

         n|N ) echo "deleting $i aborted";;

        esac
		fi
done 