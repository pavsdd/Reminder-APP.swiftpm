//
//  CalendarView.swift
//  Reminder APP
//
//  Created by Jake Voris on 4/24/23.
//

import SwiftUI

struct CalendarView: View {
    @State var selectedDate = Date()
    @State var events: [EventDescription] = []

@State var Date1: Date
    
    var body: some View {
        VStack{
            NavigationLink("Add Event"){
                CalendarCreation(Date1:Date1, events:$events)
            }
            Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
        
            
            Divider().frame(height: 1)
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                .padding(.horizontal)
                .datePickerStyle(.graphical)
                .foregroundColor(.indigo)
            Divider()
            if selectedDate.formatted() == Date1.formatted(){
                    Text("\(events[0].name)")
                }
            }
        }
    }
    

