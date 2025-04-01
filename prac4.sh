dd=0
mm=0
yy=0

days=0
 echo -n "Enter day (dd) : "
read dd

echo -n "Enter month (mm) : "
read mm

echo -n "Enter year (yyyy) : "
read yy

if [ $mm -le 0 -o $mm -gt 12 ];
then
    echo "$mm is invalid month."
    exit 1
fi
case $mm in
    1) days=31;;
    2) days=28 ;;
    3) days=31 ;;
    4) days=30 ;;
    5) days=31 ;;
    6) days=30 ;;
    7) days=31 ;;
    8) days=31 ;;
    9) days=30 ;;
    10) days=31 ;;
    11) days=30 ;;
    12) days=31 ;;
    *) days=-1;;
esac
 if [ $mm -eq 2 ]; then
 if [ $((yy % 4)) -ne 0 ] ; then
    :
 elif [ $((yy % 400)) -eq 0 ] ; then
    days=29
 elif [ $((yy % 100)) -eq 0 ] ; then
   :
 else
    days=29
 fi
fi

if [ $dd -le 0 -o $dd -gt $days ];
then
    echo "$dd day is invalid"
    exit 3
fi

echo "$dd/$mm/$yy is a vaild date"
