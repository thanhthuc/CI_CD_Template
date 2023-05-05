//
//  ViewModel.swift
//  ExampleApp
//
//  Created by Nguyen Thanh Thuc on 25/04/2023.
//

import Foundation

public struct ViewModel {
    
    public func isAllEven(x: Int, y: Int) -> Bool {
        if x % 2 == 0 && y % 2 == 0 {
            return true
        }
        return false
    }
    
}
