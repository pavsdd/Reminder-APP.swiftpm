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
            Text(currentTask.name)
                  .font(.custom("chalkboard", size: 30))
                  .bold()
            Text(currentTask.description)
             .font(.custom("chalkboard", size: 20))
        }
    }
}


