User.create!([
  {email: "jooo.banchard@gmail.com",     registered: true},
  {email: "belle.francois.38@gmail.com", registered: true}
])


Election.create!([

{user_id: 1, name: "election 1 jo", status: "init"},
{user_id: 1, name: "election 2 jo", status: "init"},
{user_id: 2, name: "election 1 françois", status: "init"},
{user_id: 2, name: "election 2 françois", status: "init"},

])
