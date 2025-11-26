import SwiftUI

struct ContentView: View {
    let flavours = ["Strawberry🍓"
                , "Chocolate🍫", "Mint🍃", "Lemon🍋", "Milk🥛"]
    
    var body: some View {
        VStack {
           
            VStack(alignment: .leading) {
                ForEach(flavours, id: \.self) { flavour in
                    Text(flavour)
                }
            }
            .padding()
            
           
            ZStack {
                Circle().fill(Color.red).frame(width: 320, height: 320)
                Circle().fill(Color.yellow).frame(width: 250, height: 250)
                Circle().fill(Color.brown).frame(width: 180, height: 180)
                Circle().fill(Color.green)
                    .frame(width: 110, height:110)
                Circle().fill(Color.white)
                    .frame(width: 60, height:60)
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

