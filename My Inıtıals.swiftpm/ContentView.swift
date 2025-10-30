import SwiftUI

struct ContentView: View {
    
    let gridSize = 10
    let dotSize: CGFloat = 18
    let gap: CGFloat = 8
    let letterSpacing: CGFloat = 48
    
   
    let dColor: Color = .blue
    let bColor: Color = .red
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 24) {
                Text("My Initials with Code")
                    .font(.title2).bold()
                    .foregroundColor(.white)
                
                
                HStack(spacing: letterSpacing) {
                    gridView(for: "D")
                    gridView(for: "B")
                }
                .padding()
            }
        }
    }
    
    
    @ViewBuilder
    func gridView(for letter: Character) -> some View {
        VStack(spacing: gap) {
            ForEach(0..<gridSize, id: \.self) { row in
                HStack(spacing: gap) {
                    ForEach(0..<gridSize, id: \.self) { col in
                        if shouldDraw(letter: letter, row: row, col: col) {
                            Circle()
                                .fill(letter == "D" ? dColor : bColor)
                                .frame(width: dotSize, height: dotSize)
                        } else {
                            Color.clear
                                .frame(width: dotSize, height: dotSize)
                        }
                    }
                }
            }
        }
    }
    
    
    func shouldDraw(letter: Character, row: Int, col: Int) -> Bool {
        switch letter {
            
        
        case "D":
            let leftSide = (col == 0) && (0..<gridSize).contains(row)
            let rightCurve = (col == gridSize - 2) && (row > 0 && row < gridSize - 1)
            let top = (row == 0) && (col > 0 && col < gridSize - 2)
            let bottom = (row == gridSize - 1) && (col > 0 && col < gridSize - 2)
            return leftSide || rightCurve || top || bottom
            
        
        case "B":
            let leftSide = (col == 0)
            let top = (row == 0) && (col < gridSize - 2)
            let middle = (row == gridSize / 2) && (col < gridSize - 2)
            let bottom = (row == gridSize - 1) && (col < gridSize - 2)
            let rightTop = (col == gridSize - 2) && (row > 0 && row < gridSize / 2)
            let rightBottom = (col == gridSize - 2) && (row > gridSize / 2 && row < gridSize - 1)
            return leftSide || top || middle || bottom || rightTop || rightBottom
            
        default:
            return false
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}


    
    
    
