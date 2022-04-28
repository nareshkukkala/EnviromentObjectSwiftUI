//
//  AnotherCounterView.swift
//  UnderstandingState
//
//  Created by Mohammad Azam on 12/1/21.
//

import SwiftUI

struct AnotherCounterView: View {
    
    @EnvironmentObject var settings: Settings
    
    var body: some View {
        VStack {
            Text("\(settings.counter)")
                .font(.largeTitle)
            Button("Increment [AnotherCounterView]") {
                settings.counter += 1
            }
        }
    }
}

struct AnotherCounterView_Previews: PreviewProvider {
    static var previews: some View {
        AnotherCounterView().environmentObject(Settings())
    }
}
