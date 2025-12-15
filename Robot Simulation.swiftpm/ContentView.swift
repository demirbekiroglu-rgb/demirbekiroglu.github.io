import SwiftUI


struct ContentView: View {
    
   
    let rows = Array(0..<5)
    let columns = Array(0..<5)
    let boxSize: CGFloat = 50
    
    
    @State private var robotX: Int = 0
    @State private var robotY: Int = 0
    
    
    let commands = ["up", "right", "right", "down", "left"]
    let validDirections = ["up", "down", "left", "right"]
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Robot Simulation")
                .font(.title)
            
            
            VStack(spacing: 10) {
                ForEach(rows, id: \.self) { r in
                    HStack(spacing: 10) {
                        ForEach(columns, id: \.self) { c in
                            Rectangle()
                                .foregroundColor(robotX == c && robotY == r ? .blue : .gray)
                                .frame(width: boxSize, height: boxSize)
                        }
                    }
                }
            }
            
           
            Button("Run Commands") {
                runAllCommands()
            }
            .padding()
            
            // Reset tuşu (ekstra)
            Button("Reset Robot") {
                resetRobot(0, 0)
            }
        }
        .padding()
    }
   
    func runCommand(_ command: String) {
        if command == "up" {
            move(0, -1)
        } else if command == "down" {
            move(0, 1)
        } else if command == "left" {
            move(-1, 0)
        } else if command == "right" {
            move(1, 0)
        } else {
            handleInvalidCommand(command)
        }
    }
    
    
    func move(_ dx: Int, _ dy: Int) {
        let newX = robotX + dx
        let newY = robotY + dy
        
        
        if newX < 0 || newX >= 5 { return }
        if newY < 0 || newY >= 5 { return }
        
        robotX = newX
        robotY = newY
    }
    
    
    func runAllCommands() {
        for cmd in commands {                 
            if validDirections.contains(cmd) { 
                runCommand(cmd)
            } else {
                handleInvalidCommand(cmd)
            }
        }
    }
    
    func handleInvalidCommand(_ command: String) {
        print("Invalid command:", command)
    }
    
    
    func resetRobot(_ x: Int, _ y: Int) {
        if x >= 0 && x < 5 && y >= 0 && y < 5 { 
            robotX = x
            robotY = y
        }
    }
}

        
           
