#!/bin/bash
# oh-my-rubber-duck ASCII art with ANSI colors

# Colors
Y='\033[38;5;226m'   # Cute Bright Yellow
O='\033[38;5;208m'   # Cute Orange
W='\033[38;5;15m'    # White
K='\033[38;5;16m'    # Black
B='\033[38;5;39m'    # Bold Blue
C='\033[38;5;51m'    # Cyan
R='\033[0m'          # Reset
DIM='\033[2m'        # Dim

# Trap Ctrl+C to restore cursor and exit cleanly
trap "echo -e '\033[?25h'; exit" INT

# Hide cursor
echo -e "\033[?25l"

clear

while true; do
  # Move cursor to home (top-left) to overwrite previous frame
  echo -e "\033[H"

  # Frame 1: Higher duck, water shift 1
  echo -e "                          "
  echo -e "          ${Y}▄████▄${R}          "
  echo -e "        ${O}▄█${Y}██${W}▀${K}█${Y}██▄${R}         "
  echo -e "       ${O}▀▀${Y}███████▀${R}         "
  echo -e "       ${Y}▄██████████▄${R}       "
  echo -e "      ${Y}██████████████${R}      "
  echo -e "      ${Y}▀████████████▀${R}      "
  echo -e "        ${Y}▀▀██████▀▀${R}        "
  echo -e " ${B}~~~${C}~~~~${B}~~~~${C}~~~~${B}~~~~${C}~~~~${B}~~~~${C}~~~${R} "
  echo -e "  ${C}~~~~${B}~~~~${C}~~~~${B}~~~~${C}~~~~${B}~~~~${C}~~~~${B}~~${R}  "
  echo -e "                          "
  echo -e "    ${Y}꽥꽥이${R}${DIM} - 러버덕 디버깅 모드${R}     "
  echo -e "    ${DIM}답은 알려주지 않을 거야.${R}        "
  echo -e "    ${DIM}대신 네가 직접 찾도록 도와줄게!${R} "
  echo -e "                          "

  sleep 1.5

  # Move cursor to home
  echo -e "\033[H"

  # Frame 2: Lower duck (bobbing), water shift 2
  echo -e "                          "
  echo -e "                          "
  echo -e "          ${Y}▄████▄${R}          "
  echo -e "        ${O}▄█${Y}██${W}▀${K}█${Y}██▄${R}         "
  echo -e "       ${O}▀▀${Y}███████▀${R}         "
  echo -e "       ${Y}▄██████████▄${R}       "
  echo -e "      ${Y}██████████████${R}      "
  echo -e "      ${Y}▀████████████▀${R}      "
  # Water overlaps bottom of duck
  echo -e " ${C}~~${B}~~~~${C}~~~~${B}~~~~${C}~~~~${B}~~~~${C}~~~~${B}~~~~${R}"
  echo -e "${C}~~~~${B}~~~~${C}~~~~${B}~~~~${C}~~~~${B}~~~~${C}~~~~${B}~~~${R} "
  echo -e "                          "
  echo -e "    ${Y}꽥꽥이${R}${DIM} - 러버덕 디버깅 모드${R}     "
  echo -e "    ${DIM}답은 알려주지 않을 거야.${R}        "
  echo -e "    ${DIM}대신 네가 직접 찾도록 도와줄게!${R} "
  echo -e "                          "

  sleep 1.5
done
