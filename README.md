# dqPCR and Burst Size Project
This repo contains data stored for the publication "Influenza A viral burst size from thousands of infected cells using droplet quantitative PCR (dqPCR)" by Zath, et al. The bioRxiv publication is available [here](https://www.biorxiv.org/content/10.1101/2024.02.23.581786v1.full).

The publication data in this repo is stored in folders by manuscript figures (Figure X) and supplementary figures (SI). For Matlab M files, they have been commented to describe how the code works and how the data is processed. For Excel files, they contain their respective figure with linked data for review. Use the following guide to located and review data of interest:

## Main Manuscript Figure Data
### Figure 2 - dqPCR Model for Converting Drop Fluorescence to Nucleic Acid Concentration
 - Within the Figure 2 folder, open the M file named `Fig2_std_curve_w_unk_data_v1_6_041621.m` to run the code that generated Figure 2. 
 - To view how the standard curve is created, go to **Build Standard Curve** > **10^7 STD** > **std curve** and then run `model_standard_curve_FAM_v3_1.m`.
 - To view the raw fluorescence data collected from drop detection, go to **Build Standard Curve** > **10^7 STD** > **raw data** and then open one of the MAT files. The data is labeled as `std_cycle number_peaks...` wher `std` stands for "standard."
 - To view how the raw data is process to remove noise and potential coalesced drops, go to **Build Standard Curve** > **10^7 STD** > **process data** and then open `processed_delRn_detection_data_std_041621_outlier.m`.
### Figure 3 - Resolving IAV M Gene RNA Concentrations from Single and Mixed Droplet Populations
This folder is split between the single and mixed population data in figure 3.
 - Single Populations (Figure 3A-C)
	 - Open `Figure3_single_mixed_populations_v1_1.m` to run the code that generated Figure 3A-C.
 - Mixed Populations (Figure 3D-E)
	 - Open `Figure3_mix_cpd_histogram_v1_2_041621.m` to run the code that generated Figure 3D-E.
### Figure 4 - H3N2 and H1N1 Burst Size
 - Within the Figure 4 folder, open `Figure4_PCR_detection_analyze_compare_v1_5.m` to run the code that generated Figure 4.
 - To view the raw data, data processing, and standard curves for each burst size experiment, go to Raw Fluorescence Data Processing and then select an experiment folder. The experiment folders are named as `strain_date`.
	 - Within each experiment folder contains a folder for drops containing infected cells (IAV), drops containing uninfected cells (mock), and drops containing M gene RNA (standard).
	 - For the sub folders within each experiment folder, refer to the descriptions in the Figure 2 section.
## Supplementary Figure Data
In general, the SI figure folders contain Matlab M and/or MAT files, or Excel files used to create the SI figures.
