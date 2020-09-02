#!/bin/bash
input="/home/inf-31-2020/Documents/list_of_acc_id.txt"

while read  line
	do
	{
		efetch -db protein -format fasta -id $line >> output.fa
	}
done < "$input"
