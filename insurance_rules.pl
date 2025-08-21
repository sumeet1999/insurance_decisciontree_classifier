% ### Rules for Low Premiums
% IF Age is less than or equal to 45.5 AND HistoryOfCancerInFamily is No AND AnyTransplants is No, THEN the premium is low.

% IF Age is less than or equal to 45.5 AND HistoryOfCancerInFamily is Yes AND Age is less than or equal to 29.5, THEN the premium is low.

% IF Age is greater than 45.5 AND Age is less than or equal to 48.5 AND Weight is greater than 70.0, THEN the premium is low.

% ### Rules for High Premiums
% IF Age is less than or equal to 45.5 AND HistoryOfCancerInFamily is No AND AnyTransplants is Yes, THEN the premium is high.

% IF Age is less than or equal to 45.5 AND HistoryOfCancerInFamily is Yes AND Age is greater than 29.5, THEN the premium is high.

% IF Age is greater than 45.5 AND Age is less than or equal to 48.5 AND Weight is less than or equal to 70.0, THEN the premium is high.

% IF Age is greater than 45.5 AND Age is greater than 48.5 AND Weight is less than or equal to 85.5, THEN the premium is high.

% IF Age is greater than 45.5 AND Age is greater than 48.5 AND Weight is greater than 85.5, THEN the premium is high.


% --- FACTS about a specific person ---
% To get a prediction, you will fill in these details.
age(60).
weight(92).
history_of_cancer(no).
any_transplants(no).


% --- RULES from the Decision Tree ---

% Rule 1:
predict_premium(low) :-
    age(A), A =< 45.5,
    history_of_cancer(no),
    any_transplants(no),
    writeln('--- Rule 1 Executed: Premium is low due to less age, history of cancer and transplant. ---').

% Rule 2: 
% IF Age is less than or equal to 45.5 AND HistoryOfCancerInFamily is Yes AND Age is less than or equal to 29.5, THEN the premium is low.
predict_premium(low) :-
    age(A), A =< 29.5,
    history_of_cancer(yes),
    writeln('--- Rule 2 Executed: Premium is low due to less age. ---').
    

% Rule 3: 
% IF Age is greater than 45.5 AND Age is less than or equal to 48.5 AND Weight is greater than 70.0, THEN the premium is low.
predict_premium(low) :-
    age(A), A > 45.5,
    age(A), A =< 48.5,
    weight(W), W > 70.0,
    writeln('--- Rule 3 Executed: Premium is low due to mid age and weight. ---').


% Rule 4:
% IF Age is less than or equal to 45.5 AND HistoryOfCancerInFamily is No AND AnyTransplants is Yes, THEN the premium is high.
predict_premium(high) :-
    age(A), A =< 45.5,
    history_of_cancer(no),
    any_transplants(yes),
    writeln('--- Rule 4 Executed: Premium is high due to high age, history of cancer and transplant. ---').


% Rule 5:
% IF Age is less than or equal to 45.5 AND HistoryOfCancerInFamily is Yes AND Age is greater than 29.5, THEN the premium is high
predict_premium(high) :-
    age(A), A =< 45.5,
    history_of_cancer(yes),
    age(A), A > 29.5,
    writeln('--- Rule 5 Executed: Premium is high due to high age and history of cancer. ---').    


% Rule 6:
% IF Age is greater than 45.5 AND Age is less than or equal to 48.5 AND Weight is less than or equal to 70.0, THEN the premium is high.
predict_premium(high) :-
    age(A), A > 45.5,
    age(A), A =< 48.5,
    weight(W), W =< 70.0,
    writeln('--- Rule 6 Executed: Premium is high due to high age and weight. ---').


% Rule 7:
% IF Age is greater than 45.5 AND Age is greater than 48.5 AND Weight is less than or equal to 85.5, THEN the premium is high.
predict_premium(high) :-
    age(A), A > 48.5,
    weight(W), W =< 85.5,
    writeln('--- Rule 7 Executed: Premium is high due to high age and weight. ---').

% Rule 8:
% IF Age is greater than 45.5 AND Age is greater than 48.5 AND Weight is greater than 85.5, THEN the premium is high.
predict_premium(high) :-
    age(A), A > 48.5,
    weight(W), W > 85.5,
    writeln('--- Rule 8 Executed: Premium is high due to high age and weight. ---').
