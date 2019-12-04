//
//  Coordinator.swift
//  CoinConverterReceipt
//
//  Created by Renan Silveira on 04/12/19.
//

import UIKit
import SwiftCore

final public class CoinConverterReceiptCoordinator: Coordinator {

    public var childCoordinators = [Coordinator]()
    let configuration: CoordinatorConfiguration
    weak var navigationController: UINavigationController?

    required public init(withConfiguration configuration: CoordinatorConfiguration) {
        self.configuration = configuration
        self.navigationController = configuration.navigationController
    }

    public func start() {
        let controller = CoinConverterReceiptViewController.instanciate(withViewModel: CoinConverterReceiptViewModel())
        controller.navigateBack = navigateBack
        navigationController?.present(controller, animated: true)
    }
}

// MARK: - Coordinator methods

extension CoinConverterReceiptCoordinator {

    private func navigateBack() {
        navigationController?.dismiss(animated: true)
    }
}
