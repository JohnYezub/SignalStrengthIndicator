//
//  ContentView.swift
//  SignalStrengthIndicator
//
//  Created by Yevgeny Yezub on 17/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SignalStrenthIndicator(levelValue: .lowSignal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
