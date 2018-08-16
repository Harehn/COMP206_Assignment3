# -*- Makefile  -*-
all: movie_recommender

movie_recommender: movie_recommender.o preferences.o distances.o include/distances.h include/preferences.h
	$ gcc movie_recommender.o preferences.o distances.o -o movie_recommender

preferences.o: src/preferences.c 
	$ gcc -Iinclude -c src/preferences.c

distances.o: src/distances.c 
	$ gcc -Iinclude -c src/distances.c

movie_recommender.o: src/movie_recommender.c
	$ gcc -Iinclude -c src/movie_recommender.c

clean: 
	$ rm -f *.o movie_recommender
