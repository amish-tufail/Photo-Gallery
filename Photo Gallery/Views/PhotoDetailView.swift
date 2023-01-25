//
//  PhotoDetailView.swift
//  Photo Gallery
//
//  Created by Amish Tufail on 25/01/2023.
//

import SwiftUI

struct PhotoDetailView: View {
    @State var download: Bool = false
    @State var add: Bool = false
    @State var save: Bool = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .font(.system(.title2, design: .monospaced))
                    .foregroundColor(.white)
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            Button {
                withAnimation(.easeIn(duration: 0.1)) {
                    download = true
                }
            } label: {
                Image(systemName: "square.and.arrow.down")
                    .font(.system(.title2, design: .monospaced))
                    .foregroundColor(.white)
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            if download {
                PopUpMenu(download: $download, add: $add)
                    .opacity(download ? 1.0 : 0.0)
                    .offset(y: download ? 0.0 : 600.0)
                    .transition(.move(edge: .bottom))
            }
            if add {
                AllowMenu(save: $save, add: $add)
                    .opacity(add ? 1.0 : 0.0)
            }
            if save {
                Saved()
                    .opacity(save ? 1.0 : 0.0)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView()
    }
}

struct PopUpMenu: View {
    @Binding var download: Bool
    @Binding var add: Bool
    var body: some View {
        VStack {
            VStack(spacing: 5.0) {
                Text("Image License")
                    .font(.system(.headline, design: .monospaced))
                Text("By downloading any of these images, you agree to be bound by Photo Gallery End User License Agreement")
                    .font(.system(.subheadline, design: .monospaced))
                    .multilineTextAlignment(.center)
            }
            Divider()
            VStack {
                Button {
                    
                } label: {
                    Text("Exit")
                }
                Divider()
                Button {
                    
                } label: {
                    Text("View Agreement")
                }
                Divider()
                Button {
                    withAnimation(.easeIn(duration: 0.1)) {
                        add = true
                        download = false
                    }
                } label: {
                    Text("Download")
                }
            }
            .font(.system(.headline, design: .monospaced))
        }
        .foregroundColor(.black)
        .padding()
        .frame(width: UIScreen.main.bounds.size.width - 100.0)
        .background(
            RoundedRectangle(cornerRadius: 12.0, style: .continuous)
                .fill(.white)
        )
        .padding()
    }
}

struct AllowMenu: View {
    @Binding var save: Bool
    @Binding var add: Bool
    var body: some View {
        VStack {
            VStack(spacing: 5.0) {
                Text("\"Photo Gallery\" Would Like to Add your Photos.")
                    .font(.system(.headline, design: .monospaced))
                Text("Photo Gallery needs permission to Photos so it can save wallpapers.")
                    .font(.system(.subheadline, design: .monospaced))
                    .multilineTextAlignment(.center)
                    .layoutPriority(1.0)
            }
            Divider()
            HStack {
                Button {
                    add = false
                } label: {
                    Text("Don't Allow")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                Divider()
                Button {
                    withAnimation(.easeIn(duration: 0.1)) {
                        save = true
                        add = false
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            save = false
                        }
                    }
                } label: {
                    Text("Ok")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.trailing)
            }
            .font(.system(.subheadline, design: .monospaced))
            .frame(height: 30.0)
        }
        .foregroundColor(.black)
        .padding()
        .frame(width: UIScreen.main.bounds.size.width - 100.0)
        .background(
            RoundedRectangle(cornerRadius: 12.0, style: .continuous)
                .fill(.white)
        )
        .padding()
    }
}

struct Saved: View {
    var body: some View {
        VStack {
            VStack(spacing: 5.0) {
                Text("Wallpaper saved to Photos.")
                    .font(.system(.headline, design: .monospaced))
            }
        }
        .foregroundColor(.black)
        .padding()
        .frame(width: UIScreen.main.bounds.size.width - 80.0)
        .background(
            RoundedRectangle(cornerRadius: 12.0, style: .continuous)
                .fill(.white)
        )
        .padding()
    }
}
