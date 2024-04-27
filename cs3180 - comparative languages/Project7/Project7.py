# Alex Yeoh
# Project 7 - Getting to know Python
# Learning the classs, iterators, and file I/O in Python


class Student:
    def __init__(self, UID, first, last, level):  # constructor
        self.UID = UID
        self.first = first
        self.last = last
        self.level = level
        self.classes = []

    def __iter__(self):  # start of iter, defines index variable
        self.index = 0
        return self

    def __next__(self):  # looping through iter
        if self.index < len(self.classes):  # only do for elements in class
            currClass = self.classes[self.index]  # get class at index
            self.index += 1  # increment index
            return currClass  # return class at index
        else:
            raise StopIteration

    def __str__(self):  # toString that prints everything except classes
        return (
            "\nUID: "
            + self.UID
            + "\nFirst Name: "
            + self.first
            + "\nLast Name: "
            + self.last
            + "\nLevel: "
            + self.level
        )

    def addClass(self, newClass):  # adds a class to this student
        self.classes.append(newClass)


# main starts here
readFrom = "studentRecordsIn.txt"  # file to read from
writeTo = "studentRecordsOut.txt"  # file to write to
studentList = []  # declaration of student array
try:
    # reading in from file and making students
    readIn = open(readFrom, "r")  # read in from file
    for line in readIn:
        line = line.strip("\n")  # cleaning data of newline characters
        data = line.split("\t")  # splitting data
        while data.__contains__(""):  # cleaning data of empty elements in data
            data.remove("")
        studentList.append(
            Student(data[0], data[1], data[2], data[3])
        )  # adding new student to array
        for aClass in data[4:]:
            studentList[-1].addClass(
                aClass
            )  # adding to most recent student one of their classes

    # printing out to console and writing to file
    writeOut = open(writeTo, "w")  # write out to file
    print("Student Records\n===============")  # print header
    writeOut.write("Student Records\n===============\n")  # write header
    for student in studentList:
        print(student)  # call toString method
        writeOut.write(student.__str__() + "\n")  # write standard student info
        print("Classes:")  # print classes label
        writeOut.write("Classes:\n")  # write classes label
        for aClass in student:
            print(aClass)  # print the class
            writeOut.write(aClass + "\n")  # write the class
        print("..................\n..................")  # print end of classes dots
        writeOut.write(
            "..................\n..................\n"
        )  # write end of classes dots
    print()  # print last new line character to match output file

# catching exceptions
except FileNotFoundError:  # gracefully exit when file DNE
    print("Error: File not found")
except Exception:
    print("Error: Unknown other error")
