package mailToPost

import grails.converters.JSON
import org.apache.commons.lang.StringUtils

class ApplicationFilters {

    def filters = {
        jsonify(controller: '*', action: '*') {
            after = { Map model ->
                String acceptHeader = request.getHeader('accept')

                boolean isAcceptHeaderApplicationJson = "application/json".equals(acceptHeader)
                boolean isJsonRequest = 'json'.equalsIgnoreCase(params.format?.trim()) || isAcceptHeaderApplicationJson
                boolean isJsonpRequest = StringUtils.isNotBlank(params.callback)

                if (isJsonRequest != true && isJsonpRequest != true) {
                    return true
                }

                // check if we can unwrap the model (such in the case of a show)
                def modelToRenderAsJson = model?.size() == 1 ? model.find { true }.value : model
                if (isJsonpRequest) {
                    response.setContentType('application/javascript;charset=utf-8')
                    render "${params.callback}(${modelToRenderAsJson as JSON})"
                } else {
                    response.setContentType('application/json;charset=utf-8')
                    render modelToRenderAsJson as JSON
                }

                return false
            }
        }
    }
}
