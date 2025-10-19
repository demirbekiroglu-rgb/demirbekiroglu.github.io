import SwiftUI

struct ContentView: View {
   
    @State private var board = Array(repeating: "", count: 9)
    
   
    @State private var isXTurn = true
    
    var body: some View {
       
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3)) {
            ForEach(0..<9) { index in
                Button(action: {
                   
                    if board[index] == "" {
                        board[index] = isXTurn ? "X" : "O"
                        isXTurn.toggle()
                    }
                }) {
                   
                    Text(board[index])
                        .font(.system(size: 60))
                        .frame(width: 100, height: 100)
                        .border(Color.black)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



