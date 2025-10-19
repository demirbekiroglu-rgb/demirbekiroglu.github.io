import SwiftUI

struct ContentView: View {
    @State private var id = 0
    let maxID = 15   
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Decimal: \(id)")
                .font(.title)
            Text("Binary: \(String(id, radix: 2).padding(toLength: 4, withPad: "0", startingAt: 0))")
                .font(.title2)
            
            
            HStack {
                ForEach([8,4,2,1], id: \.self) { value in
                    Rectangle()
                        .fill((id & value) != 0 ? Color.green : Color.gray)
                        .frame(width: 50, height: 50)
                        .overlay(
                            Text("\(value)")
                                .foregroundColor(.white)
                        )
                }
            }
            
           
            if id == 0 {
                Text("OVERFLOW!")
                    .foregroundColor(.red)
                    .bold()
            }
            
            
            HStack(spacing: 20) {
                Button("Enroll (+1)") {
                    let oldID = id
                    id = (id + 1) % 16   
                    if oldID == maxID {  
                        print("Overflow! Reset to 0")
                    }
                }
                .buttonStyle(.borderedProminent)
                
                Button("Reset (0)") {
                    id = 0
                }
                .buttonStyle(.bordered)
            }
            
            
            HStack {
                Button("Set ID = 7") { id = 7 }
                Button("Set ID = 12") { id = 12 }
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

