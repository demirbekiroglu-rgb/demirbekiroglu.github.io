import SwiftUI


struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.closeSubpath()
        return path
    }
}

struct ContentView: View {
   
    @State private var scoop1: Color? = nil
    @State private var scoop2: Color? = nil
    @State private var scoop3: Color? = nil
    @State private var count = 0
    @State private var message = ""
    
   
    func addScoop(color: Color) {
        if scoop1 == nil {
            scoop1 = color
            count += 1
        } else if scoop2 == nil {
            scoop2 = color
            count += 1
        } else if scoop3 == nil {
            scoop3 = color
            count += 1
        } else {
            message = "Overflow → reset needed"
        }
    }
    
    
    func resetScoop() {
        scoop1 = nil
        scoop2 = nil
        scoop3 = nil
        count = 0
        message = ""
    }
    
    var body: some View {
        VStack(spacing: 30) {
        
            Text("🍦 Ice Cream Overflow")
                .font(.largeTitle)
                .bold()
            
            
            ZStack(alignment: .bottom) {
                Triangle()
                    .fill(Color.brown)
                    .frame(width: 100, height: 100)
                
                if let scoop = scoop1 {
                    Circle()
                        .fill(scoop)
                        .frame(width: 80, height: 80)
                        .offset(y: -40)
                }
                
                if let scoop = scoop2 {
                    Circle()
                        .fill(scoop)
                        .frame(width: 80, height: 80)
                        .offset(y: -90)
                }
                
                if let scoop = scoop3 {
                    Circle()
                        .fill(scoop)
                        .frame(width: 80, height: 80)
                        .offset(y: -140)
                }
            }
            .frame(height: 250)
            
            
            HStack(spacing: 20) {
                Button("Pink") {
                    addScoop(color: .pink)
                }
                .buttonStyle(.borderedProminent)
                
                Button(" Yellow") {
                    addScoop(color: .yellow)
                }
                .buttonStyle(.borderedProminent)
                
                Button(" Purple") {
                    addScoop(color: .purple)
                }
                .buttonStyle(.borderedProminent)
            }
            
         
            Button("Reset") {
                resetScoop()
            }
            .buttonStyle(.bordered)
            
         
            if !message.isEmpty {
                Text(message)
                    .foregroundColor(.red)
                    .bold()
            }
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


