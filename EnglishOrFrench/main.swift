//
//  main.swift
//  English or French?
//

import Foundation

// INPUT
// Collect and filter user input here
print("How many lines?")
var expectedLines = 0
while 1 == 1 {
    guard let numberOfLines = readLine() else {
        continue
    }
    guard let integerOfLine = Int(numberOfLines) else {
        continue
    }
    if integerOfLine < 0 || integerOfLine > 10000 {
        continue
    }
    expectedLines = integerOfLine
    break
}


// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines
print("Please enter the \(expectedLines) lines of text:")

var numberOfT = 0
var numberOfS = 0

for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Let's check each letter!
    for letter in givenLine {
        switch letter {
        case "t","T":
            numberOfT += 1
    
        case "s","S":
            numberOfS += 1
        default :
            break //do nothing
        }
    }
    
}

if numberOfT > numberOfS {
    print("This book likes English.")
}
else if numberOfT < numberOfS {
    print("This book likes French.")
}
else {
    print("This book likes French.")
}


// OUTPUT
// Report results to the user here


