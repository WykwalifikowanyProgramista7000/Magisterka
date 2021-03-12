% int: menu_length;
% int: money_limit;
% array[1..menu_length] of int: menu_prices;
% array[1..menu_length] of int: yumyum_factors;
% array[1..menu_length] of string: menu_names;

% array[1..menu_length] of var int: order;

% constraint forall([order[i] >= 0 | i in 1..menu_length]);
% constraint sum([order[i] * menu_prices[i] | i in 1..menu_length]) <= money_limit; 

% solve maximize sum([order[i] * yumyum_factors[i] | i in 1..menu_length]);

% output [menu_names[i] ++ ": " ++ show(order[i]) ++ "\n" | i in 1..menu_length];

int: money_limit;
set of int: menu_items = index_set(menu_prices); 
array[int] of int: menu_prices;
array[menu_items] of string: menu_names;
array[menu_items] of int: yumyum_factors; 
array[menu_items] of int: available;
% TODO:
% - add assertions/specify domains excluding useless parameters' values
% - add variables
% - add constraints 
% - add objective
% TIP. for the variables, use names that are already in the output definition. 

constraint (assert(money_limit > 0, "Money limit can't be negative!"));
constraint forall(i in menu_items)(assert(menu_prices[i] > 0, "Price can't be negative!"));
constraint forall(i in menu_items)(assert(available[i] >=0 /\ available[i] <= 1, "Available needs to be in range <0-1>"));

array[menu_items] of var int: order;

constraint forall([order[i] >= 0 | i in menu_items]);

var int: total_price = sum([order[i] * menu_prices[i] * available[i] | i in menu_items]);
constraint total_price <= money_limit;
var int: total_yumyum = sum([order[i] * yumyum_factors[i] * available[i] | i in menu_items]);

solve maximize total_yumyum;

output ["\(menu_names[i]): \(order[i])\n" | i in menu_items] ++ 
       ["- total price:\t\(total_price)/\(money_limit)\n"] ++
       ["- total yumyum:\t\(total_yumyum)"];
