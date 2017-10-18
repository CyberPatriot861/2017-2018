@Echo off
For %%# in (*.msu) Do (
    Echo: Installing update: %%#
    Wusa "%%#" /quiet /norestart
)
Echo Windows Update finished.
Pause&Exit
