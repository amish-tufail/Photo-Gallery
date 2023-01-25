//
//  OnboardingViewTwo.swift
//  Photo Gallery
//
//  Created by Amish Tufail on 25/01/2023.
//

import SwiftUI

struct OnboardingViewTwo: View {
    @State var isActive: Bool = false
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Let's dive into the app.")
                    .foregroundColor(.white)
                    .font(.system(.title2, design: .monospaced, weight: .semibold))
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(isActive: $isActive) {
                    ContentView()
                } label: {
                    Button {
                        isActive = true
                    } label: {
                        Image(systemName: "chevron.right")
                            .font(.system(.largeTitle, design: .monospaced, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(24.0)                        
                    }
                    
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct OnboardingViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewTwo()
    }
}
