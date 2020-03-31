# utl-password
This function generates random alphanumeric (with special characters) passwords of the length specified in the input.

Examples:

select utl_password.generate_random(20) from dual;

UTL_PASSWORD.GENERATE_RANDOM(20) 
---------------------------------------- 
GZgu_Wf3aim_mCz_pDFy                     

select utl_password.generate_random(20) from dual connect by level <= 10;

UTL_PASSWORD.GENERATE_RANDOM(20) 
-------------------------------- 
ubr_Oybp__Jhppuiqhu_                     
rGDNFah7wJ7iwZm_ib_0                     
K_tlUz_2NfW_GJ58OC_V                     
X_h__r____FDsFXQ8kuX                     
p_WXf1_2B9_p6TeyiDWn                     
W_qzbw__bp___8sp_8tH                     
Own___z3Ax1sbTTh_x_x                     
CznriX___auTzEOxhszY                     
fa9_eppq9_gD6_9d1lmQ                     
WsgY__7abDmldFDDjL_w   
