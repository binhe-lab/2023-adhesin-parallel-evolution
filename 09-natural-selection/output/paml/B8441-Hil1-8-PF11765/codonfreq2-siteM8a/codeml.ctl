      seqfile = ../B8441-Hil1-8-PF11765-aligned.nuc * sequence data filename
     treefile = GeneRax-corrected-tree-20211206-pruned-../B8441.newick * tree file
      outfile = mlc                        * main result file name

        noisy = 3  * 0,1,2,3,9: how much rubbish on the screen
      verbose = 0  * 0: concise; 1: detailed, 2: too much
      runmode = 0  * 0: user tree;  1: semi-automatic;  2: automatic
                   * 3: StepwiseAddition; (4,5):PerturbationNNI; -2: pairwise

      seqtype = 1  * 1:codons; 2:AAs; 3:codons-->AAs
    CodonFreq = 2  * 0:1/61 each, 1:F1X4, 2:F3X4, 3:codon table
*       clock = 0   * 0: no clock, unrooted tree, 1: clock, rooted tree
        model = 0
                    * models for codons:
                        * 0:one, 1:b, 2:2 or more dN/dS ratios for branches

      NSsites = 8  * dN/dS among sites. 0:no variation, 1:neutral, 2:positive
        icode = 8  * 8: yeast alt nuc

    fix_kappa = 0  * 1: kappa fixed, 0: kappa to be estimated
        kappa = 2  * initial or fixed kappa
    fix_omega = 1  * 1: omega or omega_1 fixed, 0: estimate 
        omega = 1  * initial or fixed omega, for codons or codon-based AAs

*   fix_alpha = 1  * 0: estimate gamma shape parameter; 1: fix it at alpha
*       alpha = 0. * initial or fixed alpha, 0:infinity (constant rate)
*       ncatG = 8  * # of categories in dG of NSsites models

        getSE = 1  * 0: don't want them, 1: want S.E.s of estimates

   Small_Diff = .5e-6
    cleandata = 0  * remove sites with ambiguity data (1:yes, 0:no)?
  fix_blength = 0  * 0: ignore, -1: random, 1: initial, 2: fixed
*      method = 0  * Optimization method 0: simultaneous; 1: one branch a time

* Genetic codes: 0:universal, 1:mammalian mt., 2:yeast mt., 3:mold mt.,
* 4: invertebrate mt., 5: ciliate nuclear, 6: echinoderm mt., 
* 7: euplotid mt., 8: alternative yeast nu. 9: ascidian mt., 
* 10: blepharisma nu.
* These codes correspond to transl_table 1 to 11 of GENEBANK.
