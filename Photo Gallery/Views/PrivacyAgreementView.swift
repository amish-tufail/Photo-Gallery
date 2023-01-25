//
//  PrivacyAgreementView.swift
//  Photo Gallery
//
//  Created by Amish Tufail on 25/01/2023.
//

import SwiftUI

struct PrivacyAgreementView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Privacy Policy")
                    .font(.system(.title2, design: .monospaced))
                    .padding()
                Text("Last updated: January 25, 2023")
                    .font(.system(.subheadline, design: .monospaced))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("Photo Gallery App doesn't collect or share any kind of user data.")
                    .font(.system(.subheadline, design: .monospaced))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding()
            }
            Spacer()
        }
        .overlay(
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.system(.title2, design: .monospaced))
                    .foregroundColor(.white)
                    .padding()
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        )
        .navigationBarBackButtonHidden(true)
    }
}

struct PrivacyAgreementView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyAgreementView()
    }
}
