//
//  ListView.swift
//  Reminder APP
//
//  Created by Ben Wojtowicz on 4/24/23.
//

import SwiftUI
struct ListView: View {
    @State var tasks: [taskDescription] = []
    var body: some View {
        VStack{
            Text("Task")
                .font(.custom("chalkboard", size: 40))
                .foregroundColor(.red)
                .underline(true, color: .red)
            NavigationLink { 
                ListCreation(tasks: $tasks)
            } label: { 
                Text("Add Item")
                    .font(.custom("chalkboard", size: 40))
                    .foregroundColor(.red)
            }
            
            List(tasks, id: \.self) { currentTask in
                taskView(currentTask: currentTask)
            }
        }
    }
}
