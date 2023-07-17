#!/bin/bash

echo "Calculate SCF"
mpirun -np 22 pw.x < AB.scf.in > AB.scf.out

echo "Calculate NSCF"
mpirun -np 22 pw.x < AB.nscf.in > AB.nscf.out

echo "Calculate DOS"
mpirun -np 22 dos.x < AB.dos.in > AB.dos.out


