//
//  TopViewControllerTest.swift
//  tableViewTemplate
//
//  Created by menomoto on 2017/06/13.
//  Copyright © 2017年 menomoto. All rights reserved.
//

import XCTest

@testable import tableViewTemplate

class TopViewControllerTest: XCTestCase {
    
    var topViewController: TopViewController!
    
    override func setUp() {
        super.setUp()
        
        topViewController = TopViewController(labelText: "TableView template")
        topViewController.viewDidLoad()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_topViewController() {
        let expectedText = "TableView template"
        XCTAssertTrue(isContainUILabelWithText(topViewController.view, text: expectedText))
    }
    
    func test_tableViewNotNil() {
        XCTAssertNotNil(topViewController.tableView)
    }
    
    func test_tableViewNumberOfSections() {
        XCTAssertEqual(topViewController.tableView.numberOfSections, 2)
    }
    
    func test_tableViewSection0NumberOfRows() {
        XCTAssertEqual(topViewController.tableView.numberOfRows(inSection: 0), 1)
    }
        
    func test_tableViewHeaderTitle() {
        topViewController.tableView.reloadData()
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = topViewController.tableView.cellForRow(at: indexPath)
        XCTAssertEqual(cell!.textLabel?.text, "tableView Header Title")
    }
    
    func test_deleteButtonNotNil() {
        XCTAssertNotNil(topViewController.deleteButton)
    }
    
    func test_tapDeleteButton() {
        topViewController.deleteButton.sendActions(for: .touchUpInside)
        XCTAssertEqual(topViewController.tableView.isHidden, true)
    }
}

private func isContainUILabelWithText(_ view: UIView, text: String) -> Bool {
    
    for subview in view.subviews {
        if let label = subview as? UILabel, label.text == text {
            return true
        }
        if isContainUILabelWithText(subview, text: text) {
            return true
        }
    }
    return false
}

