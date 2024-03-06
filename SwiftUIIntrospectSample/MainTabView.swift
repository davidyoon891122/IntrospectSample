//
//  MainTabView.swift
//  SwiftUIIntrospectSample
//
//  Created by Davidyoon on 3/6/24.
//

import SwiftUI
@_spi(Advanced) import SwiftUIIntrospect

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Text("Home") }
            SettingView()
                .tabItem { Text("Settings") }
        }
    }
}

#Preview {
    MainTabView()
}
