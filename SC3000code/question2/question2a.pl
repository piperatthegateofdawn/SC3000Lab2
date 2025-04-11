%childen_order
offspring(prince_charles, 1, male).
offspring(princess_ann, 2, female).
offspring(prince_andrew, 3, male).
offspring(prince_edward, 4, male).

%male_succession_rule
succession_male(Name, Order) :-
    offspring(Name, Order, male).

%female_succession_rule
succession_female(Name, Order) :-
    offspring(Name, Order, female).
    
%final_succession_order
succession_list_old(List) :-
    findall([Order, Name],
        succession_male(Name, Order),
        MaleRaw),
    sort(MaleRaw, MaleSorted),
    findall([Order, Name],
        succession_female(Name, Order),
        FemaleRaw),
    sort(FemaleRaw, FemaleSorted),
    append(MaleSorted, FemaleSorted, Combined),
    findall(Name, member([_, Name], Combined), List).
