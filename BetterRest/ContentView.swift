//
//  ContentView.swift
//  BetterRest
//
//  Created by Ian Waddington on 21/11/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack {
            
            Text(Date.now, format: .dateTime.day().month().year())
            
            Text(Date.now.formatted(date: .long, time: .shortened))
            
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            
            DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
                .labelsHidden()
            
            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
                .labelsHidden()
            
        }
    }
    func moreTrivia() {
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
    
    func trivialExample() {
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? Date.now
        
    }
    
    func exampleDate() {
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
