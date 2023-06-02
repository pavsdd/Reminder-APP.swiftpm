import SwiftUI
struct ContentView: View {
    @State private var isRotating = 0.0
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
                    .frame(width: 220, height:220)
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
                    .font(.system(size: 64))
                    .rotationEffect(.degrees(isRotating))
                    .onAppear {
                        withAnimation(.linear(duration: 1)
                            .speed(0.1).repeatForever(autoreverses: false)) {
                                isRotating = 360.0
                                }
                        
                      }
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
            
                .navigationViewStyle(.stack) 
            }
           
        }
}

    
