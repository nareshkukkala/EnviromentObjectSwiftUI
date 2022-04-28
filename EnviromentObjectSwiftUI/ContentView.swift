//
//  ContentView.swift
//  EnviromentObjectSwiftUI
//
//  Created by naresh kukkala on 28/04/22.
//

import SwiftUI

class Settings: ObservableObject {
    @Published var counter: Int = 0
}

struct ContentView: View {
    @EnvironmentObject var settings: Settings
    
    var body: some View {
        
        VStack {
            
            Text("\(settings.counter)")
                .font(.largeTitle)
            Button("Increment") {
                settings.counter += 1
            }
            
            AnotherCounterView()
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Settings())
    }
}
