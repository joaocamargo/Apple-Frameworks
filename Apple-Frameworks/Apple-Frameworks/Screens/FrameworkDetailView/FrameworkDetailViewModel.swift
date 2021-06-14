//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by joao camargo on 14/06/21.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
    var isShowingDetailView: Binding<Bool>
    
    @Published var isShowingSafariView = false
    
    
    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }
    
}
