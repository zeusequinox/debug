#! /bin/sh


curl=$(which curl)
url="https://reqres.in/api/users?page=2"
output="result.txt"
uname="uname"
pass="pass"
$curl -X GET -o $output  $url -u $uname:$pass
#result=$curl -X GET https://reqres.in/api/users?page=2
#echo $(result)

#test
result=$(cat $output)
email=$(jq -r .data[0].email <<< ${result} )
echo $email
