adb shell sh < ./shell/scripts/get-db/script.sh
adb pull /sdcard/Download/phenotype-backup.db ~/AA-Patcher/phenotype/phenotype-backup.db
adb shell rm /sdcard/Download/phenotype-backup.db