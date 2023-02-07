import Foundation
import SwiftUI

struct CarouselComponent: UIComponent {
    let uiModel: CarouselUIModel
    var uniqueId: String {
        ComponentType.carousel.rawValue
    }
    
    func render() -> AnyView {
        CarouselView(uiModel: uiModel).toAnyView()
    }
}
