#!/bin/bash --

# To create the list of the students

#echo "test"

# ./student_list generate

# User Input
operation=$1

# Locations of the subject files
location='/home/sid/lin_Learning'
english_file='english.topper'
hindi_file='hindi.topper'
maths_file='maths.topper'
tmp_student='student.details'
tmp2_student='student.details.1'
tmp2_student_sorted='student.details.1.sorted'
tmp2_student_consolidated='student.details.consolidated'
student_name_list='student_detail_list'

# Functions defined
default(){
sel_operation=$1
	echo -e "\e[1;33mINVALID Command\e[0m"
}
generateStudentList(){
sel_operation=$1
	echo -e "\e[1;31mCommand: generating the student list\e[0m"

	#echo $location
	awk '{print $1 "," $2 "," $3}' $english_file $hindi_file $maths_file >> $tmp_student
	echo "Adding student entries"
	sed 's/$/;/g' $tmp_student >> $tmp2_student
	sort $tmp2_student >> $tmp2_student_sorted
	awk '{printf (NR%3==0) ? $0 "\n" : $0}' $tmp2_student_sorted >> $tmp2_student_consolidated

	# Cleaning the names
	awk '{print $1}' student.details.consolidated | cut -d ',' -f1 >> $student_name_list

	#echo "$location/$student_name_list"
	count=1
	while read name_info; do
		echo "$name_info"
		sed 's/$name_info//g' $tmp2_student_consolidated
		#sed 's/abhishek//g' student.details.consolidated
		#sed 's/abhishek//g' student.details.consolidated
  done < $location/$student_name_list

	rm -rf student.d*

}

# Validating the user input
case "$operation" in
	"generate")
	generateStudentList $operation
	;;
	"$operation")
	default $operation
	;;
esac
