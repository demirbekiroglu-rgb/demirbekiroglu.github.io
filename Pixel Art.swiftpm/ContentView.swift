import SwiftUI

struct PixelPainterView: View {
    
    @State private var cells = Array(0...99)
    @State private var cellColors = Array(repeating: Color.gray, count: 100)
    @State private var inputNumber = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            
            HStack {
                TextField("Enter cell (0-99)", text: $inputNumber)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 120)
                
                Button("Change Color") {
                    changeColor()
                }
            }
            
           
            drawGrid()
            
            Spacer()
        }
        .padding()
    }
   
    func drawGrid() -> some View {
        VStack(spacing: 2) {
            ForEach(0..<10) { row in
                HStack(spacing: 2) {
                    ForEach(0..<10) { col in
                        let index = row * 10 + col
                        Rectangle()
                            .fill(cellColors[index])
                            .frame(width: 30, height: 30)
                            .border(Color.black)
                    }
                }
            }
        }
    }
    
   
    func changeColor() {
        if let number = Int(inputNumber), number >= 0, number < 100 {
            
            cellColors[number] = cellColors[number] == .gray ? .blue : .gray
        } else {
            print("Invalid input")
        }
    }
}

struct PixelPainterView_Previews: PreviewProvider {
    static var previews: some View {
        PixelPainterView()
    }
}


