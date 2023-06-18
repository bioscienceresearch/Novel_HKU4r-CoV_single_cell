declare -a StringArray=("CRR477155" "CRR477157" "CRR477154" "CRR477156" )
 
for sval in ${StringArray[@]}; do
	echo $sval
	echo "MJ_Vero"
	
	cd /mnt/8TB_2/Data/Assembly/PRJNA707649/$sval/XenofilteR_MJ_Vero/Filtered_bams

	coverm filter -b $sval""_x_sr_secondary_no_YNU_ManJav_2.0_minimap2_sorted_Filtered.bam -o $sval""_x_sr_secondary_no_YNU_ManJav_2.0_minimap2_sorted_Filtered_coverm_100.bam -t 8 --min-read-aligned-length 100 
	
	samtools view -c -F 4 $sval""_x_sr_secondary_no_YNU_ManJav_2.0_minimap2_sorted_Filtered_coverm_100.bam >$sval""_x_sr_secondary_no_YNU_ManJav_2.0_minimap2_sorted_Filtered_coverm_100_samtools_mapped.txt
done
	
for sval in ${StringArray[@]}; do
	echo $sval
	echo "Vero_MJ"
	
	cd /mnt/8TB_2/Data/Assembly/PRJNA707649/$sval/XenofilteR_Vero_MJ/Filtered_bams

	coverm filter -b $sval""_x_sr_secondary_no_Vero_WHO_p1.0_minimap2_sorted_Filtered.bam -o $sval""_x_sr_secondary_no_Vero_WHO_p1.0_minimap2_sorted_Filtered_coverm_100.bam -t 8 --min-read-aligned-length 100 
	
	samtools view -c -F 4 $sval""_x_sr_secondary_no_Vero_WHO_p1.0_minimap2_sorted_Filtered_coverm_100.bam >$sval""_x_sr_secondary_no_Vero_WHO_p1.0_minimap2_sorted_Filtered_coverm_100_samtools_mapped.txt
done

for sval in ${StringArray[@]}; do
	echo $sval
	echo "MJ_Human"
	
	cd /mnt/8TB_2/Data/Assembly/PRJNA707649/$sval/XenofilteR_MJ_Human/Filtered_bams

	coverm filter -b $sval""_x_sr_secondary_no_YNU_ManJav_2.0_minimap2_sorted_Filtered.bam -o $sval""_x_sr_secondary_no_YNU_ManJav_2.0_minimap2_sorted_Filtered_coverm_100.bam -t 8 --min-read-aligned-length 100 
	
	samtools view -c -F 4 $sval""_x_sr_secondary_no_YNU_ManJav_2.0_minimap2_sorted_Filtered_coverm_100.bam >$sval""_x_sr_secondary_no_YNU_ManJav_2.0_minimap2_sorted_Filtered_coverm_100_samtools_mapped.txt
done
	
for sval in ${StringArray[@]}; do
	echo $sval
	echo "Human_MJ"
	
	cd /mnt/8TB_2/Data/Assembly/PRJNA707649/$sval/XenofilteR_Human_MJ/Filtered_bams

	coverm filter -b $sval""_x_sr_secondary_no_GRCh38.p13_minimap2_sorted_Filtered.bam -o $sval""_x_sr_secondary_no_GRCh38.p13_minimap2_sorted_Filtered_coverm_100.bam -t 8 --min-read-aligned-length 100 
	
	samtools view -c -F 4 $sval""_x_sr_secondary_no_GRCh38.p13_minimap2_sorted_Filtered_coverm_100.bam >$sval""_x_sr_secondary_no_GRCh38.p13_minimap2_sorted_Filtered_coverm_100_samtools_mapped.txt
done
