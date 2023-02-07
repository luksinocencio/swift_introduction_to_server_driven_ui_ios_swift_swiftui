import SwiftUI

@main
struct PetsApp: App {
    var body: some Scene {
        WindowGroup {
            let _ = UserDefaults.standard.set(false, forKey: "_UIConstraintBaseLayoutLogUnstisable")
            ContentView()
        }
    }
}
