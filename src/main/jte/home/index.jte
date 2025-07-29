@import static io.bootify.jte.util.JteContext.*


@template.layout(pageTitle=localize("home.index.headline"), content=@`
    <h1 class="mb-4">${localize("home.index.headline")}</h1>
    <p class="mb-5">${localize("home.index.text")}</p>
    <div class="col-md-4 mb-5">
        <h4 class="mb-3">${localize("home.index.exploreEntities")}</h4>
        <div class="list-group">
            <a href="/products" class="list-group-item list-group-item-action">${localize("product.list.headline")}</a>
        </div>
    </div>
`)
