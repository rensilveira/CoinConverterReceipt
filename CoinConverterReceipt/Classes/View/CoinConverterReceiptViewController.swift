//
//  CoinConverterReceipt.swift
//  FBSnapshotTestCase
//
//  Created by Renan Silveira on 04/12/19.
//

import UIKit
import SwiftCore

final class CoinConverterReceiptViewController: UIViewController, Coordinated, Storyboarded, Identifiable {

    // MARK: - Static properties

    static var storyboardName = "CoinConverterReceipt"

    // MARK: - Public properties

    var navigateBack: (() -> Void)?

//    var clientName: String {
//        get {
//            return clientNameLabel.text ?? ""
//        }
//
//        set {
//            clientNameLabel.text = newValue
//        }
//    }

    // MARK: - Private properties

    private var viewModel: CoinConverterReceiptViewModelProtocol?

    // MARK: - IBOutlets

//    @IBOutlet weak var clientNameLabel: UILabel!

    // MARK: - Initializer

    static func instanciate() -> CoinConverterReceiptViewController {
        return UIStoryboard.instanciate()
    }

    static func instanciate(withViewModel viewModel: CoinConverterReceiptViewModelProtocol) -> CoinConverterReceiptViewController {
        let viewController = CoinConverterReceiptViewController.instanciate()
        viewController.viewModel = viewModel
        return viewController
    }

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        bindProperties()
    }

    // MARK: - IBActions

    @IBAction private func dismissReceipt(_ sender: UIButton) {
        navigateBack?()
    }

    // MARK: - Private methods

    private func bindProperties() {
       // viewModel?.clientName.bind { [weak self] clientName in
       //   self?.clientName = clientName
       // }
    }
}

