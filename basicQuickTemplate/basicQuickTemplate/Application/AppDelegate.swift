import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(
        application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?
        ) -> Bool
    {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
     
        let viewController = TopViewController(labelText: "Pure Layout Sample 01")
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        return true
    }
    

}

class TestingAppDelegate: UIResponder, UIApplicationDelegate { }
