read x
read y
read z



if [ $x == $y ] || [[ $y == $z ]] || [[ $x == $z ]]; then
    if [ $(x + y) == $(z * 2) ]; then
        echo "EQUILATERAL" && exit
    else
        echo "ISOSCELES"
    fi

    else
        echo "SCALENE"
fi

