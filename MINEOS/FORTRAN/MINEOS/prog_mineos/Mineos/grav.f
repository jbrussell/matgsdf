      SUBROUTINE GRAV(G,RHO,QRO,R,N)
c
c23456789012345678901234567890123456789012345678901234567890123456789012
c
C*** GIVEN RHO AND SPLINE COEFFS,COMPUTES GRAVITY ***
c
c    calls no other routines
c
      IMPLICIT REAL*8(A-H,O-Z)
c
      DIMENSION G(1),RHO(1),QRO(3,1),R(1)
c
      G(1)=0.D0
      DO 10 I=2,N
      IM1=I-1
      DEL=R(I)-R(IM1)
      RN2=R(IM1)*R(IM1)
      TRN=2.D0*R(IM1)
      C1=RHO(IM1)*RN2
      C2=(QRO(1,IM1)*RN2+TRN*RHO(IM1))*0.5D0
      C3=(QRO(2,IM1)*RN2+TRN*QRO(1,IM1)+RHO(IM1))/3.D0
      C4=(QRO(3,IM1)*RN2+TRN*QRO(2,IM1)+QRO(1,IM1))*.25D0
      C5=(TRN*QRO(3,IM1)+QRO(2,IM1))*0.2D0
   10 G(I)=(G(IM1)*RN2+4.D0*DEL*(C1+DEL*(C2+DEL*(C3+DEL*(C4+DEL*
     +    (C5+DEL*QRO(3,IM1)/6.D0))))))/(R(I)*R(I))
c
      RETURN
      END
