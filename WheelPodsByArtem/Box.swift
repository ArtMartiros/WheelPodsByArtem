//
//  Box.swift
//  WheeleDemo
//
//  Created by Artem Martirosyan on 11/07/2019.
//  Copyright © 2019 Artem Martirosyan. All rights reserved.
//

import Foundation

public class Box<T> {
    public typealias Listener = (T) -> Void
    public var listener: Listener?
    public var value: T {
        didSet {
            listener?(value)
        }
    }
    
    
    public init(_ value: T) {
        self.value = value
    }
    
    public func bind(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
