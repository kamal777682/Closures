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
