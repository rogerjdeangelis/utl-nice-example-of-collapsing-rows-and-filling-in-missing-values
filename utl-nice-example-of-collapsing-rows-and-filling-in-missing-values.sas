Nice example of collapsing rows and filling in missing values                                                            
                                                                                                                         
see SAS Forum                                                                                                            
https://tinyurl.com/yd525hhw                                                                                             
https://communities.sas.com/t5/SAS-Programming/fill-multiple-columns-having-missing-values-with-known-non/m-p/509294     
                                                                                                                         
Novinosrin profile                                                                                                       
https://communities.sas.com/t5/user/viewprofilepage/user-id/138205                                                       
                                                                                                                         
                                                                                                                         
WORK.HAVE total obs=9                                                                                                    
                                                                                                                         
 ID     A     B     C    D     E     F                                                                                   
                                                                                                                         
  1    20    11     .    1     .    40                                                                                   
  1    20    11     .    1    36     .                                                                                   
  1    20    11    45    1     .     .                                                                                   
  2    75    18    76    2     .     .                                                                                   
  2    75    18     .    2     .     .                                                                                   
  2    75    18    76    2    83     .                                                                                   
  3    23     3     .    3     .     .                                                                                   
  3    23     3     .    3    57    73                                                                                   
  3    23     3    61    3     .     .                                                                                   
                                                                                                                         
                                                                                                                         
WANT                                                                                                                     
====                                                                                                                     
                                                                                                                         
WORK.WANT total obs=3                                                                                                    
                                                                                                                         
 ID     A     B     C    D     E     F                                                                                   
                                                                                                                         
  1    20    11    45    1    36    40                                                                                   
  2    75    18    76    2    83     .                                                                                   
  3    23     3    61    3    57    73                                                                                   
                                                                                                                         
                                                                                                                         
PROCESS                                                                                                                  
=======                                                                                                                  
                                                                                                                         
data want;                                                                                                               
  update have(obs=0) have;                                                                                               
  by id;                                                                                                                 
run;quit;                                                                                                                
                                                                                                                         
                                                                                                                         
MAKE DATA                                                                                                                
=========                                                                                                                
                                                                                                                         
data have;                                                                                                               
input ID A B C D E F;                                                                                                    
cards;                                                                                                                   
1 20 11 . 1 . 40                                                                                                         
1 20 11 . 1 36 .                                                                                                         
1 20 11 45 1 . .                                                                                                         
2 75 18 76 2 . .                                                                                                         
2 75 18 . 2 . .                                                                                                          
2 75 18 76 2 83 .                                                                                                        
3 23 3 . 3 . .                                                                                                           
3 23 3 . 3 57 73                                                                                                         
3 23 3 61 3 . .                                                                                                          
;;;;                                                                                                                     
run;quit;                                                                                                                
                                                                                                                         
