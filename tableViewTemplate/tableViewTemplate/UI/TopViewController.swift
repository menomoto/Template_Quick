
import UIKit
import PureLayout

class TopViewController: UIViewController {
    
    
    // MARK: - Properties
    fileprivate var labelText: String
    
    // MARK: - View Elements
    fileprivate let label: UILabel
    let tableView: UITableView
    let deleteButton: UIButton
    
    // MARK: - Initializers
    init(
        labelText: String
        )
    {
        self.labelText = labelText
        
        label = UILabel.newAutoLayout()
        tableView = UITableView()
        deleteButton = UIButton(type: .system)
        
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
        view.addSubview(deleteButton)
        view.addSubview(tableView)
    }
    
    fileprivate func addConstraints() {
        label.autoPin(toTopLayoutGuideOf: self, withInset: 10.0)
        label.autoPinEdge(toSuperviewEdge: .left, withInset: 10.0)
        label.autoPinEdge(toSuperviewEdge: .right, withInset: 10.0)
        
        deleteButton.autoPin(toTopLayoutGuideOf: self, withInset: 15.0)
        deleteButton.autoPinEdge(toSuperviewEdge: .right, withInset: 15.0)
        deleteButton.autoSetDimensions(to: CGSize(width: 10.0, height: 10.0))
        
        tableView.autoPinEdge(.top, to: .bottom, of: label, withOffset: 10.0)
        tableView.autoPinEdge(toSuperviewEdge: .left)
        tableView.autoPinEdge(toSuperviewEdge: .right)
        tableView.autoPinEdge(toSuperviewEdge: .bottom)
    }
    
    fileprivate func configureSubviews() {
        label.text = labelText
        deleteButton.setTitle("☓", for: .normal)
        deleteButton.layer.borderColor = UIColor.blue.cgColor
        deleteButton.layer.borderWidth = 1.0
        deleteButton.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
     @objc fileprivate func didTapButton(_ sender: AnyObject) {
        tableView.isHidden = true
    }
}

extension TopViewController: UITableViewDelegate {
    
}

extension TopViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 2
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = TextCell()
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = "tableView Header Title"
        case 1:
            cell.textLabel?.text = "body text " + String(indexPath.row)
        default:
            return cell
        }
        return cell
    }
}
