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
            TextField("Enter Task Name...", text: $newTask)
                .textFieldStyle(.roundedBorder)
            .frame(width: 330, height: 80, alignment: .center)
            Spacer()
            Text("Enter Description")
             .font(.custom("chalkboard", size: 30))
            TextField("Enter Task Description...", text: $newdescription)
            .textFieldStyle(.roundedBorder)
            .frame(width: 330, height: 80, alignment: .center)
            Spacer()
            HStack{
                Button{
                    let addedTask = taskDescription(name: newTask, description: newdescription)
                    tasks.append(addedTask)
                    newdescription = ""
                    newTask = ""
                }label: {
                    Text("Done")
                        .frame(width: 300
                               , height: 70)
                        .font(.custom("chalkboard", size: 30))
                        .background(.red)
                        .foregroundColor(.white)
                    
                }
                
                
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
    }
}

