import SwiftUI
import UserNotifications
struct ContentView: View {
    var body: some View {
    NavigationView{
            VStack {
                Text("Reminder App")
                    .font(.custom("chalkboard", size: 50))
                    .frame(width: 300, height: 75)
                    .foregroundColor(.blue)
                
                Spacer()
                
                NavigationLink {
                    ListView()
                } label: {
                    Text("List")
                        .frame(width: 100, height: 100)
                        .font(.custom("chalkboard", size: 45))
                        .foregroundColor(.red)
                }
                
                
                Spacer()
                
                NavigationLink {
                    CalendarView()
                } label: {
                    Text("Calendar")
                        .frame(width: 200, height: 100)
                        .font(.custom("chalkboard", size: 45))
                        .foregroundColor(.blue)
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
                
                
                Spacer()
                
            }
            }
        }
    }
