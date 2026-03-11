#!/bin/bash

# 1. /usr dagi 5MB dan katta fayllar
find /usr -type f -size +5M -exec ls -lh {} \; > large_files.txt

# 2. /etc ichida oxirgi 2 kun ichida o'zgargan kataloglar
find /etc -type d -mtime -2 > recent_etc_dirs.txt

# 3. Home katalogingizda bo'sh fayllar (sizning user egasi)
find ~ -type f -user $ali -empty > my_empty_files.txt
