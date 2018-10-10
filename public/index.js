/* global axios */

var recipeTemplate = document.querySelector("#recipe-card");
var recipeRow = document.querySelector(".row");

axios.get("http://localhost:3000/api/recipes").then(function(response){
	var recipes = response.data;
	console.log(recipes);

	recipes.forEach(function(recipe){
		var recipeClone = recipeTemplate.content.cloneNode(true);
		recipeClone.querySelector(".card-img-top").src = recipe.image_url;
		recipeClone.querySelector(".card-title").innerText = recipe.title;
		recipeClone.querySelector(".card-text").innerText = recipe.ingredients;
		recipeRow.appendChild(recipeClone);
	});
});