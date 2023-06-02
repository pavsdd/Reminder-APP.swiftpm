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
                    .foregroundColor(.black)
                    Image("Logo")
                    .resizable()
                    .frame(width: 225, height: 225)
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
                
                ZStack{
                   
                Image("Clock")
                     .clipShape(Circle(), style: FillStyle())
                 Image("PnG")
                     .resizable()
                     .offset(x: 8, y: -36)
                        .frame(width: 99, height:99)
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
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray)
                
                Spacer()
            
                
            }
        
        .navigationViewStyle(.stack)
        }
        
       }
