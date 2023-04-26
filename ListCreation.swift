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
    @State var description: String = ""
    var body: some View {
        VStack{
            Text("Enter Name")
            TextField("Task Name", value: $newTask)
            Text("Enter Description")
            TextField("Description", value: $description)
            HStack{
                Button(){
                    
                }label: {
                    Rectangle()
                        .size(width: 100, height: 100)
                        .foregroundColor(.red)
                }
                    
                    Button(){
                        
                    }label: {
                        Rectangle()
                            .size(width: 100, height: 100)
                            .foregroundColor(.yellow)
                    }
                        
                        Button(){
                            
                        }label: {
                            Rectangle()
                                .size(width: 100, height: 100)
                                .foregroundColor(.green)
                        }
                }
            }
        }
    }

