#!/usr/bin/env bash
echo "export EDITOR=vim" >> ~/.bashrc
echo "export PAGER=" >> ~/.bashrc
# Fix for GPG error (KEYEXPIRED).
find /etc/apt -name "yarn.list" -delete -print
