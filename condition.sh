echo "Enter your age:"
read age

if [ $age -ge 18 ]; then
	echo "You are eligible for NID"
else
	echo "You are not eligible for NID"
fi
