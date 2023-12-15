# Alex Yeoh
# Project 5 - Playing around with Python
# Learning the basic functionality of Python

import random


# custom exeptions
class InvalidInput(Exception):
    pass


class NoWords(Exception):
    pass


try:
    # read in words from text file
    file = open("wordlist.txt")
    allWords = {}  # make a dictionary
    minWordLen = None  # min for arbitary word list
    maxWordLen = None  # max for arbitary word list
    for item in file:
        word = item.strip()  # remove whitespace from the word
        if minWordLen == None or len(word) < minWordLen:  # keep track of min word size
            minWordLen = len(word)
        if maxWordLen == None or len(word) > maxWordLen:  # keep track of max word size
            maxWordLen = len(word)
        if len(word) in allWords:
            allWords[len(word)].append(word.lower())  # adding word to correct key
        else:
            allWords[len(word)] = [word.lower()]  # adding new key value pair

    print("Welcome to Hangman")
    # Getting user input for word length
    while True:  # repromt the user until valid input
        try:
            usrInput = input(
                "What word-length would you like to play? (%s to %s) ==> "
                % (minWordLen, maxWordLen)
            )  # take in user input
            if not str.isnumeric(usrInput):  # check if input is a number
                raise InvalidInput
            n = int(usrInput)  # cast to number
            if n < minWordLen or n > maxWordLen:  # check if input is in valid range
                raise InvalidInput
            if n not in allWords:  # check if there are any keys for words that long
                raise NoWords
            break
        except InvalidInput:
            print("Invalid input")
        except NoWords:
            print("No %d letter words in the word list" % n)

    # Preparing for user guessing the word
    numGuesses = 2 * n + 1  # set number of guesses after valid n has been chosen
    word = random.choice(allWords[n])  # get a random word
    print(word)
    guessWord = ""
    for i in range(len(word)):  # build the hidden word
        guessWord = "%s%s" % (guessWord, "*")

    # user guessing
    guessedChars = []  # keep track of previously guessed letters
    while numGuesses > 0:
        print(
            "\nWord: %s\nYou have %d guesses remaining." % (guessWord, numGuesses)
        )  # display hidden word and number of guesses
        guess = input("Type a letter or a word guess: ")  # take in user guess
        if guess.isalpha():  # check if guess only has letters
            guess = guess.lower()  # force to lowercase for checking
            if len(guess) == 2 or len(guess) > n:  # check for invalid guess length
                print("%s is not a valid guess" % guess)
            elif len(guess) == 1:  # letter guess
                if guess in guessedChars:  # check for previously guessed letter
                    print("You guessed %s before!" % guess)
                else:  # letter has not been guessed before
                    guessedChars.append(guess)  # keep track of guessed letters
                    if guess in word:  # check if the guessed letter is in the word
                        numInWord = 0  # keep track of number of times guessed letter appears in word for grammar
                        for i in range(len(word)):  # loop to get index for word
                            if word[i] == guess:  # check the letter at the index
                                guessWord = (
                                    guessWord[:i] + guess + guessWord[i + 1 :]
                                )  # replace the letter by making a new string
                                numInWord += 1
                        if numInWord == 1:  # use "is" if guess only appears once
                            print("There is 1 %s!" % guess)
                        else:  # use "are" if guess appears more than once
                            print("There are %d %s!" % (numInWord, guess))
                        if not "*" in guessWord:  # if all letters were guessed, break
                            break
                    else:  # guessed letter is not in the word
                        print("Sorry, there are no %s's." % guess)
                    numGuesses -= 1  # decrement numbers of guesses left
            else:  # user guessed a word
                if word == guess:  # user guessed correct word
                    break
                else:  # user guessed wrong word
                    print("Sorry, the word is not '%s'" % guess)
                    numGuesses -= 1
        else:  # guess is not only letters
            print("%s is not a valid guess" % guess)

    # printing end game stuff
    if numGuesses:  # there are still guesses remaining, user won
        print("Congratulations, you guessed it!")
    else:  # user out of guesses, user lost
        print("You Lost...")
    print("Game over.")

except FileNotFoundError:
    print("File Not Found")
# except Exception:
#     print("Strange Error")
