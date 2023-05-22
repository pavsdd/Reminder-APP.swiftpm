//
//  taskView.swift
//  Reminder APP
//
//  Created by Vasil Popov on 4/26/23.
//

import SwiftUI

struct taskView: View {
    @State var currentTask: taskDescription
    var body: some View {
        VStack{
            Text("Task: \(currentTask.name)")
                .bold()
                .font(.largeTitle)
            Text("Description: \(currentTask.description)")
        }
    }
}


