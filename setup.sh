#!/bin/bash

# ACAJOU GAMES - Quick Setup Script
# This script helps you configure analytics across all your game files

echo "🎮 Welcome to ACAJOU GAMES Setup!"
echo "=================================="
echo ""

# Check if running on Windows (Git Bash)
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    echo "✓ Detected Windows environment"
fi

echo "This script will help you set up Google Analytics for all your games."
echo ""

# Get Google Analytics ID
read -p "Enter your Google Analytics Measurement ID (e.g., G-XXXXXXXXXX): " GA_ID

if [ -z "$GA_ID" ]; then
    echo "❌ No ID provided. Exiting..."
    exit 1
fi

echo ""
echo "📝 Updating files with GA ID: $GA_ID"
echo ""

# Analytics code template
read -r -d '' ANALYTICS_CODE << EOM
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=${GA_ID}"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', '${GA_ID}');
</script>
EOM

# List of game files
GAME_FILES=(
    "math_blaster.html"
    "math_duel.html"
    "brain_quest.html"
    "word_scramble.html"
    "tic_tac_toe.html"
    "quest_adventure.html"
)

echo "🔄 Adding analytics to games..."
echo ""

for file in "${GAME_FILES[@]}"; do
    if [ -f "$file" ]; then
        # Check if analytics already exists
        if grep -q "gtag" "$file"; then
            echo "⚠️  $file already has analytics code"
        else
            # Add analytics before </head>
            sed -i.bak "s|</head>|${ANALYTICS_CODE}\n</head>|" "$file"
            echo "✅ Updated $file"
        fi
    else
        echo "⚠️  $file not found"
    fi
done

echo ""
echo "✅ Setup complete!"
echo ""
echo "📊 Next steps:"
echo "1. Update index.html with your GA ID (line 18)"
echo "2. Deploy your site to Netlify or GitHub Pages"
echo "3. Verify tracking in Google Analytics (may take 24-48 hours)"
echo ""
echo "🚀 Ready to launch ACAJOU GAMES!"
echo ""

# Create a simple config file
cat > analytics_config.txt << EOF
Google Analytics Configuration
==============================
Measurement ID: ${GA_ID}
Setup Date: $(date)
Status: Configured

Files Updated:
$(for file in "${GAME_FILES[@]}"; do echo "- $file"; done)

Next Steps:
1. Update index.html manually with GA ID
2. Deploy to production
3. Monitor analytics.google.com
EOF

echo "📄 Configuration saved to analytics_config.txt"
echo ""
