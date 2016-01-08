#!/bin/bash
#
# (c) the authors
# Licensed under the Apache License, Version 2.0.
#
# To benchmark SearchFilter, TimeseriesNot and TimeseriesSelect queries, the code should be adapted manually.    
#
exec 1<&-
exec 2<&-
innerLoop(){
  HOST=localhost:8082
  START=$(($(date +%s%N)/1000000))
  sed -e "s/###DATASOURCE###/$2/" druidQueries/query${1}${3}Template.json > druidQueries/query.tmp
  curl -s -X POST "http://${HOST}/druid/v2/" -H 'content-type: application/json' -d @druidQueries/query.tmp > druidQueriesResults/${1}${3}_${2}.txt
  END=$(($(date +%s%N)/1000000))
  RETVAL=$(($END - $START))
  echo $RETVAL
}
DENSITIES=("VeryLowCard" "LowCard" "MediumCard" "HighCard" )
QUERIES=( "GroupByFilter" "TopNFilter" "TimeseriesFilter" "SelectFilter" )
BITMAPS=("concise" "roaring")
OPERATORS=( "OR" "AND" )
ignore=0
for QUERY in "${QUERIES[@]}"
do
for OPERATOR in "${OPERATORS[@]}"
do
exec 1<>resDruidBenchs/${QUERY}${OPERATOR}.txt
exec 2<&1
echo "Densities	concise	csTime	roaring	rbTime"
for d in "${DENSITIES[@]}"
do
AVG_TIME_roaring=0
AVG_TIME_concise=0
for BITMAP in "${BITMAPS[@]}"
do
  DATASOURCE=TPCH_benchmark_${BITMAP}_uncompressed
  for ((n=0;n<10;n++))
  do
    ignore=$(($ignore + $(innerLoop $QUERY$OPERATOR $DATASOURCE $d)))	
  done
  for ((n=0;n<100;n++))
  do
        time=$(innerLoop $QUERY$OPERATOR $DATASOURCE $d)
	if [ "$BITMAP" = "roaring" ] 
	then
                AVG_TIME_roaring=$(($AVG_TIME_roaring + $time))		
	elif [ "$BITMAP" = "concise" ] 
	then
                AVG_TIME_concise=$(($AVG_TIME_concise + $time))		
	fi
  done
if [ "$BITMAP" = "roaring" ] 
then
    	AVG_TIME_roaring=$(($AVG_TIME_roaring / 100))
elif [ "$BITMAP" = "concise" ] 
then
        AVG_TIME_concise=$(($AVG_TIME_concise / 100))
fi
done
echo "${d}	concise	${AVG_TIME_concise}	roaring	${AVG_TIME_roaring}"
done
done
done
echo "##ignore=$ignore"

