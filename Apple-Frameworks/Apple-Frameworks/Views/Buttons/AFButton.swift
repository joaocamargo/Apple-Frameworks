//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by joao camargo on 08/06/21.
//

import SwiftUI

struct AFButton: View {
    
    var text: String
    
    var body: some View {
        Text(text).frame(width: 280, height: 50, alignment: .center).font(.title2)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10.0)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(text: "Learn More")
    }
}
