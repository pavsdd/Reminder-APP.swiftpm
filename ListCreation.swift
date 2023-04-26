//
//  ListCreation.swift
//  Reminder APP
//
//  Created by Ben Wojtowicz on 4/24/23.
//

import Foundation

import SwiftUI

struct ListCreation: View {

    var body: some View {
        VStack{
            Text("Enter Name")
           
            
            Text("Priority Level")
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

