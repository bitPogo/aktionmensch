import UIKit

enum QuickActions: String {
    
    case lots = "lots"
    case gamblingWin = "win"
    case winNumbers = "numbers"
    case humans = "humans"
    
    
}

enum QuickAction: Equatable {
    
    case lots
    case gamblingWin
    case winNumbers
    case humans
    
    init?(shortcutItem: UIApplicationShortcutItem) {
        
        guard let action = QuickActions(rawValue: shortcutItem.type) else {
            return nil
        }
        
        switch action {
            case .lots:
                self = .lots
            case .gamblingWin:
                self = .gamblingWin
            case .winNumbers:
                self = .winNumbers
            case .humans:
                self = .humans
        }
    }
}

class QuickActionController: ObservableObject {
    
    static let shared = QuickActionController()
    @Published var action: QuickAction?
    
}
