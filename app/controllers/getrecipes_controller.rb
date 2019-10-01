# # require 'mechanize'

# # class GetrecipesController < ApplicationController

# #     def get_recipes
# #         @results = {
# #             recipes: []
# #         }

# #         search_term = params["searchTerm"].downcase.gsub(" ","%20")
# #          #string

# #         mechanize = Mechanize.new
# #         page = mechanize.get("https://www.allrecipes.com/search/results/?wt=#{search_term}&sort=re")

# #         # link = page.search('a[data-click-id="cardslot 2"]')[0]

# #         links = page.search('a[data-click-id]')

# #         links.each do |link|
# #             if link['href'].include?("https://www.allrecipes.com/recipe")
# #                 pagelink = link['href']
# #                 page = mechanize.get(link['href'])

#                 ingredients = page.search('li.checkList__line span')[0..-4]
#                 if ingredients.empty?
#                     ingredients = page.search('span.ingredients-item-name')
#                 end
#                 ingredients_array = []
#                 ingredients.each do |ingredient|
#                     ingredients_array << ingredient.text.strip
#                 end
                    
#                 directions = page.search('li.step span')[0..-2]
#                 if directions.empty?
#                     directions = page.search('div.section-body')[0..-2]
#                 end
#                 directions_array = []
#                 directions.each do |direction|
#                     directions_array << direction.text.strip
#                 end

#                 img = page.search('img.rec-photo').attr('src')
#                     if !img 
#                         img = page.search('div.image-container div[data-tracking-zone="image"]').attr('data-src')
#                         if !img 
#                             img = ""
#                         else 
#                             img = img.text
#                         end
#                     else 
#                         img = img.text
#                     end
                
#                 submitter = page.search('span.submitter__name').text.strip
#                 if submitter.empty?
#                     submitter = page.search('a.author-name').text.strip
#                 end
#                 # byebug
                
#                 prep_time = page.search("li.prepTime__item").text.strip
#                 if prep_time.empty?
#                     prep_time = page.at('div.two-subcol-content-wrapper')
#                     if prep_time != nil
#                         prep_time.text.strip.split(" ").join(' ')
#                     else 
#                         prep_time = ""
#                     end
#                 end
                
                    
#                 description = page.search('div.submitter__description').text.strip
#                 if description.empty?
#                     description = page.search('p.margin-0-auto').text.strip
#                 end

#                 servings = page.search('meta#metaRecipeServings').attr('content')
#                     if !servings 
#                         servings = page.search('div.recipe-adjust-servings__size-quantity').text
#                             if !servings
#                                 servings = ""
#                             end
#                     else 
#                         servings = servings.text
#                     end

#                 nutrition = page.search("div.nutrition-summary-facts").text.strip[0..-15]
#                 if nutrition.empty?
#                     nutrition = page.search('div.section-body')[-1].text.strip
#                 end
#                 title = page.title[0..-17]
                

#                 recipe_hash = {
#                     title: title,
#                     madeBy: submitter,
#                     servingSize: servings,
#                     link: pagelink,
#                     img: img,
#                     prepTime: prep_time,
#                     nutrition: nutrition,
#                     description: description,
#                     directions: directions_array,
#                     ingredients: ingredients_array
#                 }

#                 @results[:recipes] << recipe_hash
#             end
#         end
#         render :json => @results
#     end
    
# end
