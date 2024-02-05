import UIKit

class SceneDelegate: NSObject, UIWindowSceneDelegate {
    
    private let quickActionController = QuickActionController.shared
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let shortcutItem = connectionOptions.shortcutItem {
            quickActionController.action = QuickAction(shortcutItem: shortcutItem)
        }
    }
    
    func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        
        quickActionController.action = QuickAction(shortcutItem: shortcutItem)
        completionHandler(true)
    }
}
