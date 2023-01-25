//
//  AboutPageView.swift
//  Photo Gallery
//
//  Created by Amish Tufail on 25/01/2023.
//

import SwiftUI

struct AboutPageView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("About Amish")
                    .font(.system(.title2, design: .monospaced))
                    .padding()
                Text("Lorem ipsum dolor sit amet. Qui quidem fuga non cumque quam ex harum officiis ut rerum similique et facilis dolore sed amet nihil. Cum quia ullam et perferendis culpa sit distinctio alias aut dolorum quisquam ut voluptatem earum.")
                    .font(.system(.subheadline, design: .monospaced))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("Lorem ipsum dolor sit amet. Qui quidem fuga non cumque quam ex harum officiis ut rerum similique et facilis dolore sed amet nihil.")
                    .font(.system(.subheadline, design: .monospaced))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("Thank You so much for reading using my Gallery App.")
                    .font(.system(.subheadline, design: .monospaced))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
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

struct AboutPageView_Previews: PreviewProvider {
    static var previews: some View {
        AboutPageView()
    }
}
