//
//  Observable.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 22.12.2021.
//

import Foundation



class Observable<T> {
    
    private var listener: ((T) -> Void)?
    
    var value: T? {
        didSet {
            listener?(value!)
        }
    }
    
    
    init(_ value: T?) {
        self.value = value
    }
    
    
    func bind(_ listener: @escaping (T) -> Void) {
        //listener(value)
        self.listener = listener
    }
}
