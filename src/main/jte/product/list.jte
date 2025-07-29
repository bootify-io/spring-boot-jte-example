@import static io.bootify.jte.util.JteContext.*
@import io.bootify.jte.product.ProductDTO

@param java.util.List<ProductDTO> products


@template.layout(pageTitle=localize("product.list.headline"), content=@`
    <div class="d-flex flex-wrap mb-4">
        <h1 class="flex-grow-1">${localize("product.list.headline")}</h1>
        <div>
            <a href="/products/add" class="btn btn-primary ms-2">${localize("product.list.createNew")}</a>
        </div>
    </div>
    @if (products.isEmpty())
        <div>${localize("product.list.empty")}</div>
    @else
    <div class="table-responsive">
        <table class="table table-striped table-hover align-middle">
            <thead>
                <tr>
                    <th scope="col">${localize("product.id.label")}</th>
                    <th scope="col">${localize("product.name.label")}</th>
                    <th scope="col">${localize("product.price.label")}</th>
                    <th><!-- --></th>
                </tr>
            </thead>
            <tbody>
                @for (ProductDTO product : products)
                <tr>
                    <td>${product.getId()}</td>
                    <td>${product.getName()}</td>
                    <td>${product.getPrice()}</td>
                    <td>
                        <div class="float-end text-nowrap">
                            <a href="/products/edit/${product.getId()}" class="btn btn-sm btn-secondary">${localize("product.list.edit")}</a>
                            <form action="/products/delete/${product.getId()}" data-confirm-message="${localize("delete.confirm")}"
                                    method="post" class="js-submit-confirm d-inline">
                                <button type="submit" class="btn btn-sm btn-secondary">${localize("product.list.delete")}</button>
                            </form>
                        </div>
                    </td>
                </tr>
                @endfor
            </tbody>
        </table>
    </div>
    @endif
`)
