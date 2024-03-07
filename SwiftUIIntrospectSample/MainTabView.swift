//
//  MainTabView.swift
//  SwiftUIIntrospectSample
//
//  Created by Davidyoon on 3/6/24.
//

import SwiftUI
@_spi(Advanced) import SwiftUIIntrospect

struct MainTabView: View {
    @EnvironmentObject var navigator: RootNavigator
    
    @State private var selectionType: Int = 0
    
    var body: some View {
        TabView(selection: $selectionType) {
            HomeView()
                .tabItem { Text("Home") }
                .tag(0)
            SettingView()
                .tabItem { Text("Settings") }
                .tag(1)
        }
    }
}

#Preview {
    MainTabView()
}
