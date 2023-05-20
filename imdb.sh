#movie rating
#>70% - good movie
#<70% - avg movie

input=$1
if [ -z "$input" ]; then
  echo Input Movie Name Missing
  exit
fi

percent=$(curl -s https://www.themoviedb.org/movie/${input}| grep user_score_chart | xargs -n1 | grep data-percent | awk -F = '{print $2}' | awk -F . '{print $1}')

if [ -z "$percent"]; then
  echo movie name not correct
  exit
fi

echo percent - ${percent}

if  [ "$percent" -ge 70 ]; then
  echo Good
else
  echo Average
fi