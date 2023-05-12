//
//  CalendarView.swift
//  Reminder APP
//
//  Created by Jake Voris on 4/24/23.
//

import SwiftUI

struct CalendarView: View {
    @State var selectedDate: Date = Date()
    var body: some View {
        VStack() {
            NavigationLink {
                CalendarCreation()
                Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
            } label: {
                Text("Add Item")
                    .font(.custom("chalkboard", size: 40))
                    .foregroundColor(.blue)
            }
            Divider().frame(height: 1)
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                .padding(.horizontal)
                .datePickerStyle(.graphical)
            Divider()
            
                
        }
    }
}
