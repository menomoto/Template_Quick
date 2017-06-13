import UIKit

class TextCell: UITableViewCell {

    static func convert (_ dateString: String) -> Date? {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE, dd MMM yyyy hh:mm:ss +zzzz"
        return dateFormatter.date(from: dateString)
    }
    
    static func convertDay(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "M/d"
        return dateFormatter.string(from: date)
    }
}

