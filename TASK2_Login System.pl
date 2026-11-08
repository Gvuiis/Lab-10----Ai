% Task 2: Login System


user(admin, 1234).
user(ghaida, 5678).
user(student, 1111).

login :-
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    check_login(Username, Password, 1).

check_login(Username, Password, _) :-
    user(Username, Password), !,
    write('Login Successful').

check_login(_, _, Attempts) :-
    Attempts < 3, !,
    write('Login Unsuccessful'), nl,
    write('Try again.'), nl,
    login_retry(Attempts).

check_login(_, _, _) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.').

login_retry(Attempts) :-
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    NewAttempts is Attempts + 1,
    check_login(Username, Password, NewAttempts).



% Task 2: Login System RUN

% 86 ?- consult(['c:/Users/goshq/Downloads/TASK2_Login System.pl']).
% true.

% 87 ?- login.
% Enter username: ghaida.
% Enter password: |: 5678.
% Login Successful
% true.

% 88 ?- login.
% Enter username: test.
% Enter password: |: 123.
% Login Unsuccessful
% Try again.
% Enter username: |: admin.
% Enter password: |: 1234.
% Login Successful
% true.

% 88 ?- login.
% Enter username: test.
% Enter password: |: 123.
% Login Unsuccessful
% Try again.
% Enter username: |: test.
% Enter password: |: 123.
% Login Unsuccessful
% Try again.
% Enter username: |: test.
% Enter password: |: 123.
% Sorry, you exceeded the maximum number of attempts, try again later.
% true.

