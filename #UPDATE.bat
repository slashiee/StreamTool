@echo off
echo Deleting vgmstream...
del avcodec-vgmstream-*.dll
del avformat-vgmstream-*.dll
del avutil-vgmstream-*.dll
del jansson.dll
del libatrac9.dll
del libcelt-0061.dll
del libcelt-0110.dll
del libg719_decode.dll
del libmpg123-*.dll
del libspeex.dll
del libvorbis.dll
del swresample-vgmstream-*.dll
del vgmstream.exe
echo Deleting ffmpeg...
del avcodec-*.dll
del avdevice-*.dll
del avfilter-*.dll
del avformat-*.dll
del avutil-*.dll
del ffmpeg.exe
del ffplay.exe
del postproc-*.dll
del swresample-*.dll
del swscale-*.dll
echo Deleting vgaudio...
del vgaudio.exe
echo Updating vgmstream...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://nightly.link/vgmstream/vgmstream/workflows/vs-win/master/vgmstream-win.zip', 'vgmstream.zip')"
echo Updating vgaudio...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://github.com/ActualMandM/VGAudio/releases/download/appveyor/VGAudioCli.exe', 'vgaudio.exe')"
echo Extracting vgmstream...
7za x "vgmstream.zip"
echo Updating ffmpeg...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z', 'ffmpeg.7z')"
echo Extracting ffmpeg...
7za e "ffmpeg.7z" -y
ren test.exe vgmstream.exe
echo Deleting unnecessary files...
del COPYING
del USAGE.md
del README.md
del ffprobe.exe
del in_vgmstream.dll
del vgmstream.zip
del ffmpeg.7z
del xmp-vgmstream.dll
rmdir bin
rmdir doc
rmdir presets
del LICENSE.txt
del README.txt
del bootstrap.min.css
del default.css
del developer.html
del faq.html
del fate.html
del ffmpeg-all.html
del ffmpeg-bitstream-filters.html
del ffmpeg-codecs.html
del ffmpeg-devices.html
del ffmpeg-filters.html
del ffmpeg-formats.html
del ffmpeg-protocols.html
del ffmpeg-resampler.html
del ffmpeg-scaler.html
del ffmpeg-utils.html
del ffmpeg.html
del ffplay-all.html
del ffplay.html
del ffprobe-all.html
del ffprobe.html
del general.html
del git-howto.html
del libavcodec.html
del libavdevice.html
del libavfilter.html
del libavformat.html
del libavutil.html
del libswresample.html
del libswscale.html
del mailing-list-faq.html
del nut.html
del platform.html
del style.min.css
del ffprobe.xsd
del libvpx-1080p.ffpreset
del libvpx-1080p50_60.ffpreset
del libvpx-360p.ffpreset
del libvpx-720p.ffpreset
del libvpx-720p50_60.ffpreset
