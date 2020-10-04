#!bin/bash
# run this file by 2 argument
# eg > date_between 2020-10-02 2020-20-07
# example loop date in  [ 2020-10-02 2020-20-07 ]

if [[ $1 =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]
  then
    echo "Date $1 is valid format (YYYY-MM-DD)"
  else
    echo "Date $1 is invalid format (not YYYY-MM-DD)"
    exit 1
fi
if [[ $2 =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]
  then
    echo "Date $1 is valid format (YYYY-MM-DD)"
  else
    echo "Date $1 is invalid format (not YYYY-MM-DD)"
    exit 1
fi


start=$1
end=$2

year=${start:0:4}
month=${start:5:2}
day=${start:8:2}

start=$(date -d $start +%Y%m%d)
end=$(date -d $end +%Y%m%d)

echo $start
echo $end

echo $year
echo $month
echo $day

# =================example 1===============================
while [[ $start -le $end ]]
do
	echo $start
	echo $(date -d $start +%Y-%m-%d)
	start=$(date -d"$start + 1 day" +"%Y%m%d")
done
#=========================================================

echo "============ Break 1 =============="

# =================example 2 echo with comma==============================
start=$1
end=$2
echo $start
echo $end
start=$(date -d $start +%Y%m%d)
end=$(date -d $end +%Y%m%d)

i=0
echo "("
while [[ $start -le $end ]]
do
  if [ $i == 0 ]
  then  
    echo "'$start'"
  else
    echo ",'$start'"
  fi
	#echo $start
        #echo $(date -d $start +%Y-%m-%d)
        start=$(date -d"$start + 1 day" +"%Y%m%d")
  i=$((i+1))
done 
echo ")"
echo "i=${i}"


# ========================================================
echo "============ Break 2==================="
# =================example 3 file==============================
start=$1
end=$2
echo $start
echo $end
start=$(date -d $start +%Y%m%d)
end=$(date -d $end +%Y%m%d)

i=0
echo "(" > datelist.txt
while [[ $start -le $end ]]
do
  if [ $i == 0 ]
  then
    echo "'$start'" >> datelist.txt 
  else
    echo ",'$start'" >> datelist.txt
  fi
        #echo $start
        #echo $(date -d $start +%Y-%m-%d)
        start=$(date -d"$start + 1 day" +"%Y%m%d")
  i=$((i+1))
done
echo ")" >> datelist.txt
echo "i=${i}"


# =======================================================

echo "============ Break 3==================="
# =================example 4 file and cat to variable ==============================
start=$1
end=$2
echo $start
echo $end
start=$(date -d $start +%Y%m%d)
end=$(date -d $end +%Y%m%d)

i=0
echo "(" > datelist.txt
while [[ $start -le $end ]]
do
  if [ $i == 0 ]
  then
    echo "'$start'" >> datelist.txt
  else
    echo ",'$start'" >> datelist.txt
  fi
        #echo $start
        #echo $(date -d $start +%Y-%m-%d)
        start=$(date -d"$start + 1 day" +"%Y%m%d")
  i=$((i+1))
done
echo ")" >> datelist.txt
echo "i=${i}"

date_list=$(cat datelist.txt)
echo $date_list


# =========================================================