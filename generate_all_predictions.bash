#!/bin/bash

make


for FILE in data/*.txt ; do
	#echo "file is ${FILE}"
	mv ${FILE} query/query.txt
	./movie_recommender query/query.txt data/*
	mv query/query.txt ${FILE}
done
