//
//  SignalStrenthIndicator.swift
//  SwiftUINew
//
//  Created by Yevgeny Yezub on 17/04/23.
//

import SwiftUI

struct SignalStrenthIndicator: View {
    var levelValue: Level = .goodSignal

    private var signalColor: Color {
        switch levelValue {
        case .noSignal:
            return .gray
        case .lowSignal:
            return .red
        case .normalSignal:
            return .orange
        case .goodSignal:
            return .green
        case .strongSignal:
            return .green
        }
    }

    var body: some View {
        HStack(alignment: .lastTextBaseline, spacing: 1) {
            ForEach(Level.allCases, id: \.self) { level in
                let foregroundColor = makeForegroundColorBy(value: level.rawValue)
                RoundedRectangle(cornerRadius: 3)
                    .frame(width: 3, height: 4 + CGFloat(level.rawValue) * 2)
                    .foregroundColor(foregroundColor)
            }
        }
    }
    private func makeForegroundColorBy(value: Int) -> Color {
        value <= levelValue.rawValue ? signalColor : .gray
    }
}

extension SignalStrenthIndicator {
    enum Level: Int, Identifiable, CaseIterable {
        case noSignal
        case lowSignal
        case normalSignal
        case goodSignal
        case strongSignal

        var id: Int {
            self.rawValue
        }
    }
}

struct SignalStrenthIndicator_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SignalStrenthIndicator(levelValue: .noSignal)
            SignalStrenthIndicator(levelValue: .lowSignal)
            SignalStrenthIndicator(levelValue: .normalSignal)
            SignalStrenthIndicator(levelValue: .goodSignal)
            SignalStrenthIndicator(levelValue: .strongSignal)
        }

    }
}
