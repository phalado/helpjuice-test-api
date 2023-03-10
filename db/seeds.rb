# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

[
  "90 of the best opening hooks on Medium",
  "17 of the best books on writing",
  "I just hit 10,000 followers, here's how I did it",
  "Easy trick to getting a Top Writer award",
  "Be a mimic in your writing for a massive productivity boost",
  "8 step guide to getting into awesome publications",
  "47 tips to writing an awesome headline from top writers",
  "This awesome trick to easily add humor to your writing",
  "6 of the best moves to make as a brand new writer on Medium",
  "17 active fiction publications on Medium",
  "Unannounced awesome feature change on Medium",
  "A secret to modern success as a writer",
  "Leak of internal Medium turmoil",
  "Is this the death of Medium-owned pubs?",
  "The power of idea sex in your writing",
  "33 free writing tools to use",
  "The 15 articles made over $500 each on Medium",
  "Write and submit stories to Feedium",
  "Use these 414 alternative adjectives to spice up your writing",
  "332 headlines with over 10,000 claps each",
  "How to use 'Feel to Reel' to improve your headlines",
  "How many Kindle books do bestsellers actually sell?",
  "No more clickbait allowed on Medium",
  "Some workarounds for your Medium news feed",
  "Why your views went down but reading time stayed the same",
  "How to find out what topics you've been curated in",
  "The one truth about newsletters you need to know",
  "How to create a profile image for your Medium account",
  "Treat Medium pubs just like guest blogs",
  "Medium stats aren't what you think they are",
  "Please don't erase us, Medium",
  "The 10 most popular articles from the 10 most popular Medium pubs",
  "5 incredibly easy ways to massively improve your images",
  "Why don't my articles earn more than $10?",
  "The impossible Medium article that has over 1 million claps",
  "How many stories are published on Medium each month?",
  "Did you know you have an RSS feed on Medium?",
  "The 107 statistically most inspirational authors on Medium",
  "How to set up a custom domain on Medium",
  "How much does Medium.com earn in revenue vs what they payout",
  "Why you need to space out your articles for more views",
  "How to make sure a tag is effective in a story",
  "An easy trick to getting more views on your articles",
  "Stop using this 'hack' in Medium, it's annoying",
  "53 fastest-growing publications on Medium.com",
  "45 largest publications on Medium",
  "43 popular publications on Medium",
  "4 easy steps to finding publications",
  "10 health and mental health publications",
  "9 humor publications",
  "9 politics publications",
  "5 travel publications",
  "10 business publications",
  "10 writing publications",
  "Noob-friendly publications",
  "Every Medium owned publication",
  "10 life lessons and life publications",
  "20 of the harder publications to get into",
  "Full list of Top Writer tags and number of writers",
  "Increase your article views 25% with a simple change",
  "Listening to music while writing may be slowing you down",
  "11 amazing and useful tips for Medium",
  "How to gain 20 to 30 new followers every day in only 15 minutes!",
  "13 great tips from Medium Pros",
  "How to choose a blogging niche on Medium.com",
  "How to see more statistics on Medium",
  "Your Medium username might not be searchable!",
  "How to see niche stories within a publication ('hack')",
].each { |name| Article.create(name: name) }

Article.reindex
SearchInput.reindex