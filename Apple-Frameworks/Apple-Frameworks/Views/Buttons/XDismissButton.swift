//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by joao camargo on 09/06/21.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button {
                isShowingDetailView = false
                //presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark").foregroundColor(Color(.label)).imageScale(.large).frame(width: 44, height: 44)
            }
        }.padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
