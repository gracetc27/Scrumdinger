//
//  Theme.swift
//  Scrumdinger
//
//  Created by Grace couch on 15/03/2024.
//

import SwiftUI
import UIKit

enum Theme: String, CaseIterable, Identifiable, Codable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow


    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    var mainColor: Color {
        switch self {
        case .bubblegum:
            Color.bubblegum
        case .buttercup:
            Color.buttercup
        case .indigo:
            Color.indigo
        case .lavender:
            Color.lavender
        case .magenta:
            Color(uiColor: .magenta)
        case .navy:
            Color.navy
        case .orange:
            Color.orange
        case .oxblood:
            Color.oxblood
        case .periwinkle:
            Color.periwinkle
        case .poppy:
            Color.poppy
        case .purple:
            Color.purple
        case .seafoam:
            Color.seafoam
        case .sky:
            Color.sky
        case .tan:
            Color.tan
        case .teal:
            Color.teal
        case .yellow:
            Color.yellow
        }
    }
    var name: String {
        rawValue.capitalized
    }
    var id: String {
        name
    }
}
