#!/bin/bash
input="/home/username/Documents/list_of_acc_id.txt"
#change username in the above path to your username
#efetch and a guide is available via https://www.ncbi.nlm.nih.gov/books/NBK179288/
#the guide also includes info on how to set up PATH

while read  line
	do
	{
		efetch -db protein -format fasta -id $line >> output.fa
	}
done < "$input"
