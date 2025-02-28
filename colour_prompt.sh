#!/bin/bash

# रंग परिभाषित करें
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
NC='\033[0m' # कोई रंग नहीं (नॉर्मल कलर)

# figlet की जाँच करें
if ! command -v figlet &> /dev/null
then
  echo "${RED}Error: figlet is not installed. Please install it to use this script.${NC}"
  exit 1
fi

# उपयोगकर्ता से इनपुट लें
read -p "Enter your name (or leave blank): " name
read -p "Enter your prompt message (or leave blank): " prompt
read -p "Choose a color for the prompt (red, green, yellow, blue, magenta, cyan, white): " color

# डिफ़ॉल्ट मान
if [ -z "$name" ]; then
  name="root"
fi
if [ -z "$prompt" ]; then
  prompt="►"
fi

# रंग चुनें
case "$color" in
  red) color_code="$RED";;
  green) color_code="$GREEN";;
  yellow) color_code="$YELLOW";;
  blue) color_code="$BLUE";;
  magenta) color_code="$MAGENTA";;
  cyan) color_code="$CYAN";;
  white) color_code="$WHITE";;
  *) color_code="$BLUE";; # डिफ़ॉल्ट रंग
esac

# लेखक की जानकारी
echo "${GREEN}Created By im_Black_Boy${NC}"
echo "${GREEN}----------------------------${NC}"
echo "${CYAN}Instagram :@ mr_Black_Boy ${NC}"
echo "${CYAN}Github: github.com/Sachin/Solunke/${NC}"
echo "${GREEN}----------------------------${NC}"

# स्वागत संदेश
figlet -f standard "${YELLOW}Welcome ${name}${NC}"

# वर्तमान तिथि और समय
echo "${RED}$(date)${NC}"

# प्रॉम्प्ट
echo ""
echo "${color_code}┌─[$(date +%T)]─────[$name]───[1]${NC}"
echo "${color_code}|${NC}"
echo "${color_code}└─[~]────$prompt${NC}"
