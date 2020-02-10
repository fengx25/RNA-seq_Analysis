## Introduction
To determine which clusters have statistically significant enrichments in the number of genes assigned, we used a permutation test with 10,000 runs. In each permutation we first shuffled all expression quantities obtained under different conditions randomly to destroy any association between the conditions and expression quantities and assigned them to their original gene groups. We then carried out the cluster analysis as for the real data and recorded whether the number of genes assigned to every cluster in the permutation was no smaller than in the actual observation. After 10,000 permutation runs, we estimated the frequency of assigning no fewer genes to a cluster than what is seen in the real data, allowing for significance testing.

#1. Data preparing

exp_prepare_leaf.R

exp_prepare_root.R

#2. Permutation Test

permutation_1w_leaf.R

permutation_1w_root.R

#3. Obtain results

obtain_permutation_num.R
