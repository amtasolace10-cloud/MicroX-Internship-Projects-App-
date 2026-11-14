# MicroX App - Home + Services (Flutter)

Task owner: Amta Hafeez | Branch: `feature/home-services`
Reference: https://microxtechcompany.com (wohi dark theme, red accent, Outfit font, wohi text aur images)

## Project kaise chalayen
1. Android Studio me `flutter create microx_app` karen .
2. Is zip se `lib/`, `assets/` aur `pubspec.yaml` apne project me copy karen (agar repo me pehle se `pubspec.yaml` hai to sirf dependencies merge karen).
3. `flutter pub get` chalayen, phir `flutter run`.
4. Email chip ke liye Android par `android/app/src/main/AndroidManifest.xml` me `<manifest>` ke andar ye add karen:
   `<queries><intent><action android:name="android.intent.action.SENDTO"/><data android:scheme="mailto"/></intent></queries>`
   (https links ke liye kuch extra nahi chahiye.)
5. Images aur Outfit font internet se load hote hain (website ke image links + `google_fonts`). Offline chalane ke liye images ko `assets/images/` me download karen aur `SafeNetworkImage` ki jagah `Image.asset` use karen.

## File structure
```
lib/
  main.dart                        app start, theme, routes
  core/
    constants/app_colors.dart      website ke colors
    constants/app_assets.dart      website ki image links
    theme/app_theme.dart           dark theme + Outfit font
    theme/app_text_styles.dart     saare text styles
    utils/responsive.dart          MediaQuery helper (koi fixed size nahi)
    utils/launcher.dart            links kholta hai, error par SnackBar
    routes/app_routes.dart         route ke naam
    routes/app_router.dart         route table + AppNavigator
  data/
    models/                        ServiceModel, WorkModel, TeamMemberModel, ProcessStepModel, NavItemModel
    site_content.dart              website ka SAARA text ek jagah
  screens/
    home_screen.dart               1 screen = 1 file
    services_screen.dart           1 screen = 1 file
    placeholder/coming_soon_screen.dart   teammates ke routes ke liye temporary page
  widgets/
    common/   app_navbar, app_drawer, primary_button, secondary_button, text_arrow_button,
              section_container, section_header, announcement_banner, service_card,
              something_else_card, process_section, cta_section, app_footer,
              ask_microx_button, microx_logo, safe_network_image
    home/     hero_section, tech_strip, portal_promo_section, services_preview_section,
              perspective_banner, work_card, work_preview_section, why_microx_section,
              team_card, team_preview_section
    services/ services_hero, services_list_section
```

## Teammates apni screens kaise jorein
`core/routes/app_router.dart` kholen aur `generate()` me apni screen add karen, jaise:
`case AppRoutes.work: return _page(const WorkScreen(), settings);`
Navbar menu, footer aur buttons pehle se yehi route names use karte hain.

## Task aur website me kya farq tha, aur maine kya change kiya 
- Website par numbers wali Stats bar nahi hai, is liye us jagah website ki asal "Our building blocks" strip lagayi (React, Node.js, Firebase, Python, Cloud).
- Website par client reviews nahi hain, is liye testimonial ki jagah asal "Meet our team" cards lagaye (CEO, Manager, Team Lead).
- Hero ke buttons website wale hain: "Start a project" aur "Explore our work".
- "Why Microx" ke liye website ka section "Good ideas. Better together." use kiya (Build with care, Review together, Move forward).
- Website par 5 services hain (3-4 nahi) aur "Learn more" arrow nahi hai. Home par saari 5 chote cards me hain, Services page par saari 5 "Learn more" arrow ke sath hain jo website ka service page kholta hai.
- Website ke process me 3 steps hain (Discover & define, Design & build, Launch & evolve), 4 nahi, is liye asal 3 rakhe.
- CTA website wala hai: "A good idea deserves a great team." + "Start a conversation".
- Desktop ka top menu phone par fit nahi hota, is liye side menu (menu icon) me chala gaya. "Let's talk" navbar me nazar aata hai. Kuch hide nahi kiya.
- Work cards ki previews widgets se banayi hain (Orbit workspace, Nexa intelligence) kyun ke website par un ki image files nahi hain.
- Footer ke social links chips hain (Studio notes, LinkedIn, GitHub, Email) website ke asal links ke sath.



