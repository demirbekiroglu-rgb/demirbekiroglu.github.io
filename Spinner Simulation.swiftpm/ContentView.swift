import SwiftUI

struct ContentView: View {
    
    @State private var selectedColor: Color = .gray
    @State private var colorName: String = "Tap Spin"
    
    var body: some View {
        VStack(spacing: 20) {
          
            Rectangle()
                .fill(selectedColor)
                .frame(width: 200, height: 200)
                .cornerRadius(12)
                .shadow(radius: 6)
            
           
            Text(colorName)
                .font(.title2)
                .bold()
            
            
            Button(action: {
                spin()
            }) {
                Text("Spin")
                    .font(.headline)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 12)
                    .background(RoundedRectangle(cornerRadius: 10).stroke())
            }
        }
        .padding()
    }
    
   
    func spin() {
       
        let firstChoice = Int.random(in: 1...2)
        
        if firstChoice == 1 {
            
            selectedColor = .blue
            colorName = "Blue"
        } else {
            
            let secondChoice = Int.random(in: 1...2)
            if secondChoice == 1 {
                selectedColor = .orange
                colorName = "Orange"
            } else {
                selectedColor = .purple
                colorName = "Purple"
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

