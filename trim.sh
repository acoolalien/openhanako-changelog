LIMIT=8
COUNT=$(grep -c '^---$' changelog.md)
if [ "$COUNT" -gt "$LIMIT" ]; then
  SKIP=$((COUNT - LIMIT))
  awk -v skip="$SKIP" '/^---$/{c++; if(c>skip){p=1}} p{print}' changelog.md > .trim.tmp
  mv .trim.tmp changelog.md
  echo "Trimmed from $COUNT to $LIMIT entries"
else
  echo "Already $COUNT entries, within limit"
fi
