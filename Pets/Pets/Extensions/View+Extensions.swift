import Foundation
import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
    
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
}
