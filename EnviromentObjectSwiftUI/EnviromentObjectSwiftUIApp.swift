//
//  EnviromentObjectSwiftUIApp.swift
//  EnviromentObjectSwiftUI
//
//  Created by naresh kukkala on 28/04/22.
//

import SwiftUI

@main
struct EnviromentObjectSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            let settings = Settings()
            ContentView().environmentObject(settings)
        }
    }
}
