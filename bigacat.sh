#!/bin/bash
#all you have to do is click a button and let it run right?


keyword="$1"
wordlist=("rockyou" "crackstation-human-only" "crackstaion")
rule=("hob064" "d3adhob0" "OneRuleToRuleThemAll")

if [ -z "$keyword" ]
then
  echo "Enter a keyword my friend."
  echo "Quitting..."
  exit
else
  echo "Engines to full power"
  echo "Heeeeere we go..."
  for w in "${wordlist[@]}"
  do
      for r in "${rule[@]}"
      do
          hashcat -m 1000 -a 0 hashes/""$keyword"_zero.txt" wordlists/""$w".txt" -r rules/""$r".rule" -O -w 3
      done
  done

  hashcat -m 1000 hashes/""$keyword"_zero.txt" --show > ls
  ""$keyword"_one.txt"
  echo "Thats a wrap."
fi
