#!/bin/bash
input="/home/username/Documents/list_of_acc_id.txt"

while read  line
	do
	{
		efetch -db protein -format fasta -id $line >> output.fa
	}
done < "$input"
