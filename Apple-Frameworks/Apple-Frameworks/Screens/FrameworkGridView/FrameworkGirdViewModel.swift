//
//  FrameworkGirdViewModel.swift
//  Apple-Frameworks
//
//  Created by joao camargo on 08/06/21.
//

import SwiftUI


class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()),  GridItem(.flexible())]

    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
}
