hasCitizenship(Person,Country) :- bornIn(Person,Country), jusSanguinis(Country).    
hasCitizenship(Person,Country) :- grandparentHadCitizenship(Person,Country), byGrandparent(Country).    
hasCitizenship(Person,Country) :- ancestorHadCitizenship(Person,Country), byAncestor(Country).    

ancestorHadCitizenship(X,Y) :- grandparentHadCitizenship(X,Y).