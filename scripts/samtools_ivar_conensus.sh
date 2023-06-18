samtools mpileup -B -A -aa -d 0 -Q 0 --reference gap-filled_ref.fa HKU4r-BGI-2020_merge.bam | gzip -9 > HKU4r-BGI-2020_merge_pileup.txt.gz
zcat HKU4r-BGI-2020_merge_pileup.txt.gz | ivar consensus -m 1 -n N -t 0.5 -p ivar_1
