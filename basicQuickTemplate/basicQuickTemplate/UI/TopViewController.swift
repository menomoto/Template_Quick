
import UIKit
import PureLayout

class TopViewController: UIViewController {
    
    
    // MARK: - Properties
    fileprivate var labelText: String
    
    // MARK: - View Elements
    fileprivate let label: UILabel
    
    // MARK: - Initializers
    init(
        labelText: String
        )
    {
        self.labelText = labelText
        
        label = UILabel.newAutoLayout()
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        addSubviews()
        addConstraints()
        configureSubviews()
        
    }
    
    // MARK: - View Setup    
    fileprivate func addSubviews() {
        view.addSubview(label)
    }
    
    fileprivate func addConstraints() {
        label.autoPin(toTopLayoutGuideOf: self, withInset: 10.0)
        label.autoPinEdge(toSuperviewEdge: .left, withInset: 10.0)
        label.autoPinEdge(toSuperviewEdge: .right, withInset: 10.0)
    }
    
    fileprivate func configureSubviews() {
        label.text = labelText
    }
    
}
