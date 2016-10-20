import UIKit
import PureLayout

class TopViewController: UIViewController {
    
    
    // MARK: - Properties
    var labelText: String
    
    // MARK: - View Elements
    let label: UILabel
    
    // MARK: - Initializers
    init(
        labelText: String
        )
    {
        self.labelText = labelText
        
        label = UILabel.newAutoLayoutView()
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        addSubviews()
        addConstraints()
        configureSubviews()
        
    }
    
    // MARK: - View Setup    
    private func addSubviews() {
        view.addSubview(label)
    }
    
    private func addConstraints() {
        label.autoPinToTopLayoutGuideOfViewController(self, withInset: 10.0)
        label.autoPinEdgeToSuperviewEdge(.Left, withInset: 10.0)
        label.autoPinEdgeToSuperviewEdge(.Right, withInset: 10.0)
    }
    
    private func configureSubviews() {
        label.text = labelText
    }
    
}
