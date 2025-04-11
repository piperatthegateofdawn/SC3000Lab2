%childen_order
offspring(prince_charles, 1, male).
offspring(princess_ann, 2, female).
offspring(prince_andrew, 3, male).
offspring(prince_edward, 4, male).

%succession_rule
succession_new(Name, Order) :-
    offspring(Name, Order,_).
    
%final_succession_order
succession_list_new(List) :-
    findall([Order, Name],
        succession_new(Name, Order),
        RawList),
    sort(RawList, Sorted),
    findall(Name, member([_, Name], Sorted), List).
