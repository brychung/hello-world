echo on

mkdir s1
cd s1

mkdir s2
mkdir s3
cd s3
touch conf.txt
echo I love bash scripting. >> conf.txt

cd ..

cd s2
mkdir Advanced

touch text_chunk1.txt

echo Lily (My One and Only) -- Smashing Pumpkins >> text_chunk1.txt
echo. >> text_chunk1.txt
echo Lily, my one and only >> text_chunk1.txt
echo I can hardly wait till I see her >> text_chunk1.txt
echo Silly, I know I'm silly >> text_chunk1.txt
echo Cause I'm hanging in this tree >> text_chunk1.txt
echo In the hopes that she will catch a glimpse of me >> text_chunk1.txt
echo And thru her window shade >> text_chunk1.txt
echo I watch her shadow move >> text_chunk1.txt
echo I wonder if she.......? >> text_chunk1.txt
echo. >> text_chunk1.txt

copy text_chunk1.txt text_chunk2.txt
move text_chunk2.txt Advanced/


cd Advanced

echo Lily, my one and only >> text_chunk2.txt
echo Love is in my heart and in your eyes >> text_chunk2.txt
echo Will she or won't she want him >> text_chunk2.txt
echo No one knows for sure >> text_chunk2.txt
echo But an officer is knocking at my door >> text_chunk2.txt
echo. >> text_chunk2.txt
echo And thru her window shade >> text_chunk2.txt
echo I watch her shadow move >> text_chunk2.txt
echo I wonder if she could only see me? >> text_chunk2.txt
echo. >> text_chunk2.txt
echo And when I'm with her I feel fine >> text_chunk2.txt
echo If I could kiss her I wouldn't mind the time it took to find >> text_chunk2.txt
echo. >> text_chunk2.txt
echo My lily, my one and only >> text_chunk2.txt
echo I can hardly wait till I see her >> text_chunk2.txt
echo Oh lily, I know you love me >> text_chunk2.txt
echo Cause as they're draggin me away >> text_chunk2.txt
echo I swear I saw her raise her hand and wave (goodbye) >> text_chunk2.txt