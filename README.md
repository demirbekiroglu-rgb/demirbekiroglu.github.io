
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
    nav a { color: white; padding: 14px 20px; text-decoration: none; font-weight: bold; cursor: pointer; }
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
        content.innerHTML = '<h1>Welcome to My GitHub Page</h1><p>This is the Home page.</p>';
      }
      else if(page === 'projects') {
        content.innerHTML = `<h1>My Projects</h1>
        <ul>
          <li><a href="https://scratch.mit.edu/projects/1212311251" target="_blank">Tic Tac Toe (Scratch)</a></li>
        </ul>
        <h2>Swift Projects</h2>
        <p><b>Swift Calculator</b></p>
        <iframe src="https://www.veed.io/view/6b4cdf7e-c6a5-47b4-b9aa-a65b77e18b02?source=Homepage&panel=share" allowfullscreen></iframe>
        <p><b>Swift Clock</b></p>
        <iframe src="https://www.veed.io/view/04e02321-e5f0-4c25-98a9-e972da555a02?source=Homepage&panel=share" allowfullscreen></iframe>
        <p><b>Swift Portrait</b></p>
        <iframe src="https://www.veed.io/view/39fe0445-5037-4e26-b564-203e570d318b?source=Homepage&panel=share" allowfullscreen></iframe>`;
      }
      else if(page === 'documentation') {
        content.innerHTML = `<h1>Documentation</h1>
        <p>While I was creating my GitHub page, I got help from classmates and school-recommended support videos, which guided me through some of the design and coding steps. The site is hosted on GitHub Pages and has a clean, easy-to-use design.</p>
        <p>Big Idea 1 video:</p>
        <iframe src="https://www.veed.io/view/ae2a9791-c4a5-456a-adef-fea392229777?source=Homepage&panel=share" allowfullscreen></iframe>`;
      }
      else if(page === 'bigideas') {
        content.innerHTML = `<h1>Big Ideas</h1>
        <h2>Collaboration</h2>
        <p>Working together with classmates helped us share ideas, solve problems more easily, and learn from each other, which improved the overall quality of the work.</p>
        <h2>Program Design & Development</h2>
        <p>Planning, creating, and organizing the program from start to finish helped the program work properly, meet user needs, stay easy to update, and be adaptable to future changes.</p>
        <h2>Program Function & Purpose</h2>
        <p>Understanding the program's function and purpose helped guide the design process, ensured the program met its goals, and provided a clear direction for users and developers.</p>
        <h2>Identifying & Correcting Errors</h2>
        <p>Finding mistakes in the code and fixing them helped the program work correctly, avoided bigger problems later, and improved coding and problem-solving skills.</p>`;
      }
    }
  </script>
</body>
</html>
