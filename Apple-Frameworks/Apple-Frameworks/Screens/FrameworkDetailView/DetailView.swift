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

    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)

            
            Spacer()
            FrameworkDetailView(framework: framework)
            Spacer()
           
            Button{
                isShowingSafariView = true
            }
            label: {
                AFButton(text: "Learn More")
            }
            
            Spacer()
            
        }.fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "")!)
        })
        
    }
}

struct DetailView_Previews: PreviewProvider {
    
       
    static var previews: some View {
        DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
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
