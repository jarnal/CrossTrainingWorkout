//
//  Session.swift
//  CrossNoonTraining
//
//  Created by Jonathan Arnal on 03/02/2018.
//  Copyright © 2018 Jonathan Arnal. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

protocol SessionResultable: Codable {
    
    associatedtype T: RealmCollectionValue
    var results: List<T>! { get set }
}

class Session: Object, Codable, SessionResultable {
    
    typealias T = Object
    
    // **************************************************************
    // MARK: - Variables
    // **************************************************************
    
    @objc dynamic var wod: Wod?
    @objc dynamic var date = Date()
    
    var results: List<T>!
    
    // **************************************************************
    // MARK: - Encodable
    // **************************************************************
    
    func encode(to encoder: Encoder) throws {
        
    }
    
    // **************************************************************
    // MARK: - Decodable
    // **************************************************************
    
    public required convenience init(from decoder: Decoder) throws {
        self.init()
    }
    
    override var description: String {
        guard let unwrappedWod = wod, let name = unwrappedWod.name else { return "" }
        return name
    }
}

class SessionAmrap: Session {
    typealias T = RoundResult
}

class SessionFinisher: Session {
    typealias T = TimeResult
}

class SessionForTime: Session {
    typealias T = TimeResult
}

class SessionEmom: Session {
    typealias T = EmomResult
}

enum SessionType: String {
    
    case amrap
    case forTime
    case emom
    case finisher
    
    var color: UIColor {
        
        guard let color = UIColor(named: String(describing: self.rawValue)) else { fatalError("No color defined for this type") }
        return color
    }
    
    var title: String {
        switch self {
        case .amrap:
            return "AMRAP"
        case .forTime:
            return "For time"
        case .emom:
            return "EMOM"
        case .finisher:
            return "Finisher"
        }
    }
}
