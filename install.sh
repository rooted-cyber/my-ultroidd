chu() {
if [ -e Ultroid ];then
cd Ultroid
msg Already cloned
exit
fi
}
fold() {
cd ~
if [ -e Termux-Ultroid ];then
cd Termux-Ultroid
else
mkdir Termux-Ultroid
cd Termux-Ultroid
fi
chu
}
cp sm $PREFIX/bin
chmod 777 $PREFIX/bin/sm
msg starting cloning ultroid....
fold
git clone https://github.com/TeamUltroid/Ultroid > /dev/null 2>&1
msg cloned [ √ ]
fold
msg installing ultroid requirement [ please wait.... ]
if command -v pip3;then
pip3 install -r requirements.txt  --no-cache-dir --force-reinstall > /dev/null 2>&1
else
pp i -r ~/T*d/*/req*  --no-cache-dir --force-reinstall > /dev/null 2>&1
fi
msg completed [ √ ]
for c in pillow coloredlogs gitpython bs4 pytz enhancer telegraph aiohttp requests;do
msg "installing $c"
ch $c
done
cp fi* fold
fold
msg -n "Type password: "
read a
unzip -P "$a" *zip
tu cpp
tu py
tu st
mv .env ~
