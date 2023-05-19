/*

Project: SwiftExtension
File: CVarArg+Method+ToString.swift
Created by: Егор Бойко
Date: 19.05.2023

Status: #Complete

*/

import SwiftUI

public extension CVarArg where Self: BinaryFloatingPoint {
    func toString(afterPoint: Int) -> String {
        String(format: "%.\(afterPoint)f", self)
    }
}
