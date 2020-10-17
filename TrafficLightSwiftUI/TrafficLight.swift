//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Иван on 10/16/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import SwiftUI

enum CurrentLight {
    case green, yellow, red
}

private var currentLight = CurrentLight.green

private var lights = Lights(colorG: .green, colorY: .yellow, colorR: .red)



struct TrafficLight: View {
    @State var text = "START"
    @State var count = 0
    var body: some View {
        VStack {
            lights
            Button(action: {
                lights = buttonTouch()
                self.text = "NEXT"
                self.count+=1
            }) {
                Text(String(count))
                    .font(.title)
                    .padding(50)
                
            }
        }
    }
}
    
    private func buttonTouch() -> Lights {
        var lights = Lights()
        switch currentLight {
            case .red:
                lights.colorR = .red
                lights.colorG = .black
                lights.colorY = .black
                currentLight = .green
            case .yellow:
                lights.colorY = .yellow
                lights.colorR = .black
                lights.colorG = .black
                currentLight = .red
            case .green:
                lights.colorG = .green
                lights.colorR = .black
                lights.colorY = .black
                currentLight = .yellow
            }
        return lights
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight()
    }
}

