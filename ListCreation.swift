//
//  ListCreation.swift
//  Reminder APP
//
//  Created by Ben Wojtowicz on 4/24/23.
//

import Foundation

import SwiftUI
struct ListCreation: View {
    @Binding var tasks: [taskDescription]
    @State var newTask: String = ""
    @State var newdescription: String = ""
    var body: some View {
        VStack{
            Text("Enter Name")
                .foregroundColor(.red)
                .font(.custom("chalkboard", size: 25))

            TextField("Task Name", text: $newTask)
            Text("Enter Description")
                .foregroundColor(.red)
                .font(.custom("chalkboard", size: 25))

            TextField("Description", text: $newdescription)
            HStack{
                Button{
                    let addedTask = taskDescription(name: newTask, description: newdescription)
                    tasks.append(addedTask)
                    newdescription = ""
                    newTask = ""
                }label: {
                    Text("Done")
                        .foregroundColor(.blue)
                        .font(.custom("chalkboard", size: 25))

                }
            }
        }
        Text("")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    NavigationLink { 
                        ListView()
                    } label: { 
                        Label("List", systemImage: "clipboard.fill")
                            .foregroundColor(.blue)
                    }
                    
                }
                ToolbarItem(placement: .bottomBar){
                    NavigationLink { 
                        CalendarView()
                    } label: { 
                        Label("List", systemImage: "calendar.badge.clock")
                            .foregroundColor(.red)
                    }
                    
                }
            }
    }
}

