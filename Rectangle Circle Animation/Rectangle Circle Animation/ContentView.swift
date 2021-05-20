//
//  ContentView.swift
//  Rectangle Circle Animation
//
//  Created by Monique Shaqiri on 15.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var morph = false
    var body: some View {
       
      Rectangle()
        
        .frame(width: 300, height: 300)
        .foregroundColor(morph ? .blue : .green)
        .cornerRadius(morph ? 300/2 : 0)
        .animation(.spring(response: 7.0, dampingFraction: 1.0, blendDuration: 0.75))
        .onTapGesture {
            self.morph.toggle()
        }
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
