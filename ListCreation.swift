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
                .foregroundColor(.green)
            TextField("Task Name", text: $newTask)
                .foregroundColor(.green)
            Text("Enter Description")
                .foregroundColor(.red)
            TextField("Description", text: $newdescription)
                .foregroundColor(.red)
            HStack{
                Button{
                    let addedTask = taskDescription(name: newTask, description: newdescription)
                    tasks.append(addedTask)
                    newdescription = ""
                    newTask = ""
                }label: {
                   Circle()
                    frame(width: 150, height: 125)
                        foregroundColor(.red)
                }
                NavigationLink {
                    ListView()
                } label: {
                    Text("Go Back")
                        .font(.custom("chalkboard", size: 40))
                        .foregroundColor(.red)
                }

                }
            }
        }
    }

