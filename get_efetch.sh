#!/bin/bash
# run: bash get_efetch.sh path_to_list_of_protein_IDs path_to_output
#efetch and a guide is available via https://www.ncbi.nlm.nih.gov/books/NBK179288/
#the guide also includes info on how to set up PATH

while read  line
	do
	{
		efetch -db protein -format fasta -id $line >> $2
	}
done < $1
