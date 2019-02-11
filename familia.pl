padrede('maria','rodolfo').
padrede('uldarico','rodolfo').
padrede('maria','lucila').
padrede('uldarico','lucila').
padrede('ines','laura').
padrede('pablo','marcela').
padrede('carlos','debora').
padrede('rodolfo','alex').
padrede('lucila','johny').


tiode(A,B) :- hermanode(A,C), hijode(B,C).
cousin(A,B) :- tiode(C,A), hijode(B,C).
hijode(A,B) :- padrede(B,A).
abuelode(A,B) :-padrede(A,C), padrede(C,B).
hermanode(A,B) :-padrede(C,A), padrede(C,B), A \== B.
familiarde(A,B) :- padrede(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).
casado(A,B) :- hijode(C,A), hijode(C,B), A \== B.
nietode(A,B) :- padrede(B,C), padrede(C,A).


