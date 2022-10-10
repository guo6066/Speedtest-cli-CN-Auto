# ONE CLICK ALL
# USAGE :wget --no-check-certificate https://raw.githubusercontent.com/singhigh/Speedtest-cli-CN-Auto/master/one-click-speedtest.sh && bash one-click-speedtest.sh {shanghai|telecom|unicom|mobile|all}

dir=`basename $0`
if [ $1 == "all" ];then
  # GET speedtest-script
  wget --no-check-certificate https://raw.githubusercontent.com/guo6066/Speedtest-cli-CN-Auto/master/speedtest-choice.sh 
  # RUN script
  bash speedtest-choice.sh all
  # DELETE speedtest-cli and script
  rm -rf speedtest-choice.sh
  rm -rf /usr/local/bin/speedtest-cli
  rm -rf one-click-speedtest.sh
else
   echo "$dir.sh {shanghai|telecom|unicom|mobile|all}"
fi
