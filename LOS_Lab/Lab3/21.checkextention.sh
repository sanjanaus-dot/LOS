read -p "Enter the filename: " filename
if [[ "$filename" == *.sh || "$filename" == *.py || "$filename" == *.pl ]]
then
echo "$filename is a script file."
else
echo "$filename is not a script file."
fi
