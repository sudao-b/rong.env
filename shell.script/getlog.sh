filename=
if [ x$1 != x ]
then
   fllename=$1 
else
   fllename=log
fi

function deviceName
{
name=
case "$1" in
    "3HX0217704000041") $name="hua" 
    ;;
    "af0b0792") $name="mi" 
    ;;
    "ec3ce218")  $name="hai1"
    ;;
    *) $name="unknown" 
    ;;
esac
}

function startlog
{
  #name=deviceName $1
  time=$(date "+%H_%M_%S")
  #name="$name.$filename.$time"
  name="$1.$time"
  #adb -s $1 logcat -c;adb -s $1 logcat > $1 &
  adb -s $1 logcat -c;adb -s $1 logcat > $name &
}

function stoplog
{
for loop in $result
do
    echo "stop log: $loop"
    pid=$(ps -x | grep "adb -s $loop" | awk '{if (NR==1) {print $1}}')
    echo "kill: adb -s $loop process $pid"
    kill -9 $pid
done
}

result=$(echo `adb devices |cat|awk '{if (NR>1) {print $1}}'`)
echo $result
#echo $result |awk -F, '{print $1}' 
for loop in $result
do
    echo "start log: $loop"
    startlog $loop
done

#ps x | grep "adb -s"

echo "dumping log into $result ........................"
echo "Press any key to stop."

read finish

stoplog


