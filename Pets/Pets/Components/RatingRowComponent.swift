import Foundation
import SwiftUI

struct RatingRowComponent: UIComponent {
    let uiModel: RatingRowUIModel
    var id = UUID()
    
    func render() -> AnyView {
        RatingView(rating: .constant(uiModel.rating)).toAnyView()
    }
}
