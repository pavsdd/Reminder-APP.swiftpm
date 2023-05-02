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
            TextField("Task Name", text: $newTask)
            Text("Enter Description")
            TextField("Description", text: $newdescription)
            HStack{
                Button{
                    let addedTask = taskDescription(name: newTask, description: newdescription)
                    tasks.append(addedTask)
                    newdescription = ""
                    newTask = ""
                }label: {
                    frame(width: 100, height: 100)
                        foregroundColor(.red)
                }
                    NavigationLink("Go Back") {
                        ListView()
                    }
                }
            }
        }
    }

