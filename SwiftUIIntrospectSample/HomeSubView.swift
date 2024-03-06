//
//  HomeSubView.swift
//  SwiftUIIntrospectSample
//
//  Created by Davidyoon on 3/6/24.
//

import SwiftUI
@_spi(Advanced) import SwiftUIIntrospect

struct HomeSubView: View {
    
    @Binding var isRootActive: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                isRootActive.toggle()
            }, label: {
                Text("Deactivate root")
            })
        }
        .navigationTitle("HomeSubView")
        .introspect(.tabView, on: .iOS(.v14...), scope: .ancestor) {
            $0.tabBar.isHidden = true
        }
    }
}

#Preview {
    HomeSubView(isRootActive: .constant(true))
}
