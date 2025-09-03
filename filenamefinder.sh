read -p "Enter the filename:" filename
if[-f filename]; 
then
  echo "$filename is a regular file"
else
  echo "$filename is not found"
fi
