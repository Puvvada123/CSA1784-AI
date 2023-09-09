disease(diabetes).
disease(hypertension).
disease(high_cholesterol).

% Rules
diet(diabetes, [fruits, vegetables, whole grains, lean proteins, low-fat dairy]).
diet(hypertension, [fruits, vegetables, whole grains, lean proteins, low-fat dairy, low-sodium foods]).
diet(high_cholesterol, [fruits, vegetables, whole grains, lean proteins, low-fat dairy, foods low in saturated and trans fats]).

% Queries
suggest_diet(Disease, Diet) :- diet(Disease, Diet).
suggest_diet(Disease, ['No specific diet recommendations available for this disease.']):- \+ diet(Disease, _).
