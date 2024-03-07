function ytms {
        $ytms_input = """$args[0]"""
        $ytms_url = yt-dlp --format ba --get-url ytsearch1:$ytms_input
        $ytms_title = yt-dlp --get-title ytsearch1:$ytms_input
        $ytms_uploader = yt-dlp --print "%(uploader)s" ytsearch1:$ytms_input
        mpv --no-video --term-playing-msg="`r`nTitle: $($ytms_title)`r`nUploader: $($ytms_uploader)`r`n" $ytms_url
}