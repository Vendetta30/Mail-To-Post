package com.mailToPost

class Result {

    String url;
    String title;

    String getUrl() { return url; }

    String getTitle() { return title; }

    void setUrl(String url) { this.url = url; }

    void setTitle(String title) { this.title = title; }

    String toString() { return "Result[url:" + url + ",title:" + title + "]"; }
    static belongsTo = [responseData: ResponseData]
    static constraints = {
    }
}
