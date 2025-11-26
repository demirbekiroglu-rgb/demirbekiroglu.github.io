
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
  <!-- Menu -->
  <nav>
    <a onclick="showPage('home')" style="color: #FFFFFF;">Home</a>
    <a onclick="showPage('projects')" style="color: #FFFFFF;">Projects</a>
    <a onclick="showPage('documentation')" style="color: #FFFFFF;">Documentation</a>
    <a onclick="showPage('bigideas')" style="color: #FFFFFF;">Big Ideas</a>
  </nav>

  <!-- Content Area -->
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

          <p><b>Country List</b></p>
          <iframe src="https://www.veed.io/view/30e2dfcf-ca42-44e2-83f6-e6c467b66c15?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>Music List</b></p>
          <iframe src="https://www.veed.io/view/f8259bcd-79ac-4b3b-96b9-8daacb504490?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>Ice Cream List</b></p>
          <iframe src="https://www.veed.io/view/6ebe74d5-9140-4a69-aa94-0fb3363a1288?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>Pixel Art</b></p>
          <iframe src="https://www.veed.io/view/0f832183-31b9-4ceb-a0cb-23688217e000?source=Homepage&panel=share" allowfullscreen></iframe>

          <p><b>My Initials</b></p>
          <iframe src="https://www.veed.io/view/71fd024e-414b-4287-b64d-733f4993da62?source=Homepage&panel=share" allowfullscreen></iframe>
        `;
      } else if (page === 'documentation') {
        content.innerHTML = `
          <h1>Documentation</h1>

          <h2>Videos</h2>
          <p>While making the Tic Tac Toe game on Scratch I had some problems that I faced...</p>
          <iframe src="https://www.veed.io/view/c98e36c4-bfce-414b-b2c0-e11ee2e02490?panel=share" allowfullscreen></iframe>

          <p><b>Additional GitHub Documentation:</b> While I was creating my GitHub page...</p>
          <p><b>Clock Documentation:</b> This is a simple Clock App...</p>

          <p><b>Big Idea 1 Video:</b></p>
          <iframe src="https://www.veed.io/view/ae2a9791-c4a5-456a-adef-fea392229777?source=Homepage&panel=share" allowfullscreen></iframe>

          <h2>Project Descriptions</h2>

          <p><b>Tic Tac Toe (Scratch):</b> This project recreates the classic two-player Tic Tac Toe game using Scratch logic blocks. The program checks all winning combinations and announces the result automatically.</p>

          <p><b>Swift Calculator:</b> This app performs basic arithmetic operations in a clean and simple interface. It is built using SwiftUI to provide a smooth and user-friendly experience.</p>

          <p><b>Swift Clock:</b> A real-time clock app that updates continuously using the system time. It displays the current time in a minimal and clear layout.</p>

          <p><b>Swift Clock v2:</b> This version improves the clock app with a redesigned interface and smoother animations. It focuses on cleaner code and better performance.</p>

          <p><b>Swift Portrait:</b> This project displays a user avatar or image inside a simple SwiftUI layout. It demonstrates how to structure visual elements in a clean design.</p>

          <p><b>Swift Clock V5:</b> A more advanced version of the clock app featuring a modern and polished UI. It offers improved responsiveness and better time-update handling.</p>

          <p><b>Binary Counter:</b> This app counts numbers in binary format and updates the display in real time. It helps visualize how binary numbers work in computing.</p>

          <p><b>Frog Escape Game:</b> A simple game where a frog tries to escape obstacles. It uses basic animation and collision logic to create gameplay.</p>

          <p><b>Swift XOX:</b> A SwiftUI version of the Tic Tac Toe game with a clean interface. The app checks for winning combinations and prevents illegal moves.</p>

          <p><b>Ice Cream Overflow:</b> This small project simulates an ice cream stacking effect, showing how items overflow visually. It demonstrates layout behavior in SwiftUI lists and stacks.</p>

          <p><b>Country List:</b> This project displays a scrollable list of countries with clean formatting. It demonstrates list creation and dynamic content in SwiftUI.</p>

          <p><b>Music List:</b> A simple app that organizes and displays a list of songs. It shows how SwiftUI handles lists, text, and basic data structures.</p>

          <p><b>Ice Cream List:</b> A fun list app that displays different ice cream flavors. It is designed using SwiftUI to show basic list formatting and layout.</p>

          <p><b>Pixel Art:</b> A mini-project where users can create a 10x10 pixel art grid. It demonstrates the use of SwiftUI, loops, and user input for interactive graphics.</p>

          <p><b>My Initials:</b> A creative mini-project where users can draw or display their initials using SwiftUI. It demonstrates handling shapes, colors, and user interaction.</p>
        `;
      } else if (page === 'bigideas') {
        content.innerHTML = `
          <h1>Big Ideas</h1>

          <h2>Collaborating</h2>
          <p>We worked together as a team...</p>

          <h2>Program Design & Development</h2>
          <p>I made a simple plan with clear steps...</p>

          <h2>Program Function & Purpose</h2>
          <p>I set a clear goal, thought about the users...</p>

          <h2>Finding & Fixing Mistakes</h2>
          <p>I ran small tests, checked different situations...</p>

          <hr>
          <h1>Big Idea 2</h1>
          <p><b>Big Idea 2 Video:</b></p>
          <iframe src="https://www.veed.io/view/22f6a870-f27f-4752-a8f3-f952d67a2640?source=Homepage&panel=share" allowfullscreen></iframe>

          <h2>Algorithms & Programming</h2>
          <p>I used simple algorithms...</p>

          <h2>Variables & Data</h2>
          <p>I used variables to store and change information...</p>

          <h2>Control Structures</h2>
          <p>I used if statements to make decisions...</p>

          <h2>Abstraction</h2>
          <p>I divided my code into smaller parts...</p>
        `;
      }
    }
  </script>
</body>
</html>





