if [ -a .hidden.txt ]
  then sudo rm .hidden.txt
  fi
#R CMD BATCH prog.R > .hidden.txt
Rscript prog.R > .hidden.txt
FS_SCORE=0 
if [ $(grep -e "hot" .hidden.txt | wc -l) -eq 1 ]&&[ $(grep -e "good" .hidden.txt| wc -l) -gt 0 ]&&[ $(grep -e "[1]" .hidden.txt| wc -l) -gt 0 ]
  then FS_SCORE=$((FS_SCORE+ 100))
fi
echo "FS_SCORE:$FS_SCORE%"





