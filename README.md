# sip-sensai
SIP_SENSAI code for measure-theoretic inverse sensitivity problems by Simon Tavener

## How to recreate the results in Aidan's paper

### Logistic

1. Using matlab, open the file

    `sip-sensai/SENSAI_MuPad/Examples/ODE_examples/Logistic/Logistic.mn`
   
   And set the correct paths at the top (set the last one to wherever you'd like
    the SIP stuff to go)
    
   From the menu, select
   
    `Notebook > Evaluate all`
    
   to generate "input" .m files

2. In matlab, browse to

    `sip-sensai/SENSAI_MuPad`
    
   And generate further m files using:
   
    `run_MuPAD('Examples/ODE_examples/Logistic')`
    
   Ignore the warning

### Figure 1

3. After generating the files, run

    `run_gtype('Examples/ODE_examples/Logistic', 0)`
    
   Figures 15200, 15300 and 15301 are the ones in the paper



### Hodgkin-Huxley 1, Symbolic-differentiation based stuff


### Figure 4

1. Do the same as for Logistic, but with HodgkinHuxley/HodgkinHuxley.mn

   Figures 15200, 15300 and 15301 are the ones in the paper, but with different
   scalings for the x-axis (0-12). The y-axis of the black dotted graph should
   also be set to approx. -84, 34


### Remaining figures

1. Generate input m files as before using MuPAD and Evaluate all

2. Now MANUALLY MODIFY the generated file 

    `sip-sensai/SENSAI_MuPad/Examples/ODE_examples/HodgkinHuxley/user_inputs.m`

   and change

    ```
    qtype = 1;
    stype = 3;
    ```
    
   to

    ```
    qtype = 0;
    stype = 1;
    ```
    
3. Generate m-files using

    `run_MuPAD('Examples/ODE_examples/Logistic')`
    
   Ignore the warning

4. Check `user_SIP.m` and see if the grid size (`ngrid`) is set to something small

    `ngrid = [10 10 10]`
   
5. Now run an analysis using

    `run_gtype('Examples/ODE_examples/HodgkinHuxley', 15)`
    
   This should generate a bunch of files in the location specified way back in
   the MuPAD file.
   
6. Analyse the results by changing matlab's working directory to

    `sip-sensai/SIP`
    
   and running
   
    `SIP_SENSAI('/home/michael/sensai', '/home/michael/sensai', 'HodgkinHuxley','HH-SpringBreak', 2, 2)`
   
   where `home/michael/sensai` should be whatever you specified as `OUTPUT_DIRECTORY`
   way back in the MuPAD file.

