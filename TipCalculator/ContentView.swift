//
//  ContentView.swift
//  TipCalculator
//
//  Created by Phan Anh on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    @State var total = "20"
    @State var tipPercent: Double = 15.0
    
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
            
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.25)
            }
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            
            if let totalNum = Double(total) {
                Text("Tip Amount: \(totalNum * tipPercent / 100, specifier: "%0.2f")")
            } else {
                Text("Please enter a valid numerical value.")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
