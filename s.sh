#create executable
#chmod +x filename.sh

cd ~/Dev/Ascii-Cat/Ascii

#get all files
files=(*.txt)

#get num of files
num_files=${files[@]}

#generate random number between 0 and num_of_files
rand_index=$((RANDOM%num_files))

#get rand file at rand index
rand_file=${files[$rand_index]}

#echo file contents
cat "$rand_file"
