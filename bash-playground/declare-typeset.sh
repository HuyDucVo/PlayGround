declare -r var1=1
echo "var1 = $var1"   # var1 = 1 declare -r var1 works the same as readonly var1

declare -i number
number=3
echo "Number = $number"     # Number = 3
number=three
echo "Number = $number"     # Number = 0

n=6/3
echo "n = $n"       # n = 6/3

declare -i n
n=6/3
echo "n = $n"       # n = 2

declare -a indices

declare -f

declare -f function_name

declare -x var3

declare -x var3=373

foo (){
declare FOO="bar"
}

bar ()
{
foo
echo $FOO
}

bar

declare | grep HOME
HOME=/home/bozo

bash$ Colors=([0]="purple" [1]="reddish-orange" [2]="light green")
bash$ echo ${Colors[@]}
purple reddish-orange light green
bash$ declare | grep Colors
Colors=([0]="purple" [1]="reddish-orange" [2]="light green")

bash$ declare | grep HOME
HOME=/home/bozo


bash$ zzy=68
bash$ declare | grep zzy
zzy=68
