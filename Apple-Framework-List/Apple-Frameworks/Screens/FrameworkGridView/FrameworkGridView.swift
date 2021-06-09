//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by joao camargo on 07/06/21.
//

import SwiftUI

struct FrameworkGridView: View {
    
    
    var items = MockData.frameworks
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(items) { element in
                    NavigationLink(destination: DetailView(framework: element, isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: element)
                    }
                }
            }
            .navigationBarTitle("🍎 Frameworks")//.padding()
        }.accentColor(Color(.label))
    }
    
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


