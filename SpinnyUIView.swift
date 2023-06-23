//
//  SwiftUIView.swift
//  Gradient
//
//  Created by CSPrasad on 21/06/23.
//

import SwiftUI

struct HueRotationView: View {
    var body: some View {
         FinalView()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HueRotationView()
    }
}


struct FinalView: View {
    @State private var changeColor = false
    var body: some View {
        ZStack {
            Image("5").resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .hueRotation(.degrees(changeColor ? 45 : 1600))
                .animation(Animation.easeInOut(duration: 5).repeatForever(autoreverses: true))
                .onAppear() {
                    self.changeColor.toggle()
                }.ignoresSafeArea()
        }
    }
}
