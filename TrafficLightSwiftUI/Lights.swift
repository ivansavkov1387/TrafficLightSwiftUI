//
//  Lights.swift
//  TrafficLightSwiftUI
//
//  Created by Иван on 10/16/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import SwiftUI

struct Lights: View {
    var colorG: UIColor = .red
    var colorY: UIColor = .yellow
    var colorR: UIColor = .green
    var body: some View {
        VStack {
            Color(colorG)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            Spacer()
            Color(colorY)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            Spacer()
            Color(colorR)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            Spacer()
        }
    .padding()
    }
}
struct Lights_Previews: PreviewProvider {
    static var previews: some View {
        Lights()

    }
}

