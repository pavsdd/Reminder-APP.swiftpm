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
        let sameDay = Calendar.current.isDate(selectedDate, equalTo: Date1, toGranularity: .day)
        VStack{
            
            Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                .font(.custom("chalkboard", size: 30))
            Divider().frame(height: 1)
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                .font(.custom("chalkboard", size: 30))
            
                .padding(.horizontal)
                .datePickerStyle(.graphical)
            Divider()
            if selectedDate == Date1{
                Text("\(events[0].name)")
            }
            if sameDay {
                Text("")
            }else{
                Text("Nothing schedule")
            }
                
            Spacer()
            
            NavigationLink("Add Event"){
                CalendarCreation(Date1:Date1, events:$events)
            }
            .frame(width: 230
                   , height: 70)
            .font(.custom("chalkboard", size: 30))
            .background(.blue)
            .foregroundColor(.white)
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
    }

}


