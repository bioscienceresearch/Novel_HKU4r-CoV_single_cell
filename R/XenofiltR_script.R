library("XenofilteR")
#filters host out from from graft

bp.param <- SnowParam(workers = 32, type = "SOCK")

sras <- list("SRR22936419", "SRR22936420",
             "SRR22936421", "SRR22936422", 
             "SRR22936541", "SRR22936544", 
             "SRR22936770", "SRR22936773")

for (sra in sras) {
  outputDIR <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/XenofilteR_MJ_SusS_120")
  if(!(file.exists(outputDIR))){ 
    dir.create(outputDIR)
  }
  MJ <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/minimap2/", sra,"_x_sr_secondary_no_GCF_014570535.1_YNU_ManJav_2.0_genomic_minimap2_sorted_coverm_120.bam")
  SusScrofa <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/minimap2/", sra,"_x_sr_secondary_no_GCF_000003025.6_Sscrofa11.1_genomic_minimap2_sorted_coverm_120.bam")
  if(!(file.exists(MJ))){ 
    print(paste0("Error, file doesnt exist ", MJ))
  } 
  if(!(file.exists(SusScrofa))){ 
    print(paste0("Error, file doesnt exist ", SusScrofa))
  } 
  
  #graft, host
  sample.list <- cbind(MJ, SusScrofa)
  XenofilteR(sample.list, destination.folder = outputDIR, bp.param = bp.param)
}

sras <- list("SRR22936419", "SRR22936420",
             "SRR22936421", "SRR22936422", 
             "SRR22936541", "SRR22936544", 
             "SRR22936770", "SRR22936773")

#swap order

for (sra in sras) {
  outputDIR <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/XenofilteR_SusS_MJ_120")
  if(!(file.exists(outputDIR))){ 
    dir.create(outputDIR)
  }
  MJ <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/minimap2/", sra,"_x_sr_secondary_no_GCF_014570535.1_YNU_ManJav_2.0_genomic_minimap2_sorted_coverm_120.bam")
  SusScrofa <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/minimap2/", sra,"_x_sr_secondary_no_GCF_000003025.6_Sscrofa11.1_genomic_minimap2_sorted_coverm_120.bam")
  if(!(file.exists(MJ))){ 
    print(paste0("Error, file doesnt exist ", MJ))
  } 
  if(!(file.exists(SusScrofa))){ 
    print(paste0("Error, file doesnt exist ", SusScrofa))
  } 
  
  #graft, host
  sample.list <- cbind(SusScrofa, MJ)
  XenofilteR(sample.list, destination.folder = outputDIR, bp.param = bp.param)
}

### RhiPru

sras <- list("SRR22936497")

for (sra in sras) {
  outputDIR <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/XenofilteR_MJ_RhiPru")
  if(!(file.exists(outputDIR))){ 
    dir.create(outputDIR)
  }
  MJ <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/minimap2/", sra,"_x_sr_secondary_no_GCF_014570535.1_YNU_ManJav_2.0_genomic_minimap2_sorted.bam")
  RhiPru <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/minimap2/", sra,"_x_sr_secondary_no_GCA_009823505.1_RhiPru_1.0_genomic_minimap2_sorted.bam")
  if(!(file.exists(MJ))){ 
    print(paste0("Error, file doesnt exist ", MJ))
  } 
  if(!(file.exists(RhiPru))){ 
    print(paste0("Error, file doesnt exist ", RhiPru))
  } 
  
  #graft, host
  sample.list <- cbind(MJ, RhiPru)
  XenofilteR(sample.list, destination.folder = outputDIR, bp.param = bp.param)
}

sras <- list("SRR22936497")

#swap order

for (sra in sras) {
  outputDIR <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/XenofilteR_RhiPru_MJ")
  if(!(file.exists(outputDIR))){ 
    dir.create(outputDIR)
  }
  MJ <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/minimap2/", sra,"_x_sr_secondary_no_GCF_014570535.1_YNU_ManJav_2.0_genomic_minimap2_sorted.bam")
  RhiPru <- paste0("/mnt/8TB_2/Data/Assembly/PRJNA901878/", sra,"/minimap2/", sra,"_x_sr_secondary_no_GCA_009823505.1_RhiPru_1.0_genomic_minimap2_sorted.bam")
  if(!(file.exists(MJ))){ 
    print(paste0("Error, file doesnt exist ", MJ))
  } 
  if(!(file.exists(RhiPru))){ 
    print(paste0("Error, file doesnt exist ", RhiPru))
  } 
  
  #graft, host
  sample.list <- cbind(RhiPru, MJ)
  XenofilteR(sample.list, destination.folder = outputDIR, bp.param = bp.param)
}


