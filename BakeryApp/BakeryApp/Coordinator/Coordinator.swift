//
//  Coordinator.swift
//  BakeryApp
//
//  Created by Abhishek Kumar on 18/03/22.
//

import Foundation
import UIKit


protocol Coordinator : AnyObject {
    var navigationController: UINavigationController { get set }
}

protocol ParentCoordinator : Coordinator {
    var childCoordinator: [ChildCoordinator] { get set }
    func configureRootViewController()
    func removeChildCoordinator(child: ChildCoordinator)
}

protocol ChildCoordinator : Coordinator {
    var parentCoordinator : ParentCoordinator? { get set }
    func configureChildViewController()
    func passParameter(value: Decodable)
}

extension ChildCoordinator {
    func passParameter(value: Decodable) {}
}
