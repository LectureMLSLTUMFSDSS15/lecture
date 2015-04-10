%% example_foo Dummy function for m-files
%%
%-----------------------------------------------------------|
% function [ x, Y, z ] = example_foo( a, B, c )
%-----------------------------------------------------------|
%#codegen
%
% INPUT:
% a     [1x1]   [int]       [m]     The first parameter
% B
% c
%
% OUTPUT:a
% x     [1x*]   [char]      [-]     First output parameter
% Y
% z
%
% ABSTRACT:
% This function is an example for MATLAB features supporting aspects of
% good programming and software engineering.
%
% DESCRIPTION:
% The function header is supposed to:
% - Describe what the function is doing (Readme Driven Development)
% - Describe the detailed interface of the function
% - Provide help to the user of the function
%
% The style of the comments has the following goals:
% - Provide concise and readable in-code documentation
% - Structure code by using code cells ('%%')
% - Provide lightweight online help
%   by F1 and commands like 'help','doc' and 'lookfor'
% - Support built-in MATLAB publishing
%   by the use of code cells ('%%')
%
% REFERENCES:
% <a href="http://www.mathworks.com/help/matlab/editing-files.html">Matlab help on code editor features</a>
%
% COPYRIGHT © 2015, Institute of Flight System Dynamics (FSD)
%                   Technische Universität München (TUM)

%Everything until here is shwon in F1 help

% PROJECT
% (Name of project. This line/block is optional.)

% CHANGE LOG
%-Markus Hornauer; 2015-March-24; Initial version for lecture
%- ...


%% example_foo function
function [ x, Y, z ] = example_foo( a, B, c )

% Main algorithms
[~,nB] = size(B);

% Assign output values
x = 'This is the output ''x''.'; % Just a random string.

% Now, Y is calculated. Of course, this is just a dummy calculation
Y = ones( length(x), nB );

z = sub_foo(2) + nest_demo_foo(a) + c; % Demo on how to use a subfunction

end % Always finish function with 'end'

%% Subfunction demonstration - by the way, this is a 'cell'
% This function is not visible to code outside this m-file. It only serves
% for strucuring the current file.

function [res] = sub_foo(in)

res = 2 * in;

end

%% Nested function demonstration
%TODO: Add description here
function [res] = nest_demo_foo(m)

nest_foo(m);

    function  nest_foo(n) %#ok Just for Demo
        res = 2*n;
    end

end

% --- EOF ---
