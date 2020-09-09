function [dfx] = derivar(fx,t)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    syms x


    h = (max(t) - min(t))/length(t);
    
    for i = 1: length(t) -1
        dfx(i) = (fx(i+1) - fx(i))/h;
    end
    
    dfx = [dfx(1) dfx];
    
    dfxr = diff(fx)/h;
    dfxr = [dfxr(1) dfxr];
    
    plot(t,fx,'b',t,dfx,'r')
    grid on
end

