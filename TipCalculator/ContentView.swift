//
//  ContentView.swift
//  TipCalculator
//
//  Created by Phan Anh on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent: Double = 15.0
    
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .padding()
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 1...100, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .font(.title)
            .padding()
            
            HStack {
                Button(action: {tipPercent = 5.0}, label: {
                    Text("  5%")
                        .padding()
                        .border(Color.black, width: 1)
                })
                Button(action: {tipPercent = 10.0}, label: {
                    Text(" 10%")
                        .padding()
                        .border(Color.black, width: 1)
                })
                Button(action: {tipPercent = 15.0}, label: {
                    Text(" 15%")
                        .padding()
                        .border(Color.black, width: 1)
                })
            }
            .font(.headline)
            HStack {
                Button(action: {tipPercent = 20.0}, label: {
                    Text("20%")
                        .padding()
                        .border(Color.black, width: 1)
                })
                Button(action: {tipPercent = 25.0}, label: {
                    Text("25%")
                        .padding()
                        .border(Color.black, width: 1)
                })
                Button(action: {tipPercent = 30.0}, label: {
                    Text("30%")
                        .padding()
                        .border(Color.black, width: 1)
                })
            }
            .font(.headline)
            .padding()
            
            if let totalNum = Double(total) {
                Text("Tip Amount: $\(totalNum * tipPercent / 100, specifier: "%0.2f")")
                    .font(.title)
            } else {
                Text("Please enter a valid numerical value")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
