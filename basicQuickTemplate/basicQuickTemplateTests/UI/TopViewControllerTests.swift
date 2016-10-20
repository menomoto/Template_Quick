import UIKit
import Quick
import Nimble

@testable import basicQuickTemplate


class TopViewControllerTests: QuickSpec {
    override func spec() {
        
        describe("TopViewController") {
            var topViewController: TopViewController?
            beforeEach {
                topViewController = TopViewController(labelText: "UILabel text matcher")
            }
            
            it("UILabel text set is correct") {
                let expectedText = "UILabel text matcher"
                
                
                expect(isContainUILabelWithText(topViewController!.view, text: expectedText)).to(beTrue())
            }
            

        }
    }
}

private func isContainUILabelWithText(view: UIView, text: String) -> Bool {

    for subview in view.subviews {
        if let label = subview as? UILabel where label.text == text {
            return true
        }
        if isContainUILabelWithText(subview, text: text) {
            return true
        }
    }
    return false
}
