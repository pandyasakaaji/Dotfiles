#!/bin/bash
ARTIST=$(mpc --format "%artist%" current | cut -c1-20)
TITLE=$(mpc --format "%title%" current | cut -c1-30)
echo "$ARTIST - $TITLE"

