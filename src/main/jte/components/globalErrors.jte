@import static io.bootify.jte.util.JteContext.*
@import io.bootify.jte.util.WebUtils
@import org.springframework.validation.ObjectError

@param String object


@if (getBindingResult(object).hasGlobalErrors())
    <div class="invalid-feedback d-block">
        @for (ObjectError globalError : getBindingResult(object).getGlobalErrors())
            <p class="mb-0">
                ${WebUtils.getMessage(globalError)}
            </p>
        @endfor
    </div>
@endif
