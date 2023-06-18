 
declare -a StringArray=(
			"SRR22936419" "SRR22936420" "SRR22936421"
             "SRR22936422" "SRR22936541" "SRR22936544" 
             "SRR22936497" "SRR22936770" "SRR22936773")
 
for sval in ${StringArray[@]}; do
	echo $sval

	cd /mnt/8TB_2/Data/Assembly/PRJNA901878/$sval/megahit_default

	awk -v n=300 '/^>/{ if(l>=n) print b; b=$0;l=0;next } {l+=length;b=b ORS $0}END{if(l>=n) print b }' final.contigs.fa >final_min_len_300.contigs.fa

done
	
