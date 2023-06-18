declare -a StringArray=("SRR22936419" "SRR22936420"
             "SRR22936421" "SRR22936422" 
             "SRR22936541" "SRR22936544" 
             "SRR22936770" "SRR22936773")
 
for sval in ${StringArray[@]}; do
	echo $sval
	echo "XenofilteR_SusS_MJ_contigs"
	
	cd /mnt/8TB_2/Data/Assembly/PRJNA901878/$sval/XenofilteR_SusS_MJ_contigs/Filtered_bams
	samtools view -c -F 4 $sval""_fastp_MEGAHIT_final_min_len_300_Sscrofa11.1_default_secondary_no_minimap2_sorted_Filtered.bam >$sval""_fastp_MEGAHIT_final_min_len_300_Sscrofa11.1_default_secondary_no_minimap2_sorted_Filtered_samtools_mapped.txt
done
	
for sval in ${StringArray[@]}; do
	echo $sval
	echo "XenofilteR_MJ_SusS_contigs"
	
	cd /mnt/8TB_2/Data/Assembly/PRJNA901878/$sval/XenofilteR_MJ_SusS_contigs/Filtered_bams
	samtools view -c -F 4 $sval""_fastp_MEGAHIT_final_min_len_300_YNU_ManJav_2.0_default_secondary_no_minimap2_sorted_Filtered.bam >$sval""_fastp_MEGAHIT_final_min_len_300_YNU_ManJav_2.0_default_secondary_no_minimap2_sorted_Filtered_samtools_mapped.txt
done

declare -a StringArray=("SRR22936497")
 
for sval in ${StringArray[@]}; do
	echo $sval
	echo "XenofilteR_Sus_RhiPru_contigs"
	
	cd /mnt/8TB_2/Data/Assembly/PRJNA901878/$sval/XenofilteR_Sus_RhiPru_contigs/Filtered_bams
	samtools view -c -F 4 $sval""_fastp_MEGAHIT_final_min_len_300_Sscrofa11.1_default_secondary_no_minimap2_sorted_Filtered.bam >$sval""_fastp_MEGAHIT_final_min_len_300_Sscrofa11.1_default_secondary_no_minimap2_sorted_Filtered_samtools_mapped.txt
done

for sval in ${StringArray[@]}; do
	echo $sval
	echo "XenofilteR_RhiPru_Sus_contigs"
	
	cd /mnt/8TB_2/Data/Assembly/PRJNA901878/$sval/XenofilteR_RhiPru_Sus_contigs/Filtered_bams
	samtools view -c -F 4 $sval""_fastp_MEGAHIT_final_min_len_300_RhiPru_1.0_default_secondary_no_minimap2_sorted_Filtered.bam >$sval""_fastp_MEGAHIT_final_min_len_300_RhiPru_1.0_default_secondary_no_minimap2_sorted_Filtered_samtools_mapped.txt
done
