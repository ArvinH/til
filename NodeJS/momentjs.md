## Countdown with momentjs
```
import moment from 'moment';

export default function(proxy, date) {
  const forward30Days = moment(date).add(30, 'days').format('YYYY-MM-DD H:mm:ss');
  let countDownSeconds = Math.abs(Math.floor(moment().diff(forward30Days, 'seconds')));

  //variables holding days, hours , minutes and seconds
  let Days, Minutes, Hours, Seconds;
  // Set Interval function for performing all calculations and decrementing the countDownSeconds 
  const countDown = setInterval(function () {

    // Updating Days 
    Days = pad(Math.floor(countDownSeconds / 86400), 2);
    // Updating Hours 
    Hours = pad(Math.floor((countDownSeconds - (Days * 86400)) / 3600), 2);
    // Updating Minutes
    Minutes = pad(Math.floor((countDownSeconds - (Days * 86400) - (Hours * 3600)) / 60), 2);
    // Updating Seconds
    Seconds = pad(Math.floor((countDownSeconds - (Days * 86400) - (Hours * 3600) - (Minutes * 60))), 2);

    proxy.setState({
      timeRange: `剩下 ${Days} 天 ${Hours} 小時 ${Minutes} 分 ${Seconds} 秒`
    });
    // Decrement the countDownSeconds
    countDownSeconds--;

    if (countDownSeconds === 0) {
      // To do
      clearInterval(countDown);
    }

  }, 1000);
  // Function for padding the seconds i.e limit it only to 2 digits
  function pad(num, size) {
    var s = num + "";
    while (s.length < size) s = "0" + s;
    return s;
  }
  return countDown;
}
```

