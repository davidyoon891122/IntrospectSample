//
//  RootNavigator.swift
//  SwiftUIIntrospectSample
//
//  Created by Davidyoon on 3/7/24.
//

import Foundation

class RootNavigator: ObservableObject {

    @Published var isHomeActive: Bool = false
    @Published var isMyActive: Bool = false
    
    @Published var selectedType: Int = 0
    
}

extension RootNavigator {
    
    func popToHome() {
        self.isHomeActive = false
        self.selectedType = 0
    }
    
    func popToSetting() {
        self.isMyActive = false
        self.selectedType = 1
    }
    
    
}
