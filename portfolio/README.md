# Personal Portfolio Website (Flutter Web) - Amta Hafeez

Ye mera personal portfolio website hai jo maine Flutter Web framework se banaya hai. Ye website fully responsive, modern aur clean design par mabni hai. Iska main maqsad meri skills, education aur 3 main projects ko professional tareeqe se showcase karna hai.

### Live Demo
Yahan apna Netlify / Vercel ka link add kar dein: https://your-link.netlify.app

### Key Features
*   Fully responsive design jo Mobile, Tablet aur Desktop par perfect chalti hai
*   Modern dark theme with color code #0F172A
*   Modular architecture, har section alag file mein
*   Hero section mein professional online avatar image
*   Smooth scrolling single page website
*   Clean code, no extra heavy packages

### Tech Stack
*   Framework: Flutter Web
*   Language: Dart
*   Design: Material 3, Custom Widgets, ClipOval, BoxDecoration
*   Tools Used: Android Studio, Git, GitHub, VS Code

### Project Folder Structure


### Har File Ki Detailed Explanation

**1. lib/main.dart**
Ye application ka entry point hai. main() function yahan se app ko run karta hai. PortfolioApp widget mein maine global theme, dark background color aur typography set ki hai aur PortfolioHome ko as a first screen load kiya hai.

**2. lib/views/portfolio_home.dart**
Ye main layout view hai. Is file mein saare widgets ko ek SingleChildScrollView aur Column ke andar arrange kiya gaya hai taake user ek hi page par smooth scroll kar sake. Ye saare sections ko jorne ka kaam karti hai.

**3. lib/widgets/navbar.dart**
Website ke top par professional navigation bar. Left side par mera naam "Amta Hafeez" brand logo ki tarah hai aur right side par About, Skills, Projects, Education, Contact ke navigation links hain.

**4. lib/widgets/hero_section.dart**
Ye visitor ka pehla impression hai. Is mein mera naam, professional title "Software Engineering Student & Mobile App Developer", short bio, "Get in Touch" ka button aur Unsplash se li gayi professional profile image hai jo ClipOval aur shadow ke saath circular container mein display ho rahi hai.

**5. lib/widgets/about_section.dart**
Mere baare mein details. Is mein maine likha hai ke main COMSATS University Islamabad, Sahiwal Campus ki 5th semester ki Software Engineering ki student hun, Roll No FA24-BSE-079, aur mujhe mobile app development ka shauq hai.

**6. lib/widgets/skills_section.dart**
Meri technical skills ka section. Is mein Flutter, Dart, Information Security, Python, Firebase, Cisco Packet Tracer jaise skills ko Wrap widget aur stylish Chip components se modern grid style mein show kiya gaya hai.

**7. lib/widgets/projects_section.dart**
Mere 3 featured projects jo cards mein show ho rahe hain:
*   Smart Automated Roof System (Hardware Project): Arduino Uno aur rain sensor par based hardware prototype hai jiska monitoring dashboard Streamlit par banaya gaya hai.
*   Cisco Smart Home IoT System (Software Project): Cisco Packet Tracer par engineered aur tested simulated smart home network topology hai.
*   AI Maze Solver (AI Project): Python mein banayi gayi intelligent application jo graph search aur pathfinding algorithm se maze solve karti hai.

**8. lib/widgets/education_section.dart**
Meri taleem ki details. BS Software Engineering, COMSATS University Sahiwal, 5th Semester, FA24-BSE-079 aur relevant coursework jaise Mobile App Development, Software Architecture, Information Security is bordered container card mein structured hai.

**9. lib/widgets/contact_section.dart**
Rabte ke liye section. Is mein Email, GitHub aur LinkedIn ke icons aur links diye gaye hain taake recruiter ya koi bhi mujh se easily contact kar sake.

### How to Run the
  ProjeRun flutter run -d edge


### Future Improvements
*   Light/Dark mode toggle
*   Contact form ko Firebase se connect karna
*   Animations add karna
*   Resume download button

### Author
Amta Hafeez - BS Software Engineering (5th Semester)
COMSATS University Islamabad, Sahiwal Campus - FA24-BSE-079
