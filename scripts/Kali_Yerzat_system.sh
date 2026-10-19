#!/bin/bash
echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Yerzat"
echo "Surname: Kali"
echo "Group: IT2-2301"
echo "Student ID: 38307"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s)"
echo "Disk Usage:"
df -h / | tail -n 1
echo "Memory Usage:"
free -h | head -n 2

echo "------------------------------"
if [ -f "Kali_Yerzat_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
