

#Demir Bekiroglu

Hi ı am Demir Bekiroglu. I am a student in Hisar School. I enjoy creating new things in computer and ı am taking the Ap CSP course. İn this wedbiset you can have a look at my projects

<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Demir Bekiroğlu | Personal Site</title>
<meta name="description" content="Personal website of Demir Bekiroğlu" />
<style>
body {
margin: 0;
font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial;
background: #ffffff;
color: #111827;
line-height: 1.6;
}
header {
background: #111827;
color: #ffffff;
padding: 12px 20px;
display: flex;
align-items: center;
justify-content: space-between;
}
.logo {
font-weight: bold;
font-size: 20px;
}
nav a {
color: #ffffff;
margin-left: 20px;
text-decoration: none;
font-weight: 500;
}
nav a:hover {
text-decoration: underline;
}
.container {
max-width: 780px;
margin: 40px auto;
padding: 0 16px;
}
h1 {
font-size: 28px;
margin: 0 0 12px 0;
}
h2 {
font-size: 20px;
margin-top: 32px;
}
footer {
margin-top: 40px;
padding: 16px;
font-size: 13px;
color: #6b7280;
text-align: center;
border-top: 1px solid #e5e7eb;
}
</style>
</head>
<body>
<header>
<div class="logo">Demir Bekiroğlu</div>
<nav>
<a href="index.html">Home</a>
<a href="projects.html">Projects</a>
<a href="big-ideas.html">Big Ideas</a>
<a href="documentation.html">Documentation</a>
</nav>
</header>


<div class="container">
<h1>About Me</h1>
<p>Hello, I'm Demir Bekiroğlu. I study at Hisar Schools and I'm taking the CSP course.</p>
</div>


<footer>
<span>© <span id="y"></span> Demir Bekiroğlu</span>
</footer>


<script>
document.getElementById('y').textContent = new Date().getFullYear();
</script>
</body>
</html>
