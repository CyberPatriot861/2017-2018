@echo off
for %%# in (*.msu) Do (
    echo: Installing update: %%#
    wusa "%%#" /quiet /norestart
)
echo Windows Update finished.
Pause&Exit
