arr=(
  DeleteAll
  UnlockMultitouch
  UnlockApps
  Weather
  CradleFeature
  Dialer
  # HeroFeature
)
dirpath=./shell/scripts/set-flags

touch $dirpath/tmp.sh
cat $dirpath/script-template.sh > $dirpath/tmp.sh
for item in ${arr[*]}
do
  echo "Inserting $item.sql"
  printf "$(sed "$(wc -l < $dirpath/tmp.sh)r $dirpath/db/$item.sql" $dirpath/tmp.sh)" > $dirpath/tmp.sh
done

adb shell sh < $dirpath/tmp.sh
adb shell "am force-stop com.google.android.projection.gearhead"
adb shell "pm clear com.google.android.projection.gearhead"