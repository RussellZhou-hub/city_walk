//
//  ViewRouter.swift
//  city_walk
//
//  Created by VincentZhou on 2024/3/2.
//

import Foundation
import SwiftUI

enum Page {
  case home
  case my
}
class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
}
