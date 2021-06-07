//
//  ContentView.swift
//  Drawing Fin


import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        VStack {
            Circle()
            if show {
                ZappyCode().transition(.scale)
            }
            Circle()
            Button(action:{
                withAnimation {
                    self.show.toggle()
                }
            }) {
                Text("Animate")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
