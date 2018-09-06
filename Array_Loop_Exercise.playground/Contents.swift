//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Fibonacci Problem
func fibonacci(number : Int) -> [Int]{
    var result = [Int]()
    
    var a = 0
    var b = 1
    var c = 0
    
    for _ in  1 ... number {
        a = b
        b = c
        c = a + b
        
        result.append(c)
        
    }
    return result
    
}
fibonacci(number: 18)


// Write a program that prints the powers of 2 that are less than or equal to N


func powerOF (limits : Int) -> [Int]{
    var starter = 0
    
    var result = [Int]()
    
    while (starter * starter) <= limits {
        result.append(Int(starter))
        
        print(starter * starter)
        
        starter += 1
    }
    
    return result
}

powerOF(limits: 12)



// Write a program that prints all the numbers from 1 to N in alternative order.

func alternatingNumber (n : Int){
    var firstList = [Int]()
    var finalList = [Int]()
    // add number from 1 to n
    for i in 0 ... n {
        firstList.append(i)
    }
    
    for i in 1 ... n{
        
        finalList.append(firstList[i])
        finalList.append(firstList[firstList.count - i])
    }
    
    
    print(finalList.dropLast(n))
    
}

alternatingNumber(n: 9)
