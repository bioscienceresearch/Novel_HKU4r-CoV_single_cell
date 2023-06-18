declare -a StringArray=(
'SRR22936419'
'SRR22936420'
'SRR22936421'
'SRR22936422'
'SRR22936541'
'SRR22936544'
'SRR22936770'
'SRR22936773'
)

#for val in ${StringArray[@]}; do
	#samtools view -q 20 -o /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_mj_sus_contigs_min_len_300_default_sr_minimap2_ConcatRef_split_mj_q20.bam /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_mj_sus_contigs_min_len_300_default_sr_minimap2_ConcatRef_split_mj.bam 
    #samtools view -c -F 0x4 /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_mj_sus_contigs_min_len_300_default_sr_minimap2_ConcatRef_split_mj_q20.bam >/mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_mj_sus_contigs_min_len_300_default_sr_minimap2_ConcatRef_split_mj_q20_count.txt
#done

#for val in ${StringArray[@]}; do
	#samtools view -q 20 -o /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_mj_sus_contigs_min_len_300_default_sr_minimap2_ConcatRef_split_sus_q20.bam /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_mj_sus_contigs_min_len_300_default_sr_minimap2_ConcatRef_split_sus.bam 
    #samtools view -c -F 0x4 /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_mj_sus_contigs_min_len_300_default_sr_minimap2_ConcatRef_split_sus_q20.bam >/mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_mj_sus_contigs_min_len_300_default_sr_minimap2_ConcatRef_split_sus_q20_count.txt
#done

declare -a StringArray=(
'SRR22936497'
)

for val in ${StringArray[@]}; do
	samtools view -q 20 -o /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_rhipru_sus_MEGAHIT_min_len_300_default_sr_minimap2_ConcatRef_split_rhipru_q20.bam /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_rhipru_sus_MEGAHIT_min_len_300_default_sr_minimap2_ConcatRef_split_rhipru.bam
    
    samtools view -c -F 0x4 /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_rhipru_sus_MEGAHIT_min_len_300_default_sr_minimap2_ConcatRef_split_rhipru_q20.bam >/mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_rhipru_sus_MEGAHIT_min_len_300_default_sr_minimap2_ConcatRef_split_rhipru_q20_count.txt
done

for val in ${StringArray[@]}; do
	samtools view -q 20 -o /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_rhipru_sus_MEGAHIT_min_len_300_default_sr_minimap2_ConcatRef_split_sus_q20.bam /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_rhipru_sus_MEGAHIT_min_len_300_default_sr_minimap2_ConcatRef_split_sus.bam
    
    samtools view -c -F 0x4 /mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_rhipru_sus_MEGAHIT_min_len_300_default_sr_minimap2_ConcatRef_split_sus_q20.bam >/mnt/8TB_2/Data/Assembly/PRJNA901878/$val/minimap2/$val""_fastp_MEGAHIT_final_min_len_300_rhipru_sus_MEGAHIT_min_len_300_default_sr_minimap2_ConcatRef_split_sus_q20_count.txt
done
