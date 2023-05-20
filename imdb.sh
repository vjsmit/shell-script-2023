#movie rating
#>70% - good movie
#<70% - avg movie

input=$1

if [ -z "$input"]; then
  echo Input Movie Name Missing
  exit
fi

percent= $(curl -s https://www.themoviedb.org/movie/920125-untitled-white-men-can-t-jump-reboot | grep user_score_chart | xargs -n1 | grep data-percent | awk -F = '{print $2}' | awk -F . '{print $1}')

if  ["$percent" -ge 70 ]; then
  echo Good
else
  echo Average
fi