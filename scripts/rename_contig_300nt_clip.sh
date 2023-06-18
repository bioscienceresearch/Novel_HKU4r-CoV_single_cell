 
declare -a StringArray=(
			"CRR477154" "CRR477155" "CRR477156" "CRR477157" )
 
for sval in ${StringArray[@]}; do
	echo $sval

	cd /mnt/8TB_2/Data/Assembly/PRJCA002517/$sval/megahit_default

	mv final.contigs_min_len_300.fa final_min_len_300.contigs.fa

done
	
