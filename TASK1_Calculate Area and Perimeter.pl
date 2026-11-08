% ------------------------
% Task 1: Calculate Area and Perimeter
% ------------------------


square :-
    write('Enter the length of side of the square: '),
    read(Side),
    Area is Side * Side,
    Perimeter is 4 * Side,
    write('Square Area = '), write(Area), nl,
    write('Square Perimeter = '), write(Perimeter), nl.

rectangle :-
    write('Enter the width of the rectangle: '),
    read(Width),
    write('Enter the height of the rectangle: '),
    read(Height),
    Area is Width * Height,
    Perimeter is 2 * (Width + Height),
    write('Rectangle Area = '), write(Area), nl,
    write('Rectangle Perimeter = '), write(Perimeter), nl.

triangle :-
    write('Enter the base of the triangle: '),
    read(Base),
    write('Enter the vertical height of the triangle: '),
    read(Height),
    write('Enter side a: '),
    read(A),
    write('Enter side b: '),
    read(B),
    write('Enter side c: '),
    read(C),
    Area is 0.5 * Base * Height,
    Perimeter is A + B + C,
    write('Triangle Area = '), write(Area), nl,
    write('Triangle Perimeter = '), write(Perimeter), nl.


% ------------------------
% Task 1: Calculate Area and Perimeter RUN
% ------------------------

% 80 ?- consult(['c:/Users/goshq/Downloads/TASK1_Calculate Area and Perimeter.pl']).
% true.

% 81 ?- square.
% Enter the length of side of the square: 5.
% Square Area = 25
% Square Perimeter = 20
% true.

% 82 ?- rectangle.
% Enter the width of the rectangle: 4.
% Enter the height of the rectangle: |: 5.
% Rectangle Area = 20
% Rectangle Perimeter = 18
% true.

% 83 ?- triangle.
% Enter the base of the triangle: 4.
% Enter the vertical height of the triangle: |: 3.
% Enter side a: |: 4.
% Enter side b: |: 4.
% Enter side c: |: 3.
% Triangle Area = 6.0
% Triangle Perimeter = 11
% true.
