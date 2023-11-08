//
//  DataStore.swift
//  animationApp
//
//  Created by Roman on 08.11.23.
//

import Foundation
import SpringAnimation


final class DataStore {
    
    static let shared = DataStore()
    
    let animations: [String] = AnimationPreset.allCases.map { $0.rawValue }
    let curves: [String] = AnimationCurve.allCases.map { $0.rawValue }

    private init() {}
}

