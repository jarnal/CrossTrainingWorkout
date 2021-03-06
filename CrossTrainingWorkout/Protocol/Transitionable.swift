//
//  Transitionable.swift
//  CrossTrainingWorkout
//
//  Created by Jonathan Arnal on 05/11/2018.
//  Copyright © 2018 Nouveal. All rights reserved.
//

import UIKit

protocol CommonStateTransitionable: Debuggable, Loadable, Failable {}
extension CommonStateTransitionable where Self: UIViewController {
    
    /// ↔️ Transition to a common shared state (debug, loading, failure)
    ///
    /// - Parameter state: state to transition to
    func transition(toCommonState state: CommonControllerState) {
        
        switch state {
        case .debug(let message):
            transitionToDebugState(withMessage: message)
        case .failure(let message):
            transitionToFailureState(withMessage: message)
        case .loading(let message):
            transitionToLoadingState(withMessage: message)
        }
        
    }
}

//****************************************************
// MARK: - Transitionable
//****************************************************

protocol Transitionable: class, CommonStateTransitionable {
    var shownViewController: UIViewController? {get set}
}

extension Transitionable where Self: UIViewController {
    
    /// ↔️ Transition to a new controller
    ///
    /// - Parameter newState: new state to set
    func transition(toViewController controller: UIViewController) {
        shownViewController?.remove()
        
        add(controller)
        shownViewController = controller
    }
}

//****************************************************
// MARK: - Debuggable
//****************************************************

protocol Debuggable {}
extension Debuggable where Self: UIViewController {
    
    /// ℹ️ Show debug screen with a specific message
    ///
    /// - Parameter message: message to show inside popup
    fileprivate func transitionToDebugState(withMessage message: String?) {
        
        let alert = UIAlertController(title: "Debug", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            alert.dismiss(animated: false, completion: nil)
        }
        alert.addAction(okAction)
        
        DispatchQueue.main.async {
            self.present(alert, animated: false)
        }
    }
    
}

//****************************************************
// MARK: - Loadable
//****************************************************

protocol Loadable {}
extension Loadable where Self: UIViewController {
    
    /// ⌛️ Show loading screen with a specific message
    ///
    /// - Parameter message: message to show inside popup
    fileprivate func transitionToLoadingState(withMessage message: String?) {
        
        let alert = UIAlertController(title: "Debug", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            alert.dismiss(animated: false, completion: nil)
        }
        alert.addAction(okAction)
        
        DispatchQueue.main.async {
            self.present(alert, animated: false)
        }
    }
    
}

//****************************************************
// MARK: - Failable
//****************************************************

protocol Failable {}
extension Failable where Self: UIViewController {
    
    /// ⚠️ Show failure screen with a specific message
    ///
    /// - Parameter message: message to show inside popup
    fileprivate func transitionToFailureState(withMessage message: String){
        
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            alert.dismiss(animated: false, completion: nil)
        }
        alert.addAction(okAction)
        
        DispatchQueue.main.async {
            self.present(alert, animated: false)
        }
    }
    
}
