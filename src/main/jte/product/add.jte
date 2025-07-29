@import static io.bootify.jte.util.JteContext.*


@template.layout(pageTitle=localize("product.add.headline"), content=@`
    <div class="d-flex flex-wrap mb-4">
        <h1 class="flex-grow-1">${localize("product.add.headline")}</h1>
        <div>
            <a href="/products" class="btn btn-secondary">${localize("product.add.back")}</a>
        </div>
    </div>
    @template.components.globalErrors(object="product")
    <form action="${getRequestUri()}" method="post" novalidate="">
        @template.components.inputRow(object="product", field="name", required=true)
        @template.components.inputRow(object="product", field="price", required=true)
        @template.components.inputRow(object="product", field="description", type="textarea")
        <input type="submit" value="${localize("product.add.headline")}" class="btn btn-primary mt-4" />
    </form>
`)
