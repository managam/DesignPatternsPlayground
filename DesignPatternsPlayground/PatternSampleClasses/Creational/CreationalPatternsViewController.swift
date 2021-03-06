//
//  CreationalPatternsViewController.swift
//  DesignPatternsPlayground
//
//  Created by Ricardo Pramana Suranta on 12/23/15.
//  Copyright © 2015 Ricardo Pramana Suranta. All rights reserved.
//

import UIKit

class CreationalPatternsViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet private weak var tableView: UITableView!
    
    private var tableController: PatternTypeTableController!
    
    // MARK: - UIViewController -
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBarHidden = false
        title = "Creational Design Patterns"
        
        tableView.backgroundColor = view.backgroundColor
        
        tableController = PatternTypeTableController(
            tableView: tableView,
            patternGroupType: .Creational
        )
        
        tableController.patternTypeSelectedClosure = {
            [weak self] patternType in
            
            print("Selected pattern: \(patternType)")
            
            if let creationalType = patternType as? CreationalPatternType {
                self?.pushPageForPatternType(creationalType)
            }
        }
        
    }
    
    // MARK: - Private Methods -
    
    private func pushPageForPatternType(patternType: CreationalPatternType) {

        var viewController: UIViewController?
        
        switch patternType {
        case .AbstractFactory: viewController = AbstractFactorySampleViewController()
        case .FactoryMethod: viewController = FactoryMethodSampleViewController()
        case .Builder: viewController = BuilderSampleViewController()
        case .Prototype: viewController = PrototypeSampleViewController()
        case .Singleton: viewController = SingletonSampleViewController()
        }
        
        if let viewController = viewController {
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
