
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
    nav a { color: #FFFFFF; padding: 14px 20px; text-decoration: none; font-weight: bold; cursor: pointer; }
    nav a:hover { background-color: #1a73e8; }
    .container { padding: 40px; text-align: center; }
    iframe { margin-top: 20px; max-width: 100%; height: 400px; border: none; }
  </style>
</head>
<body>
  <!-- Menü -->
  <nav>
    <a onclick="showPage('home')">Home</a>
    <a onclick="showPage('projects')">Projects</a>
    <a onclick="showPage('documentation')">Documentation</a>
    <a onclick="showPage('bigideas')">Big Ideas</a>
  </nav>

  <!-- İçerik alanı -->
  <div class="container" id="content">
    <h1>Welcome to My GitHub Page</h1>
    <p>This is the Home page.</p>
  </div>

  <script>
    const content = document.getElementById('content');

    function showPage(page) {
      if(page === 'home') {
        content.innerHTML = `
          <h1>Welcome to My GitHub Page</h1>
          <p>This is the Home page.</p>
        `;
      } else if(page === 'projects') {
        content.innerHTML = `
          <h1>My Projects</h1>
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
        `;
      } else if(page === 'documentation') {
        content.innerHTML = `
          <h1>Documentation</h1>
          <p>While making the Tic Tac Toe game on Scratch I had some problems that I faced. This game consists of 9 squares X and O. The first person that can make 3 lines wins. While I was coding, I used YouTube for help.</p>
          <iframe src="https://www.veed.io/view/c98e36c4-bfce-414b-b2c0-e11ee2e02490?panel=share" allowfullscreen></iframe>
          <p><b>Additional GitHub Documentation:</b> While I was creating my GitHub page, I got help from classmates and school-recommended support videos, which guided me through some of the design and coding steps. The site is hosted on GitHub Pages and has a clean, easy-to-use design.</p>
          <p><b>Clock Documentation:</b> This is a simple Clock App made with Swift. It shows the current hour and minute, and the time increases each time a button is pressed. I created this app with help from the classroom videos and documents, which guided me in using Swift and adding interactive features.</p>
          <p><b>Big Idea 1 Video:</b></p>
          <iframe src="https://www.veed.io/view/ae2a9791-c4a5-456a-adef-fea392229777?source=Homepage&panel=share" allowfullscreen></iframe>
        `;
      } else if(page === 'bigideas') {
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
  </script>
</body>
</html>
