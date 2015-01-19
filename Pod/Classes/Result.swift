//
//  Result.swift
//  Result
//
//  Created by Adam Szeptycki on 03/01/15.
//  Copyright (c) 2015 Adam Szeptycki. All rights reserved.
//

import Foundation

public enum Result<T> {
    
    case Success(@autoclosure() -> T)
    case Failure(NSError)
    
    public func chain<P>(function: T -> Result<P>) -> Result<P> {
        switch self {
        case Success(let value):
            let result = function(value())
            return result
        case Failure(let error):
            return .Failure(error)
        }
    }
    
}