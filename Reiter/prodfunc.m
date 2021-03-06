% Matlab file for_ paper "Solving the Incomplete Markets Model With Aggregate Uncertainty by Backward Induction"
% Michael Reiter, Institute for Advanced Studies, August 2008
% Last update: -
% Feel free to use, copy and modify at your own risk;
%   this program comes with NO WARRANTY WHATSOEVER
%
% gives GROSS product
function [Y,wage,R] = prodfunc(K,L,z);
  global Params;

  KL = K./L;
  aux = (z*Params.A) .* (KL).^Params.alpha;
  Y =  aux.*L;
  wage = (1-Params.alpha)*aux;
  R = 1 + Params.alpha*aux./KL - Params.delta;

