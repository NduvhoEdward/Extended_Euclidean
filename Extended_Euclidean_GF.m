function [g,a,b] = Extended_Euclidean_GF(v,u,field)
  r_prev = v; r = u;
  s_prev = 1; s = 0;
  t_prev = 0; t = 1;
  
  while r~=0
    quotient = gfdeconv(r_prev,r,field);
    tempr_p = r_prev; r_prev = r; r = gfsub(tempr_p, gfconv(quotient,r,field), field);
    tempr_p = s_prev; s_prev = s; s = gfsub(tempr_p, gfconv(quotient,s,field), field);
    tempr_p = t_prev; t_prev = t; t = gfsub(tempr_p, gfconv(quotient,t,field), field);
  end
  
  g = r_prev;
  a = s_prev;
  b = t_prev;
end