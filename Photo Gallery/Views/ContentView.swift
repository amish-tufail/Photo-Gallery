//
//  ContentView.swift
//  Photo Gallery
//
//  Created by Amish Tufail on 25/01/2023.
//

import SwiftUI

struct ContentView: View {
    let gridLayout: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    @State var openMenu: Bool = false
    @State var aboutLink: Bool = false
    @State var licenseLink: Bool = false
    @State var privacyLink: Bool = false
    @State var iconLink: Bool = false
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            ScrollView {
                LazyVGrid(columns: gridLayout) {
                    ForEach(1...10, id: \.self) { _ in
                        NavigationLink {
                            PhotoDetailView()
                        } label: {
                            Color.orange
                                .frame(width: size.width/2, height: size.height/2)
                        }
                    }
                }
                HStack {
                    VStack(spacing: 10.0) {
                        Text("The Gallery App")
                            .foregroundColor(.white)
                            .font(.system(.callout, design: .monospaced))
                            .background(
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 145.0, height: 1.0)
                                    .offset(y: 12.0)
                            )
                        Text("See what's coming in the next update")
                            .font(.system(.caption, design: .monospaced))
                            .multilineTextAlignment(.center)
                        Link("Follow Amish on the Instagram", destination: URL(string: "https://instagram.com/bisckoot")!)
                            .foregroundColor(.blue)
                            .font(.system(.footnote, design: .monospaced))
                    }
                }
                NavigationLink(destination: AboutPageView(), isActive: $aboutLink) {
                    EmptyView()
                }
                NavigationLink(destination: LicenseAgreementView(), isActive: $licenseLink) {
                    EmptyView()
                }
                NavigationLink(destination: PrivacyAgreementView(), isActive: $privacyLink) {
                    EmptyView()
                }
                NavigationLink(destination: AppIconView(), isActive: $iconLink) {
                    EmptyView()
                }
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        openMenu = true
                    } label: {
                        Image(systemName: "chevron.down")
                            .font(.system(.title2, design: .monospaced))
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $openMenu, content: {
            GeometryReader { proxy in
                ZStack {
                    Color.white.opacity(0.0)
                    VStack {
                        Spacer()
                        VStack(spacing: 60.0) {
                            MenuButton(open: $aboutLink, text: "About", closeMenu: $openMenu)
                            MenuButton(open: $iconLink, text: "App Icon", closeMenu: $openMenu)
                            MenuButton(open: $licenseLink, text: "License Agreement", closeMenu: $openMenu)
                            MenuButton(open: $privacyLink, text: "Privacy Policy", closeMenu: $openMenu)
                        }
                        Spacer()
                        Text("App Version 1.0")
                            .font(.system(.subheadline, design: .monospaced))
                            .foregroundColor(.white)
                            .padding(20.0)
                            .padding(.bottom, proxy.safeAreaInsets.bottom)
                    }
                    Button {
                        openMenu = false
                    } label: {
                        Image(systemName: "chevron.up")
                            .font(.system(.title, design: .monospaced))
                            .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding(.top, proxy.safeAreaInsets.top + 10.0)
                    .padding(.trailing)
                }
                .background(BackgroundClearView())
                .ignoresSafeArea()
            }
        })
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MenuButton: View {
    @Binding var open: Bool
    var text: String
    @Binding var closeMenu: Bool
    var body: some View {
        Button {
            closeMenu = false
            open = true
        } label: {
            Text(text)
                .font(.system(.title3, design: .monospaced))
                .foregroundColor(.white)
        }
    }
}
