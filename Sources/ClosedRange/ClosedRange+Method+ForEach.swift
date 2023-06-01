/*

Project: SwiftExtension
File: ClosedRange+Method+ForEach.swift
Created by: Егор Бойко
Date: 01.06.2023

Status: #Complete

*/

public extension ClosedRange where Bound == Int {
    ///Сalls the given closure for the element in the sequence according to the step
    ///
    ///     (0...30).forEach(step: 5){ value in
    ///         print(value)
    ///     }
    ///     //Print 0 5 10 15 20 25 30
    ///
    ///     (27...56).forEach(step: 6){ value in
    ///         print(value)
    ///     }
    ///     //Print 27 33 39 45 51
    ///
    ///     (-184...124).forEach(step: 76){ value in
    ///         print(value)
    ///     }
    ///     //-184 -108 -32 44 120
    ///
    func forEach(step: Int, _ body: @escaping (Int) throws -> ()) rethrows {
         var temp: Int = 0
         try self.forEach{ _ in
             if temp % step == 0 {
                 try body(self.lowerBound + temp)
             }
             temp += 1
         }
     }

}
