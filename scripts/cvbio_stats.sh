
declare -a StringArray=("CRR477154" "CRR477155" "CRR477156" "CRR477157")

for sval in ${StringArray[@]}; do
	echo $sval
	echo "Vero"
	
	cd /mnt/8TB_2/Data/Assembly/PRJCA002517/$sval/cvbio_contigs
	samtools stats disambiguated.vero.bam --reference /mnt/1TB_0/Data/Code/code/PRJNA901878/Vero_WHO_p1.0.fna >$sval""_disambiguated.vero_samtools_stats.txt
	samtools flagstat disambiguated.vero.bam >$sval""_disambiguated.vero_samtools_flagstat.txt
done
	
for sval in ${StringArray[@]}; do
	echo $sval
	echo "human"
	
	cd /mnt/8TB_2/Data/Assembly/PRJCA002517/$sval/cvbio_contigs
	samtools stats disambiguated.human.bam --reference /mnt/1TB_0/Data/Code/code/PRJNA901878/GRCh38.p13.fna >$sval""_disambiguated.human_samtools_stats.txt
	samtools flagstat disambiguated.human.bam >$sval""_disambiguated.human_samtools_flagstat.txt
done

for sval in ${StringArray[@]}; do
	echo $sval
	echo "MJ"
	
	cd /mnt/8TB_2/Data/Assembly/PRJCA002517/$sval/cvbio_contigs
	samtools stats disambiguated.manjav.bam --reference /mnt/1TB_0/Data/Code/code/PRJNA901878/YNU_ManJav_2.0.fna >$sval""_disambiguated.manjav_samtools_stats.txt
	samtools flagstat disambiguated.manjav.bam >$sval""_disambiguated.manjav_samtools_flagstat.txt
done
