# 🎮 ACAJOU GAMES

**Educational Games for Kids & Families**

Transform learning into fun with our collection of engaging, educational games designed for children ages 6-14.

---

## 🌟 Features

✅ **6 Professional Games** - Math, trivia, word puzzles, and more  
✅ **100% Free to Play** - No subscriptions, no hidden fees  
✅ **Cross-Platform** - Web, iOS, and Android ready  
✅ **Analytics Built-in** - Track engagement and usage  
✅ **Mobile Ready** - Responsive design for all devices  
✅ **PWA Enabled** - Installable as a web app  

---

## 🎯 Games Included

### 1. 🧮 Math Blaster
Progressive difficulty math game with 20+ levels, multiple difficulty modes, and streak bonuses.

### 2. ⚔️ Math Duel
Head-to-head two-player math competition with real-time scoring.

### 3. 🧠 Brain Quest
Multi-subject trivia covering spelling, geography, science, history, and math.

### 4. 🔤 Word Scramble
Unscramble words from 6 different categories with hints and timer challenges.

### 5. ❌⭕ Tic Tac Toe
Classic strategy game with AI opponent (easy to impossible difficulty).

### 6. ⚔️ Quest Adventure
Epic text-based RPG with combat, inventory, and multiple story paths.

---

## 🚀 Quick Start

### Option 1: Play Online (Instant)
1. Open `index.html` in a web browser
2. Click on any game to play
3. That's it! No installation needed

### Option 2: Deploy to Web (5 minutes)
1. Sign up at [Netlify](https://netlify.com)
2. Drag and drop all files to Netlify
3. Your site is live!

### Option 3: Build Mobile App (Advanced)
See [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md) for detailed instructions

---

## 📁 File Structure

```
acajou-games/
│
├── 📄 index.html              # Landing page
├── 📄 math_blaster.html       # Math game - progressive difficulty
├── 📄 math_duel.html          # Math game - 2 player
├── 📄 brain_quest.html        # Trivia game
├── 📄 word_scramble.html      # Word puzzle game
├── 📄 tic_tac_toe.html        # Strategy game
├── 📄 quest_adventure.html    # RPG adventure game
│
├── 🔧 manifest.json           # PWA configuration
├── 🔧 capacitor.config.json   # Mobile app config
├── 🔧 package.json            # Dependencies
│
├── 📋 DEPLOYMENT_GUIDE.md     # Complete setup guide
├── 📋 README.md               # This file
├── 🔨 setup.sh                # Unix setup script
└── 🔨 setup.bat               # Windows setup script
```

---

## 📊 Analytics Setup

### Step 1: Get Google Analytics ID
1. Go to [analytics.google.com](https://analytics.google.com)
2. Create account and property
3. Copy your Measurement ID (looks like `G-XXXXXXXXXX`)

### Step 2: Update Files
Replace `G-XXXXXXXXXX` in:
- `index.html` (line 18)

Add analytics code to each game file (see DEPLOYMENT_GUIDE.md)

### Step 3: Deploy & Track
Deploy your site and watch the data roll in!

---

## 💰 Monetization Options

### 1. Ads (Google AdSense)
- Expected: $1-5 per 1000 views
- Setup time: 1 hour

### 2. Premium Version
- Sell ad-free version: $2.99-4.99
- Use Stripe or Gumroad

### 3. Educational Market
- Teachers Pay Teachers: $15-35
- School licenses: $200-500 per school

See [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md) for detailed monetization strategies.

---

## 📱 Mobile App Deployment

### Android
```bash
npm install
npx cap add android
npx cap sync android
npx cap open android
```

### iOS (Mac only)
```bash
npm install
npx cap add ios
npx cap sync ios
npx cap open ios
```

**Detailed guide:** See [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md)

---

## 🎨 Customization

### Branding
- Logo: Update "ACAJOU GAMES" text in header
- Colors: Modify CSS variables in each file
- Favicon: Replace favicon.png

### Content
- Add more games: Follow existing game structure
- Modify difficulty: Adjust game logic in <script> sections
- Change categories: Update content arrays in game files

---

## 🌐 Deployment Platforms

### Recommended (Easiest):
- ✅ **Netlify** - Drag & drop deployment
- ✅ **Vercel** - Automatic deployments
- ✅ **GitHub Pages** - Free with GitHub

### Mobile Apps:
- ✅ **Google Play Store** - Android
- ✅ **Apple App Store** - iOS
- ✅ **PWA** - Installable web app (no store needed)

---

## 📈 Marketing Checklist

### Week 1: Launch
- [ ] Deploy website
- [ ] Set up analytics
- [ ] Test all games
- [ ] Share with friends/family

### Week 2-4: Grow
- [ ] Post on Reddit (r/teachers, r/homeschool)
- [ ] Share in Facebook groups
- [ ] Create social media accounts
- [ ] Email local schools

### Month 2+: Scale
- [ ] Submit to Product Hunt
- [ ] Reach out to bloggers
- [ ] Partner with educators
- [ ] Launch mobile apps

---

## 🛠️ Technical Requirements

### For Web Deployment:
- ✅ Any modern web browser
- ✅ Internet connection
- ✅ That's it!

### For Mobile App Development:
- Node.js v18 or higher
- Android Studio (for Android)
- Xcode (for iOS - Mac only)
- Capacitor CLI

---

## 📞 Support

### Need Help?
- 📖 Read: [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md)
- 🐛 Issues: Check browser console (F12)
- 💡 Ideas: Customize and make it your own!

### Common Issues:
**Problem:** Games not loading  
**Solution:** Check if JavaScript is enabled

**Problem:** Analytics not tracking  
**Solution:** Verify your GA Measurement ID

**Problem:** Mobile app won't build  
**Solution:** Ensure Node.js v18+ is installed

---

## 📄 License

MIT License - Feel free to modify and distribute!

### Attribution:
- Built with vanilla HTML, CSS, and JavaScript
- No external dependencies required
- All games are self-contained

---

## 🎯 Success Metrics

### Realistic Goals:

**Month 1:**
- 1,000 users
- 10,000 game plays

**Month 3:**
- 10,000 users  
- $100-500/month revenue

**Month 6:**
- 50,000 users
- $1,000+/month revenue
- Apps in both stores

---

## 🚀 Next Steps

1. **Right Now:** Deploy to Netlify (5 minutes)
2. **Today:** Set up Google Analytics
3. **This Week:** Share with 100 people
4. **This Month:** Start monetization

**You have everything you need to launch!**

---

## 🎉 About ACAJOU GAMES

ACAJOU GAMES is dedicated to making learning fun through engaging, educational games. Our mission is to help children develop critical thinking, math skills, and vocabulary while having a blast.

**Fun Fact:** "Acajou" means mahogany in French - strong, beautiful, and built to last. Just like our games! 🌳

---

## 📊 Stats at a Glance

- **6** Complete Games
- **100%** Free & Open Source
- **0** Dependencies Required
- **∞** Potential

---

**Made with ❤️ for learners everywhere**

---

*Version 1.0.0 | Last Updated: 2025*
