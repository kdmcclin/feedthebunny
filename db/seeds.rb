Category.create!([
  {label: "mythical creatures"},
  {label: "holidays"},
  {label: "Chanukah"}
])
Prompt.create!([
  {text: "mermaids"},
  {text: "I accidentally set the kitchen on fire frying things and you are an attractive firefighter."}
])
PromptCategory.create!([
  {prompt_id: 1, category_id: 1},
  {prompt_id: 2, category_id: 2},
  {prompt_id: 2, category_id: 3}
])
