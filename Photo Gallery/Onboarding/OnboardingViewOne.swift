//
//  OnboardingViewOne.swift
//  Photo Gallery
//
//  Created by Amish Tufail on 25/01/2023.
//

import SwiftUI

struct OnboardingViewOne: View {
    @State var isActive: Bool = false
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Thank You for joining my Photo Gallery App.")
                        .foregroundColor(.white)
                        .font(.system(.title2, design: .monospaced, weight: .semibold))
                        .multilineTextAlignment(.center)
                    Spacer()
                    NavigationLink(isActive: $isActive) {
                        OnboardingViewTwo()
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
}

struct OnboardingViewOne_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewOne()
    }
}
