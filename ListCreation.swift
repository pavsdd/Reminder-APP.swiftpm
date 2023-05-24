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
      .font(.custom("chalkboard", size: 30))
            TextField("Task Name", text: $newTask)
                .textFieldStyle(.roundedBorder)
            .frame(width: 350, height: 20, alignment: .center)
            Text("Enter Description")
             .font(.custom("chalkboard", size: 30))
            TextField("Description", text: $newdescription)
            .textFieldStyle(.roundedBorder)
            .frame(width: 350, height: 20, alignment: .center)
            HStack{
                Button{
                    let addedTask = taskDescription(name: newTask, description: newdescription)
                    tasks.append(addedTask)
                    newdescription = ""
                    newTask = ""
                }label: {
                    Text("Done")
                        .frame(width: 175
                               , height: 75)
                        .font(.custom("chalkboard", size: 30))
                        .background(.red)
                        .foregroundColor(.white)
                    
                }
                
                
            }
        }
    }
}

