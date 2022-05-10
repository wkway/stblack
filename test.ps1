echo '' >myhosts1
echo '##########################################' >>myhosts1
echo '######           GithubHosts       #######' >>myhosts1
echo '##########################################' >>myhosts1
echo '' >>myhosts1
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.hellogithub.com/hosts" -outfile 1
type 1 >>myhosts1
Invoke-WebRequest -UseBasicParsing -Uri "https://gitee.com/ineo6/hosts/raw/master/next-hosts" -outfile 2
type 2 >>myhosts1
Get-Content myhosts1 | Out-File myhosts -Encoding ascii
Remove-Item 1
Remove-Item 2
Remove-Item myhosts1