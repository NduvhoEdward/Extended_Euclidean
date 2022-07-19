% The function for computing the GCD, as well as the Bézout's identity
% coefficients 
function [g,a,b] = Extended_Euclidean_Int (v, u)
  r_prev = v; r = u;
  s_prev = 1; s = 0;
  t_prev = 0; t = 1;
  
  while r~=0
    quotient = idivide(r_prev, int32(r));
    tempr_p = r_prev; r_prev = r; r = tempr_p - quotient * r;
    temps_p = s_prev; s_prev = s; s = temps_p - quotient * s;
    tempt_p = t_prev; t_prev = t; t = tempt_p - quotient * t;
  end
  
  g = r_prev;
  a = s_prev;
  b = t_prev;
  
end