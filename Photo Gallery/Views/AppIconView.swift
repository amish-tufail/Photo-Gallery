//
//  AppIconView.swift
//  Photo Gallery
//
//  Created by Amish Tufail on 25/01/2023.
//

import SwiftUI

struct AppIconView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("App Icon")
                    .font(.system(.title2, design: .monospaced))
                    .padding()
                Text("Select your home screen icon".uppercased())
                    .font(.system(.subheadline, design: .monospaced))
                    .foregroundColor(.secondary)
                    .padding()
                GroupBox {
                    HStack {
                        Text("Black")
                        Spacer()
                        Image(systemName: "checkmark")
                            .foregroundColor(.blue)
                    }
                    Divider()
                    HStack {
                        Text("Light")
                        Spacer()
                    }
                }
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

struct AppIconView_Previews: PreviewProvider {
    static var previews: some View {
        AppIconView()
    }
}
