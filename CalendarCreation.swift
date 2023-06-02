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
            
            TextField("Enter Event name", text: $newItemName)
                .textFieldStyle(.roundedBorder)
                .frame(width: 350, height: 20, alignment: .center)
            DatePicker("Day", selection: $Date1)
            .font(.custom("chalkboard", size: 30))
            Button(action: {
                let addedEvent = EventDescription(name: newItemName, Date2: Date1)
                events.append(addedEvent)
                newItemName = ""
                
                
            }, label: {
                Text("Add")
                    .frame(width: 250
                           , height: 75)
                    .font(.custom("chalkboard", size: 30))
                    .background(.blue)
                    .foregroundColor(.white)
                    .disabled(true)
            })
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
    }
    
}
