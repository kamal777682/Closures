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

country.max()
