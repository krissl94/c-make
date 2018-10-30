# I am a comment, and I want to say that the variable CC will be
# the compiler to use.
CC=g++
# Hwy!, I am comment no.2. I want to say that CFLAGS will be the
#options I'll pass to the compiler
CFLAGS=-std=c++11 -Wall
all: lastname firstname firstnameclass lastnameclass

firstnameclass:
	$(CC) $(CFLAGS) -o firstname.o firstname.cpp -c
lastnameclass:
	$(CC) $(CFLAGS) -o lastname.o lastname.cpp -c
lastname:
	@echo "#include <vector>" > lastname_array.h
	@echo "#include <string>" >> lastname_array.h
	@echo "std::vector<std::string> lastnames = {" >> lastname_array.h
	@sed 's/.*/"&",/' lastname.txt >> lastname_array.h
	@echo "}; " >> lastname_array.h

firstname:
	@echo "#include <vector>" > firstname_array.h
	@echo "#include <string>" >> firstname_array.h
	@echo "std::vector<std::string> firstnames = {" >> firstname_array.h
	@sed 's/.*/"&",/' firstname.txt >> firstname_array.h
	@echo "}; " >> firstname_array.h

main: firstnameclass lastnameclass
	$(CC) $(CFLAGS) -o generated firstname.o lastname.o main.cpp

