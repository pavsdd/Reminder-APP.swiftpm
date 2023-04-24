import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           Text("Reminder App")
                .italic()
                .fontWeight(.bold)
                .baselineOffset(1000)
                .font(.system(size: 36))
            }
        HStack{
            Button("List View"){
                ListView()
            }
            Button("Calender"){
                CalendarView()
            }
        }
    }
}
