V0 = 0;
V1 = 0-3i;
V3 = 0-i;
V2 = (4-i)/((1/(8+80i))+1)

ZC = -66.6i
ZL = 0 + 80i
ZR1 = 1
ZR2 = 1.5
ZR3 = 8

U1 = V1 - V0
U2 = V1 - V0
U3 = V2 - V0
U4 = V0 - V2
U5 = V3 - V1
U6 = V2 - V3

I1 = 4
I2 = U2/(ZC+ZR2) 
I3 = I6 = U6/ZR1
I4 = U4/(ZL+ZR3)
I5 = I2+I4-I1
