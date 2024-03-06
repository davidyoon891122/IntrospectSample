//
//  HomeView.swift
//  SwiftUIIntrospectSample
//
//  Created by Davidyoon on 3/6/24.
//

import SwiftUI
@_spi(Advanced) import SwiftUIIntrospect

struct HomeView: View {
    
    @State private var isRootActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: HomeSubView(isRootActive: $isRootActive), isActive: $isRootActive , label: {
                    Text("Go to the HomeSubView")
                })
            }
            .navigationTitle("Home")
            .introspect(.tabView, on: .iOS(.v14...), scope: .ancestor) {
                $0.tabBar.isHidden = false
            }
        }
    }
}

#Preview {
    HomeView()
}
