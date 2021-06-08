//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by joao camargo on 08/06/21.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }) {
                Image(systemName: "xmark").foregroundColor(Color.white).frame(width: 40, height: 40, alignment: .topTrailing)
            }
            
            Spacer()
            FrameworkDetailView(framework: Framework(name: "Teste", imageName: "app-clip",urlString: "", description: "dsfdsfsdfsfdsdfdsfsdfsfddsfdsfsdfsfdsdfdsfsdfsfd dsfdsfsdfsfdsdfdsfsdfsfddsfdsfs dfsfdsdfdsfsdfsfddsfdsfsdfsfdsdfdsfsdfsfddsfdsfsdfsfdsdfdsfsdf sfddsfdsfsdfsfdsdfdsfsdfsfddsfdsfsdfsfdsdfdsfsdfs fddsfdsfsdfsfdsdfdsfsdfsfddsfdsfsdfsfdsdfdsfsdfsfddsf dsfsdfsfdsdfdsf sdfsfddsfdsf sdfsfdsdfdsfsdfsfdd sfdsfsdfsfdsdfdsfsdfsfd"))
            Spacer()
           
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Learn More").padding().frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .font(.headline)
                    .cornerRadius(10.0)
            })
            
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
            .preferredColorScheme(.dark)
    }
}


struct FrameworkDetailView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName).resizable().frame(width: 90, height: 90, alignment: .center)
            Text(framework.name).font(.title2).fontWeight(.semibold).scaledToFit().minimumScaleFactor(0.5)
            Text(framework.description).padding()
        }.padding()
    }
}
