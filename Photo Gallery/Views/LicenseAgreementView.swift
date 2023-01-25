//
//  LicenseAgreementView.swift
//  Photo Gallery
//
//  Created by Amish Tufail on 25/01/2023.
//

import SwiftUI

struct LicenseAgreementView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("License Agreement")
                    .lineSpacing(4.0)
                    .font(.system(.title2, design: .monospaced))
                    .padding()
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20.0) {
                        Text("Lorem ipsum dolor sit amet. Qui quidem fuga non cumque quam ex harum officiis ut rerum similique et facilis dolore sed amet nihil. Cum quia ullam et perferendis culpa sit distinctio alias aut dolorum quisquam ut voluptatem earum. Qui quidem fuga non cumque quam ex harum officiis ut rerum similique et facilis dolore sed amet nihil. Cum quia ullam et perferendis culpa sit distinctio alias aut dolorum quisquam ut voluptatem earum. Qui quidem fuga non cumque quam ex harum officiis ut rerum similique et facilis dolore sed amet nihil. Cum quia ullam et perferendis culpa sit distinctio alias aut dolorum quisquam ut voluptatem earum. Qui quidem fuga non cumque quam ex harum officiis ut rerum similique et facilis dolore sed amet nihil. Cum quia ullam et perferendis culpa sit distinctio alias aut dolorum quisquam ut voluptatem earum.")
                        Text("Lorem ipsum dolor sit amet. Qui quidem fuga non cumque quam ex harum officiis ut rerum similique et facilis dolore sed amet nihil.Qui quidem fuga non cumque quam ex harum officiis ut rerum similique et facilis dolore sed amet nihil. Cum quia ullam et perferendis culpa sit distinctio alias aut dolorum quisquam ut voluptatem earum. Qui quidem fuga non cumque quam ex harum officiis ut rerum similique et facilis dolore sed amet nihil. Cum quia ullam et perferendis culpa sit distinctio alias aut dolorum quisquam ut voluptatem earum. Qui quidem fuga non cumque quam ex harum officiis ut rerum similique et facilis dolore sed amet nihil. Cum quia ullam et perferendis culpa sit distinctio alias aut dolorum quisquam ut voluptatem earum.")
                        Text("Thank You so much for reading using the License Agreement of the Photo Gallery App.")
                    }
                    .font(.system(.subheadline, design: .monospaced))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding()
                }
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

struct LicenseAgreementView_Previews: PreviewProvider {
    static var previews: some View {
        LicenseAgreementView()
    }
}
