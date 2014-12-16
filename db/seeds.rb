Category.create!([
  {label: "mythical creatures"},
  {label: "holidays"},
  {label: "Chanukah"},
  {label: "Christmas"}
])
Prompt.create!([
  {text: "mermaids"},
  {text: "I accidentally set the kitchen on fire frying things and you are an attractive firefighter."},
  {text: "What do you mean you’ve never played strip dreidel LET ME INTRODUCE YOU TO THIS PERVERSION OF THE GAME"},
  {text: "you were walking in front of me when you tripped over your own foot and knocked over the christmas tree in the park. let me help you up and we’ll try to fix the damage"},
])
PromptCategory.create!([
  {prompt_id: 1, category_id: 1},
  {prompt_id: 2, category_id: 2},
  {prompt_id: 2, category_id: 3},
  {prompt_id: 3, category_id: 2},
  {prompt_id: 3, category_id: 3},
  {prompt_id: 4, category_id: 2},
  {prompt_id: 4, category_id: 4}
])
