//
//  main.swift
//  Closures
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

func add (a : Int , b : Int)
{
    print(a+b)
}
add(a: 10, b: 30)
var f : (Int , Int)-> Void
f = add

f(10,50)

func test (a : Int, b :(Int , Int)-> Void)
{
   b(a,20)
}

test( a: 41 , b: f)

var country = ["CANADA","abd","INDIA","CHINA","NEPAL","USA"]
func compare( a: String ,b: String)->Bool
{
    return  a > b
}
//print(compare(a: "abc", b: "aac"))
//print(country)
country.sort(by:
    {(a : String , b : String)-> Bool in return a>b}) // closures creation
print(country)
country.sort(by:
{(a, b)-> Bool in return a<b})
print(country)

country.sort(by:
{ a , b  in return a>b}) //print (c)
print(country)

country.sort(by: {
    return $0 > $1
})
print(country)

country.sort(by:  > )

var  s = country.map{(str)->String in
    if str.count == 5
    {
        return str
        
    }
    return String() // it will display the string with char count =5 and all other with empty Stringd
}
print(s)

s = country.map{(str)-> String in
    return "\(str.count) - \(str)" // it will display the elements with its char count
}

print(s)

s = country.filter{(str ) -> Bool in return str.count == 5}//filter vthe elements with str char =5
print(s)

country .remove(at: 1)
print(country)// remove the character at index 1

country.
