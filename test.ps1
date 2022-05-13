#echo '' >myhosts1
#Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/521xueweihan/GitHub520/main/hosts" -outfile 1
#type 1 >>myhosts1
#Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/ineo6/hosts/master/hosts" -outfile 2
#type 2 >>myhosts1
#Get-Content myhosts1 | Out-File myhosts -Encoding ascii
#Remove-Item 1
#Remove-Item 2
#Remove-Item myhosts1
iwr -useb -Uri "https://raw.githubusercontent.com/wkway/gh/master/hosts" -o myhosts
