
#Demir Bekiroglu

Hi ı am Demir Bekiroglu. I am a student in Hisar School. I enjoy creating new things in computer and ı am taking the Ap CSP course. İn this wedbiset you can have a look at my projects

my contact: demirbekiroglu@hisarschool.k12.tr

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My GitHub Page</title>
  <style>
    body { margin: 0; font-family: Arial, sans-serif; }
    nav { background-color: #333; display: flex; justify-content: center; }
    nav a { padding: 14px 20px; text-decoration: none; font-weight: bold; cursor: pointer; }
    nav a:hover { background-color: #1a73e8; }
    .container { padding: 40px; text-align: center; }
    iframe { margin-top: 20px; max-width: 100%; height: 400px; border: none; }
  </style>
</head>
<body>
  <!-- Menü -->
  <nav>
    <a onclick="showPage('home')" style="color: #FFFFFF;">Home</a>
    <a onclick="showPage('projects')" style="color: #FFFFFF;">Projects</a>
    <a onclick="showPage('documentation')" style="color: #FFFFFF;">Documentation</a>
    <a onclick="showPage('bigideas')" style="color: #FFFFFF;">Big Ideas</a>
  </nav>

  <!-- İçerik alanı -->
  <div class="container" id="content">
    <h1>Welcome to My GitHub Page</h1>
    <p>This is the Home page.</p>
  </div>

  <script>
    const content = document.getElementById('content');

    function showPage(page) {
      if (page === 'home') {
        content.innerHTML = `
          <h1>Welcome to My GitHub Page</h1>
          <p>This is the Home page.</p>
        `;
      } else if (page === 'projects') {
        content.innerHTML = `
          <h1>My Projects</h1>
          <a href="https://github.com/demirbekiroglu-rgb/demirbekiroglu.github.io" target="_blank" 
             style="
               display: inline-block;
               background-color: #1a73e8;
               color: #ffffff;
               padding: 12px 24px;
               border-radius: 8px;
               text-decoration: none;
               font-weight: bold;
               font-size: 16px;
               margin-bottom: 20px;
               transition: background-color 0.3s;
             "
             onmouseover="this.style.backgroundColor='#155ab6'"
             onmouseout="this.style.backgroundColor='#1a73e8'">
             Press for Codes
          </a>

          <ul>
            <li><a href="https://scratch.mit.edu/projects/1212311251" target="_blank">Tic Tac Toe (Scratch)</a></li>
          </ul>

          <h2>Swift Projects</h2>
          <p><b>Swift Calculator</b></p>
          <iframe src="https://www.veed.io/view/6b4cdf7e-c6a5-47b4-b9aa-a65b77e18b02?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>Swift Clock</b></p>
          <iframe src="https://www.veed.io/view/04e02321-e5f0-4c25-98a9-e972da555a02?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>Swift Clock v2</b></p>
          <iframe src="https://www.veed.io/view/2a05f650-1306-480e-aed0-a7673cbd828d?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>Swift Portrait</b></p>
          <iframe src="https://www.veed.io/view/39fe0445-5037-4e26-b564-203e570d318b?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>Swift Clock V5</b></p>
          <iframe src="https://www.veed.io/view/22d0019e-a29a-48a4-ae06-ff72a8d56f52?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>Binary Counter</b></p>
          <iframe src="https://www.veed.io/view/aa67b583-fa46-43cb-8b84-ab5a6f20627b?source=editor&panel=share" allowfullscreen></iframe>

          <p><b>Frog Escape Game</b></p>
          <iframe src="https://www.veed.io/view/2c99f495-7736-43ec-b7a8-030703152e90?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>Swift XOX</b></p>
          <iframe src="https://www.veed.io/view/d29a64ad-71e7-45b9-961a-57b6b0eddfb0?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>Ice Cream Overflow</b></p>
          <iframe src="https://www.veed.io/view/ed8fa209-8812-43a7-bdc5-479e6037d8db?source=Homepage&panel=share" allowfullscreen></iframe>
        `;
      } else if (page === 'documentation') {
        content.innerHTML = `
          <h1>Documentation</h1>
          <p>While making the Tic Tac Toe game on Scratch I had some problems that I faced. This game consists of 9 squares X and O. The first person that can make 3 lines wins. While I was coding, I used YouTube for help.</p>
          <iframe src="https://www.veed.io/view/c98e36c4-bfce-414b-b2c0-e11ee2e02490?panel=share" allowfullscreen></iframe>
          <p><b>Additional GitHub Documentation:</b> While I was creating my GitHub page, I got help from classmates and school-recommended support videos, which guided me through some of the design and coding steps. The site is hosted on GitHub Pages and has a clean, easy-to-use design.</p>
          <p><b>Clock Documentation:</b> This is a simple Clock App made with Swift. It shows the current hour and minute, and the time increases each time a button is pressed. I created this app with help from the classroom videos and documents, which guided me in using Swift and adding interactive features.</p>
          <p><b>Big Idea 1 Video:</b></p>
          <iframe src="https://www.veed.io/view/ae2a9791-c4a5-456a-adef-fea392229777?source=Homepage&panel=share" allowfullscreen></iframe>

          <h2>Project Descriptions</h2>

          <h3>1. Scratch Tic Tac Toe</h3>
          <p><b>Description:</b> A simple Tic Tac Toe game built using Swift, allowing two players to play on the same device.</p>
          <p><b>Features:</b></p>
          <ul>
            <li>3x3 grid</li>
            <li>Two-player turn system</li>
            <li>Detects wins and draws</li>
          </ul>
          <p><b>Note:</b> I built this project using Swift and SwiftUI to practice basic game logic and UI.</p>

          <h3>2. Swift Tic Tac Toe</h3>
          <p><b>Description:</b> A more advanced version of Tic Tac Toe with improved UI and state management in Swift.</p>
          <p><b>Features:</b></p>
          <ul>
            <li>Interactive grid using SwiftUI</li>
            <li>Tracks player turns</li>
            <li>Highlights the winning combination</li>
          </ul>
          <p><b>Note:</b> I used Swift and SwiftUI to implement state management and interactive UI.</p>

          <h3>3. Self Portrait</h3>
          <p><b>Description:</b> A creative project where you draw a self-portrait using SwiftUI shapes and colors.</p>
          <p><b>Features:</b></p>
          <ul>
            <li>Uses rectangles, circles, and paths</li>
            <li>Customizable facial features</li>
            <li>Explores SwiftUI drawing techniques</li>
          </ul>
          <p><b>Note:</b> I used SwiftUI to practice shapes, paths, and creative UI design.</p>

          <h3>4. Calculator</h3>
          <p><b>Description:</b> A basic calculator app that performs arithmetic operations.</p>
          <p><b>Features:</b></p>
          <ul>
            <li>Addition, subtraction, multiplication, division</li>
            <li>Clear and equals buttons</li>
            <li>Simple SwiftUI interface</li>
          </ul>
          <p><b>Note:</b> I built this project using Swift and SwiftUI to understand button actions and arithmetic logic.</p>

          <h3>5. Binary Counter</h3>
          <p><b>Description:</b> A small app to explore binary numbers using a counter.</p>
          <p><b>Features:</b></p>
          <ul>
            <li>Increments and decrements values</li>
            <li>Shows binary equivalent</li>
            <li>Teaches binary counting visually</li>
          </ul>
          <p><b>Note:</b> I used Swift and SwiftUI to visualize binary numbers and counters interactively.</p>

          <h3>6. Ice Cream Over Flow</h3>
          <p><b>Description:</b> A fun stacking game where you add ice cream scoops without overflowing.</p>
          <p><b>Features:</b></p>
          <ul>
            <li>Tap to add scoops</li>
            <li>Tracks the number of scoops</li>
            <li>Uses colors to differentiate scoops</li>
          </ul>
          <p><b>Note:</b> I implemented this game using Swift and SwiftUI to learn about states and animations.</p>

          <h3>7. Extracting Information from Data</h3>
          <p><b>Description:</b> A project that reads and analyzes data in Swift.</p>
          <p><b>Features:</b></p>
          <ul>
            <li>Parses text or numbers</li>
            <li>Extracts meaningful information</li>
            <li>Useful for learning basic data processing</li>
          </ul>
          <p><b>Note:</b> I used Swift to practice reading, parsing, and processing data.</p>

          <h3>8. Data Compression</h3>
          <p><b>Description:</b> Explores lossless and lossy compression techniques using Swift.</p>
          <p><b>Features:</b></p>
          <ul>
            <li>Compresses text, images, or audio</li>
            <li>Demonstrates difference between compression types</li>
            <li>Visualizes effects of compression</li>
          </ul>
          <p><b>Note:</b> I implemented this project using Swift to understand compression concepts in programming.</p>

          <h3>9. Frog Escape Challenge</h3>
          <p><b>Description:</b> A game where a frog moves across the screen avoiding obstacles while time passes.</p>
          <p><b>Features:</b></p>
          <ul>
            <li>Moving frog character</li>
            <li>Obstacle avoidance</li>
            <li>Increasing difficulty with levels</li>
          </ul>
          <p><b>Note:</b> I built this game using Swift and SwiftUI to learn about moving objects, collisions, and game logic.</p>
        `;
      } else if (page === 'bigideas') {
        content.innerHTML = `
          <h1>Big Ideas</h1>

          <h2>Collaborating</h2>
          <p>We worked together as a team, shared the work fairly, and supported each other so no one got stuck on a problem.</p>

          <h2>Program Design & Development</h2>
          <p>I made a simple plan with clear steps and tested small parts of the code using print checks to improve the program.</p>

          <h2>Program Function & Purpose</h2>
          <p>I set a clear goal, thought about the users, organized inputs and outputs, divided the program into smaller parts, and explained everything in a way that others can understand.</p>

          <h2>Finding & Fixing Mistakes</h2>
          <p>I ran small tests, checked different situations, and added basic error controls to keep the program working correctly.</p>

          <hr>
          <h1>Big Idea 2</h1>
          <p><b>Big Idea 2 Video:</b></p>
          <iframe src="https://www.veed.io/view/22f6a870-f27f-4752-a8f3-f952d67a2640?source=Homepage&panel=share" allowfullscreen></iframe>

          <h2>Algorithms & Programming</h2>
          <p>I used simple algorithms to make my program work step by step. I tested each part to be sure it gave the right result.</p>

          <h2>Variables & Data</h2>
          <p>I used variables to store and change information in the program. This helped me keep the data organized and easy to update.</p>

          <h2>Control Structures</h2>
          <p>I used if statements to make decisions and loops to repeat actions. They made my program smarter and more efficient.</p>

          <h2>Abstraction</h2>
          <p>I divided my code into smaller, clear parts. This made it easier to read, understand, and fix any problems.</p>
        `;
      }
    }

    showPage('home');
  </script>
</body>
</html>
