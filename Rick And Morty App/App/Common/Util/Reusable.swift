//
//  Reusable.swift
//  Rick And Morty App
//
//  Created by User-P2 on 2/1/23.
//

protocol Reusable { }

extension Reusable {
    static var reusableIdentifier: String { String(describing: self)}
}
