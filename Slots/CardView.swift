//
//  CardView.swift
//  Slots
//
//  Created by Manav on 12/01/21.
//

import SwiftUI

struct CardView: View {
    
    @Binding var imageName: String
    @Binding var backgroundColor: Color
    var body: some View {
        
        Image("\(imageName)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .background(backgroundColor.opacity(0.5))
            .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: Binding.constant("star"), backgroundColor: Binding.constant(Color.green))
    }
}
