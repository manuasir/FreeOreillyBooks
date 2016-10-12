for i in programming web-platform security iot data business webops-perf; do
mkdir -p "$i" && curl "http://www.oreilly.com/$i/free/" |
 grep '\.csp' | sed 's/^.*href="//' |
 sed 's/free\/\(.*\).csp.*">/free\/files\/\1.pdf/' |
 tr -d '\r' |
 xargs wget -P "$i";
 done
