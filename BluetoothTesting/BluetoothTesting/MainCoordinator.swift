//
//  MainCoordinator.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 09.09.2023.
//

import Foundation
import UIKit
import SwiftUI

class MainCoordinator {
    let navigationController: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigationController = navigation
    }
    
    func start() {
        let view = OnboardingFirtView(nextPage: secondOnboarding)
        let controller = UIHostingController(rootView: view)
        navigationController.setViewControllers([controller], animated: true)
    }
    
    func secondOnboarding() {
        let view = OnboardingSecondView(nextPage: thirdOnboarding)
        let controller = UIHostingController(rootView: view)
        navigationController.pushViewController(controller, animated: true)
    }
    
    func thirdOnboarding() {
        let view = OnboardingThirdView(nextPage: openPaymentChoice)
        let controller = UIHostingController(rootView: view)
        navigationController.pushViewController(controller, animated: true)
    }
    
    func openPaymentChoice() {
        let view = HomepageView()
        let controller = UIHostingController(rootView: view)
        controller.navigationItem.setHidesBackButton(true, animated: false)
        navigationController.pushViewController(controller, animated: true)
    }
    
    func openHomePage() {
        
    }
}
