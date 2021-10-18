% swipl -l main.pl -t main

:- consult(countries).
:- consult(broad_rules).

grandparentHadCitizenship(john,ireland).
grandparentHadCitizenship(john,italy).
bornIn(john,united_states).

main :- forall(hasCitizenship(Person,Country), (write(Country), nl)).
