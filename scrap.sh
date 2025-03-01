#!/bin/bash

# URL of the target website
pitt="https://raw.githubusercontent.com/SimplifyJobs/Summer2025-Internships/dev/README.md"
cvrve="https://raw.githubusercontent.com/cvrve/Summer2025-Internships/refs/heads/dev/README.md"
speedySWE="https://raw.githubusercontent.com/speedyapply/2025-SWE-College-Jobs/refs/heads/main/README.md"
speedyAI="https://raw.githubusercontent.com/speedyapply/2025-AI-College-Jobs/refs/heads/main/README.md"




# Create Readme.md file and write the header
echo "# Summer 2025 New York Tech Internships" > Readme.md
echo "A fork of [Pitt CSC & Simplify](https://github.com/SimplifyJobs/Summer2025-Internships?tab=readme-ov-file) & [cvrve Summer2025-Internships](https://github.com/cvrve/Summer2025-Internships) & [speedyapply swe](https://github.com/speedyapply/2025-SWE-College-Jobs) & [speedyapply AI](https://github.com/speedyapply/2025-AI-College-Jobs)" >> Readme.md
echo "" >> Readme.md
echo "Use this repository to share and keep track of software, tech, CS, PM, and quant internships for Summer 2025 in New York City." >> Readme.md
echo "" >> Readme.md
echo "## The List 🚴🏔" >> Readme.md
echo "### Legend" >> Readme.md
echo " - 🛂 - Does NOT offer Sponsorship" >> Readme.md
echo " - 🇺🇸 - Requires U.S. Citizenship" >> Readme.md
echo "" >> Readme.md
echo "| Company | Role | Location | Application/Link | Date Posted |" >> Readme.md
echo "| ------- | ---- | -------- | ---------------- | ----------- |" >> Readme.md

# Append the filtered content to Readme.md
curl -s "$pitt" | grep -E "NYC|NY" | grep -v "🔒" >> Readme.md
curl -s "$cvrve" | grep -E "NYC|NY" | grep -v "🔒" >> Readme.md
curl -s "$speedySWE" | grep -E "NYC|NY" >> Readme.md
curl -s "$speedyAI" | grep -E "NYC|NY" >> Readme.md



# Display a message indicating the completion of the process
echo "NYC application has been written to Readme.md"

