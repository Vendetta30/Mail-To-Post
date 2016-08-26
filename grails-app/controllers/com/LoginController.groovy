/* Copyright 2013-2015 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com

import com.google.gson.Gson
import com.mailToPost.GoogleResults
import com.springSecurity.User
import grails.converters.JSON
import org.codehaus.groovy.grails.plugins.web.taglib.ApplicationTagLib
import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class LoginController extends grails.plugin.springsecurity.LoginController {
    /**
     * The Ajax success redirect url.
     */
    def ajaxSuccess = {
        def redirect = params.targetUrl
        if (!redirect) {
            User user = springSecurityService.currentUser as User
            if (user) {
                ApplicationTagLib applicationTagLib = new ApplicationTagLib()
                redirect = applicationTagLib.createLink(controller: 'landing', action: 'decide', absolute: true)
            }
        }
        render([success: true, username: springSecurityService.authentication.name] << (redirect ? [redirect: redirect] : [:]) as JSON)
    }

    def googleSearch = {
        render(view: 'googleSearchApi')
    }

    def javaAPi = {

        String address = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=";
        String query = "programcreek";
        String charset = "UTF-8";

        URL url = new URL(address + URLEncoder.encode(query, charset));
        Reader reader = new InputStreamReader(url.openStream(), charset);
        GoogleResults results = new GoogleResults()
        results = new Gson().fromJson(reader, GoogleResults.class);
        println("==========Reults===========${results}")
        int total = results.getResponseData().getResults().size();
        System.out.println("total: " + total);

        // Show title and URL of each results
        for (int i = 0; i <= total - 1; i++) {
            System.out.println("Title: " + results.getResponseData().getResults().get(i).getTitle());
            System.out.println("URL: " + results.getResponseData().getResults().get(i).getUrl() + "\n");

        }

    }
}

