#!/bin/bash
awk -f weekly_d.awk d0_29d.dat > d0_29dw.dat 
awk -f weekly_d.awk d30_39d.dat > d30_39dw.dat 
awk -f weekly_d.awk d40_49d.dat > d40_49dw.dat 
awk -f weekly_d.awk d50_59d.dat > d50_59dw.dat 
awk -f weekly_d.awk d60_69d.dat > d60_69dw.dat 
awk -f weekly_d.awk d70_79d.dat > d70_79dw.dat 
awk -f weekly_d.awk d80_89d.dat > d80_89dw.dat 
awk -f weekly_d.awk d90d.dat > d90dw.dat 
awk -f weekly_d.awk d_alld.dat > d_alldw.dat 

awk -f weekly_d.awk d0_29p.dat > d0_29pw.dat 
awk -f weekly_d.awk d30_39p.dat > d30_39pw.dat 
awk -f weekly_d.awk d40_49p.dat > d40_49pw.dat 
awk -f weekly_d.awk d50_59p.dat > d50_59pw.dat 
awk -f weekly_d.awk d60_69p.dat > d60_69pw.dat 
awk -f weekly_d.awk d70_79p.dat > d70_79pw.dat 
awk -f weekly_d.awk d80_89p.dat > d80_89pw.dat 
awk -f weekly_d.awk d90p.dat > d90pw.dat 
awk -f weekly_d.awk d_allp.dat > d_allpw.dat 

awk -f weekly_d.awk d0_29pB7.dat > d0_29pB7w.dat 
awk -f weekly_d.awk d30_39pB7.dat > d30_39pB7w.dat 
awk -f weekly_d.awk d40_49pB7.dat > d40_49pB7w.dat 
awk -f weekly_d.awk d50_59pB7.dat > d50_59pB7w.dat 
awk -f weekly_d.awk d60_69pB7.dat > d60_69pB7w.dat 
awk -f weekly_d.awk d70_79pB7.dat > d70_79pB7w.dat 
awk -f weekly_d.awk d80_89pB7.dat > d80_89pB7w.dat 
awk -f weekly_d.awk d90pB7.dat > d90pB7w.dat 
awk -f weekly_d.awk d_allpB7.dat > d_allpB7w.dat 