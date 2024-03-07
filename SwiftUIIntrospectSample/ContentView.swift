//
//  ContentView.swift
//  SwiftUIIntrospectSample
//
//  Created by Davidyoon on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var rootNavigator = RootNavigator()
    
    var body: some View {
        MainTabView()
            .environmentObject(rootNavigator)
    }
}

#Preview {
    ContentView()
}
