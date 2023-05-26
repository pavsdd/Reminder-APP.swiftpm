import SwiftUI
struct ContentView: View {
     @Binding var events: [EventDescription]
    @State var Date1 = Date()
    var body: some View {
        NavigationView{
            VStack {
                Text("Reminder App")
                    .font(.custom("chalkboard", size: 30))
                    .frame(width: 200, height: 50)
                    Image("Logo")
                Spacer()
                
                NavigationLink {
                    ListView()
                } label: {
                    Text("List")
                        .frame(width: 250
                           , height: 75)
                        .font(.custom("chalkboard", size: 30))
                        .background(.red)
                        .foregroundColor(.white)
                }
                
                
                Spacer()
                
                NavigationLink {
                    CalendarView(Date1:Date1)
                } label: {
           Text("Calendar")
                        .frame(width: 250
                               , height: 75)
                        .font(.custom("chalkboard", size: 30))
                        .background(.blue)
                        .foregroundColor(.white)
                }
                Text("")
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            NavigationLink { 
                                ListView()
                            } label: { 
                                Label("Lists", systemImage: "square.and.pencil")
                            }
                            
                        }
                        ToolbarItem(placement: .bottomBar) {
                            NavigationLink { 
                                CalendarView (Date1: Date1)
                            } label: { 
                                Label("Lists", systemImage: "calendar.badge.plus")
                            }
                        }
                    }
            }
            
                
                Spacer()
            
                
            }
        
        }
        
//        .navigationViewStyle(.stack)
    }
