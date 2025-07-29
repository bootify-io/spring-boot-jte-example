@import static io.bootify.jte.util.JteContext.*

@param io.bootify.jte.product.ProductDTO product
@param Boolean withDownloads = false


@template.layout(pageTitle=localize("product.edit.headline"), content=@`
    <div class="d-flex flex-wrap mb-4">
        <h1 class="flex-grow-1">${localize("product.edit.headline")}</h1>
        <div>
            <a href="/products" class="btn btn-secondary">${localize("product.edit.back")}</a>
        </div>
    </div>
    @template.components.globalErrors(object="product")
    <form action="${getRequestUri()}" method="post" novalidate="">
        @template.components.inputRow(object="product", field="id", type="number", disabled=true)
        @template.components.inputRow(object="product", field="name", required=true)
        @template.components.inputRow(object="product", field="price", required=true)
        @template.components.inputRow(object="product", field="description", type="textarea")
        <input type="submit" value="${localize("product.edit.headline")}" class="btn btn-primary mt-4" />
    </form>
`)
