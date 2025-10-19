import SwiftUI

struct ContentView: View {
    @State private var time = 20
    @State private var level = 1
    @State private var frogX: CGFloat = 0
    @State private var obstacleY: CGFloat = -200
    @State private var timer: Timer? = nil
    @State private var message = ""
    
    var body: some View {
        VStack {
            Text(" Frog Escape")
                .font(.largeTitle)
                .padding(.top)
            
            Text("Level \(level)")
                .font(.title2)
            
            Text(" \(time)s")
                .font(.title)
                .padding(.bottom, 10)
            
            ZStack {
                Rectangle()
                    .fill(Color.blue.opacity(0.1))
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
                    .overlay(
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 40, height: 40)
                            .offset(y: obstacleY)
                    )
                
                Text("🐸")
                    .font(.system(size: 40))
                    .offset(x: frogX, y: 120)
            }
            .padding(.bottom)
            
            HStack {
                Button("⬅️") {
                    frogX -= 20
                }
                Button("➡️") {
                    frogX += 20
                }
            }
            .font(.title)
            
            Button("Start Level") {
                startLevel()
            }
            .buttonStyle(.borderedProminent)
            .padding(.top)
            
            Text(message)
                .foregroundColor(.green)
                .font(.title3)
                .padding(.top, 10)
        }
        .onDisappear {
            timer?.invalidate()
        }
    }
    
    func startLevel() {
        time = initialTimeForLevel(level: level)
        frogX = 0
        obstacleY = -200
        message = ""
        timer?.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { t in
            if time > 0 {
                time -= 1
                moveObstacle()
                checkCollision()
            } else {
                message = "⏰ TIME UP! Restarting..."
                t.invalidate()
            }
        }
    }
    
    func moveObstacle() {
        withAnimation(.linear(duration: 0.5)) {
            obstacleY += 40
            if obstacleY > 150 {
                obstacleY = -200
            }
        }
    }
    
    func checkCollision() {
        if abs(obstacleY - 120) < 30 && abs(frogX) < 40 {
            message = "💥 Hit! Restarting..."
            timer?.invalidate()
        } else if time == 0 {
            message = "⏰ Time Up!"
        } else if levelComplete() {
            nextLevel()
        }
    }
    
    func levelComplete() -> Bool {
       
        return frogX > 120
    }
    
    func nextLevel() {
        message = "🎉 Level Up!"
        level += 1
        timer?.invalidate()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            startLevel()
        }
    }
    
    func initialTimeForLevel(level: Int) -> Int {
        if level == 1 {
            return 20
        } else if level == 2 {
            return 18
        } else if level == 3 {
            return 16
        } else if level == 4 {
            return 14
        } else {
            return 8
        }
    }
}

