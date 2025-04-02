/*
 *  main.c
 *  Library for EPL1110 : Finite Elements for dummies
 *  Elasticite lineaire plane
 *  Calcul des densités de force aux noeuds contraints
 *
 *  Copyright (C) 2024 UCL-IMMC : Vincent Legat
 *  All rights reserved.
 *
 */
 
 #include "glfem.h"

 double fun(double x, double y) 
 {
     return 1;
 }
 
 int main(int argc, char *argv[])

 {  
    
     geoInitialize();
     femGeo* theGeometry = geoGetGeometry();
     
     int nCircles = atoi(argv[1]);
     if (nCircles < 1) {
         printf("Usage : %s nCircles\n",argv[0]);
         exit(EXIT_FAILURE); }

     theGeometry->elementType = FEM_TRIANGLE;
     geoMeshGenerate(nCircles);
     geoMeshImport();
     char name[MAXNAME];

 
     geoMeshWrite("data/elasticity.txt");
        
     geoFinalize();

     exit(EXIT_SUCCESS);
     return 0;  
 }
 
  
 