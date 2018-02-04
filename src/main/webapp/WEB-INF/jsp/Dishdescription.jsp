<%@ include file = "header.jsp" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<div class="container">
    <div class="row">

        <div class="col">
            <img class="card-img-top" src="${dish.picture}">
        </div>

        <div class="col-md-6">
            <h4 >${dish.name}</h4>
            <p class="text-muted">${dish.weight} grams</p>
            <p class="text-muted">${dish.calories} calories</p>
            <p class="text-muted">Preparing time: ${dish.preparingtime} min</p>
           <!-- <p class="text-muted">Components: cauliflower, cheese, seeds, sauce</p> -->
            <p class="card-text">${dish.description}</p>
            <div class="card-block">
                <h5 class="card-title">${dish.price}$ <a href="#/${dish.id}" class="btn btn-primary">Add to cart</a> </h5>
            </div>

        </div>
    </div>
</div>


<style>
    .container {
        text-align: left;
    }
</style>

<%@ include file = "footer.jsp" %>