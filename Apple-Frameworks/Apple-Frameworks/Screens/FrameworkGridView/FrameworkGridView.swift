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
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(items) { element in
                        FrameworkTitleView(framework: element).onTapGesture {
                            viewModel.selectedFramework = element
                        }
                    }
                }
            }.navigationBarTitle("🍎 Frameworks").padding()
            .sheet(isPresented: $viewModel.isShowingDetailView){
                DetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView))
            }
        }
    }
    
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


