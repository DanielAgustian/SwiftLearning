//
//  Router.swift
//  SwiftFundamentals
//
//  Created by Daniel Agustian Yoali on 24/02/26.
//

import Foundation
import SwiftUI

enum Routes {
    case home
    case textPage
    case weather
}

class Router: ObservableObject {
    @Published var navigationPath = NavigationPath()
    func navigate(to route: Routes) {
        print("Navigating to \(route)")
        navigationPath.append(route)
    }
    func pop() {
        navigationPath.removeLast()
    }
    func popUntilLast() {
        navigationPath.removeLast(navigationPath.count - 1)
    }
    func clear() {
        navigationPath = NavigationPath()
    }
    
}
