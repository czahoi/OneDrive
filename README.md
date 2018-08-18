# [OneDrive for Business on Bash]

Fork自https://github.com/0oVicero0/OneDrive

1.修改了 -f 参数下单文件不能上传，多文件下第一个文件识别为目录的bug。

2.添加 -u 参数配合aria2下载，将所下载的文件或目录上传至onedrive根目录下，需配合autoupload.sh使用。

思路见https://www.moerats.com/archives/482/

eg: /home 为下载目录 /home/test 为下载文件的目录，内含下载的多个文件，test1.sh为其中一个。

onedrive -u /home /home/test/test1.sh

最终效果在onedrive上为/test/test1.sh

配合autoupload.sh脚本可自动推送onedrive所下载的全部文件。

-------------------------------------------------------------------------
使用方法: 
请参照该文章 
https://moeclub.org/2017/03/17/24/        

-------------------------------------------------------------------------
特性:      
1.支持文件夹上传.      
2.支持获取文件的匿名直链.     
3.纯shell支持.      

-------------------------------------------------------------------------

# Install
```
wget --no-check-certificate -q -O /tmp/OneDrive.sh "https://raw.githubusercontent.com/iiiiiii1/OneDrive/master/OneDrive.sh" && chmod +x /tmp/OneDrive.sh && bash /tmp/OneDrive.sh

```
# Authorize
```
onedrive -a

```
# Help
```
onedrive --help

#####################################################################
Usage: onedrive [OPTIONS] file1 [file2...]
       onedrive-d folder

Options:
  -d, --debug        Enable debug mode
  -a, --authorize    Run authorization process
  -f, --folder       Upload files into this remote folder
  -c, --creat        Creat remote folder."
                     Directory names are separated with a slash, e.g.
                     rootFolder/subFolder
                     Do NOT use a trailing slash!
  -h, --help         Show this help
  -u, --update       Upload files into this remote folder after aria2 download complete
  -r, --rename       Rename the files during upload
                     For each file you specify you MUST also specify
                     the remote filename as the subsequent parameter
                     Be especially careful with globbing!
  -s, --silent       Silent mode for use in crontab scripts.
                     Return only exit code.
  -ls,--list         Show the itmes in this directory.
  -l, --link         Show the file share link.
      
#####################################################################
      
```
