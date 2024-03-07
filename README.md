# ytms
ytms is command-line script for Powershell that uses [yt-dlp](https://github.com/yt-dlp/yt-dlp) to query YouTube and play the audio of the first result using [mpv](https://github.com/mpv-player/mpv).

Note: ytms is untested on non-Windows operating systems. If you encounter any issues, feel free to [file an issue](https://github.com/Atrament1s/ytms/issues).

# Dependencies
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [mpv](https://github.com/mpv-player/mpv)
- [powershell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.4)

# Installation
If you already have [yt-dlp](https://github.com/yt-dlp/yt-dlp) and [mpv](https://github.com/mpv-player/mpv) installed, skip to the next step. If you don't, download mpv from [here](https://mpv.io/installation/) and yt-dlp from [here](https://github.com/yt-dlp/yt-dlp/wiki/Installation).

Now you can install ytms by running the following command in powershell.
```powershell
Invoke-WebRequest -Uri https://raw.githubusercontent.com/Atrament1s/ytms/master/script.ps1 | Select-Object -ExpandProperty Content | Add-Content -Path $profile
```

# Usage
To play a song/video, simply type `ytms <video>` where `<video>` is what should be queried by the program.

### Example 1
If I wanted to play [Flashed Junk Mind by Milky Chance](https://youtu.be/AaoPyfRYkb0), I can simply type the song name after `ytms`.
```powershell
ytms flashed junk mind
```

### Example 2
If I wanted to play [Again by Crusher-P](https://www.youtube.com/watch?v=jdQWia3fwMU), it is unlikely I will reach the correct video by querying "again". Because of this, I can add additional search terms to reach the correct video.
```powershell
ytms again crusher-p vocaloid
```