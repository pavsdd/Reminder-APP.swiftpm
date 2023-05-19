//
//  CalendarCreation.swift
//  Reminder APP
//
//  Created by Pavel Sliziuk on 4/28/23.
//

import SwiftUI

struct CalendarCreation: View {
    @State var newItemName: String = ""
    @State var Date1: Date
    @Binding var events: [EventDescription]
    var body: some View {
        
        
        VStack {
            
            TextField("Enter Subject Name", text: $newItemName)
            DatePicker("Day", selection: $Date1)
            
            Button(action: {
                let addedEvent = EventDescription(name: newItemName, Date2: Date1)
                events.append(addedEvent)
                newItemName = ""
                
                
            }, label: {
                Text("Add")
                    .font(.largeTitle)
                    .disabled(true)
            })
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        
    }
}
