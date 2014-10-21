echo --- cleaning up ---
rm *.txt
rm *.tmp
rm *.csv
rm *.zip

echo 
echo --- downloading data ---
curl https://github.com/zonca/swcarpentry-workshop-pandas/blob/master/rawdata/rawdata.zip?raw=true -o rawdata.zip -L

echo 
echo --- unpacking data ---
unzip rawdata.zip

echo 
echo --- removing temp files ---
rm *.tmp

echo 
echo --- renaming ---
for f in *.txt
do
	mv $f ${f/txt/csv}
done

echo 
echo --- removing zip file ---
rm rawdata.zip

echo 
echo --- Available csv files ---
ls *.csv