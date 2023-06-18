#! /bin/bash

echo '-----------------------------'
echo 'Running metaxa2 CRR477157'
mkdir /mnt/8TB_2/Data/Assembly/PRJCA002517/CRR477157/metaxa2
metaxa2 -1 /mnt/8TB_2/Data/bigd/PRJCA002517/CRR477157_f1_fastp.fq -2 /mnt/8TB_2/Data/bigd/PRJCA002517/CRR477157_r2_fastp.fq -o /mnt/8TB_2/Data/Assembly/PRJCA002517/CRR477157/metaxa2/metaxa2 -f p -d /mnt/1TB_0/Data/databases/BLAST/blastdb/nt --cpu 24 --plus T
~/apps/bbmap/reformat.sh in=/mnt/8TB_2/Data/Assembly/PRJCA002517/CRR477157/metaxa2/metaxa2.extraction.fasta out=/mnt/8TB_2/Data/Assembly/PRJCA002517/CRR477157/metaxa2/metaxa2.extraction.fq
megahit -r /mnt/8TB_2/Data/Assembly/PRJCA002517/CRR477157/metaxa2/metaxa2.extraction.fq  -o /mnt/8TB_2/Data/Assembly/PRJCA002517/CRR477157/metaxa2/megahit_default -m 0.25 -t 32
