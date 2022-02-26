% Base examples.

loves(romeo, juliet). % This is a fact

loves(juliet, romeo) :-     % This is a rule
    loves(romeo, juliet).   % Juliet loves Romeo IF romeo Romeo loves Juliet.

% Defining facts

male(bob).
male(dan).
male(bill).
male(carl).
male(edward).
male(albert).
male(charlie).

female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

% Defining rules

happy(albert).
happy(alice).
happy(bob).
happy(bill).

with_albert(alice).
near_water(bob).

runs(albert) :-     % Albert runs IF
    happy(albert).  % Albert is happy.

dances(alice) :-        % Alice dances IF
    happy(alice),       % She is happy AND
    with_albert(alice). % She is with albert.

does_alice_dance :-
    dances(alice),
    write('When alice is happy and with Albert she dances').

swims(bob) :-           % Bob swims IF
    happy(bob),         % He is happy AND
    near_water(bob).    % He is near water.

swims(bill) :-      % Bill swims IF
    happy(bill).    % He is happy.

swims(bill) :-          % Bill swims IF
    near_water(bill).   % He is near water.

% Defining complex rules
mother(Mother, OfSomeone) :-
    female(Mother),
    parent(Mother, OfSomeone),
    format('~w is the mother of ~w', [Mother, OfSomeone]).

father(Father, OfSomeone) :-
    male(Father),
    parent(Father, OfSomeone),
    format('~w is the father of ~w', [Father, OfSomeone]).

get_grandchild(Someone) :-
    parent(Someone, Child),
    parent(Child, Grandchild),
    format('~w\'s grandchild is ~w.', [Someone, Grandchild]),
    nl.