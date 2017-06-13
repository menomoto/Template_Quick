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
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_topViewController() {
        let topViewController = TopViewController(labelText: "UILabel text matcher")
        
        
        let expectedText = "UILabel text matcher"
        XCTAssertTrue(isContainUILabelWithText(topViewController.view, text: expectedText))
    }
    
    func test_tableViewDataSource() {
        let topViewController = TopViewController(labelText: "UILabel text matcher")

        
        XCTAssertNotNil(topViewController.tableView)
        XCTAssertEqual(topViewController.tableView.numberOfSections, 1)
        
        topViewController.viewDidLoad()
        XCTAssertEqual(topViewController.tableView.numberOfRows(inSection: 0), 2)
    }
    
    func test_deleteButton() {
        let topViewController = TopViewController(labelText: "UILabel text matcher")

        XCTAssertNotNil(topViewController.deleteButton)
        
        topViewController.viewDidLoad()
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

