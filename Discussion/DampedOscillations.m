function [Response] = DampedOscillations(Amplitude, SigmaDecay, Omega, Phi, TimeSamples);

%Amplitude - amplitude of oscillations
%SigmaDecay - coefficient describing exponential decay of oscillations
%Omega - circular frequency of oscillations (rad/s)
%Phi - initial phase of oscillations
%TimeSamples - time samples for which we want our response

for Index = 1:length(TimeSamples)
    t = TimeSamples(Index);
    Response(Index) = Amplitude * exp(-SigmaDecay*t)*sin(Omega*t + Phi);
end