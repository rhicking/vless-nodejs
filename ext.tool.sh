#!/usr/bin/env sh

random_str=$(tr -dc 'A-Za-z0-9' </dev/urandom | head -c 14)
random_path="/$random_str"

md5=$(echo -n "$random_path" | md5sum | awk '{print $1}')
uuid_part1=$(echo "$md5" | cut -c1-8)
uuid_part2=$(echo "$md5" | cut -c9-12)
uuid_part3=$(echo "$md5" | cut -c13-16)
uuid_part4=$(echo "$md5" | cut -c17-20)
uuid_part5=$(echo "$md5" | cut -c21-32)
uuid="$uuid_part1-$uuid_part2-$uuid_part3-$uuid_part4-$uuid_part5"

echo "==============================================="
echo "♻️ Random Path & UUID Generator"
echo "-----------------------------------------------"
echo "📁 Path : $random_path"
echo "🧬 UUID : $uuid"
echo "==============================================="
