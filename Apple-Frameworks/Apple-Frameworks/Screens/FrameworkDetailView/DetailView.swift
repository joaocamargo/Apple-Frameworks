//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by joao camargo on 08/06/21.
//

import SwiftUI

struct DetailView: View {
    
    //@Environment(\.)
    @Environment(\.presentationMode) var presentationMode

    
    @ObservedObject var viewModel: FrameworkDetailViewModel

    
    var body: some View {
        VStack {
            
            XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)

            
            Spacer()
            FrameworkDetailView(framework: viewModel.framework)
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(text: "Learn More")
            }
            
           
//            Button{
//                viewModel.isShowingSafariView = true
//            }
//            label: {
//                AFButton(text: "Learn More")
//            }
            
            Spacer()
        }
//        }.fullScreenCover(isPresented: $viewModel.isShowingSafariView, content: {
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "")!)
//        })
        
    }
}

struct DetailView_Previews: PreviewProvider {
    
       
    static var previews: some View {
        DetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
            .preferredColorScheme(.dark)
    }
}


struct FrameworkDetailView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            FrameworkTitleView(framework: framework)
            Text(framework.description).font(.body).padding()
        }.padding()
    }
}
