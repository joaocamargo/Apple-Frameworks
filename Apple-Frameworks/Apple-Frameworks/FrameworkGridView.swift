//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by joao camargo on 07/06/21.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()),  GridItem(.flexible())]
    
    var items = MockData.frameworks
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(items) { element in
                        FrameworkTitleView(framework: element)
                    }
                }
            }.navigationBarTitle("🍎 Frameworks").padding()
        }
    }
    
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName).resizable().frame(width: 90, height: 90, alignment: .center)
            Text(framework.name).font(.title2).fontWeight(.semibold).scaledToFit().minimumScaleFactor(0.5)
        }.padding()
    }
}