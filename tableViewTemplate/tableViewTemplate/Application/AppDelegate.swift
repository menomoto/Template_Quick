import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
        ) -> Bool
    {
        window = UIWindow(frame: UIScreen.main.bounds)
     
        let viewController = TopViewController(labelText: "TableView template")
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        return true
    }
    

}

class TestingAppDelegate: UIResponder, UIApplicationDelegate { }
