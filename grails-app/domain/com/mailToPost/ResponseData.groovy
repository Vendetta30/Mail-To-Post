package com.mailToPost

class ResponseData {


    List<Result> getResults() { return results; }

    void setResults(List<Result> results) { this.results = results; }

    String toString() { return "Results[" + results + "]"; }

    static hasMany = [results: Result]
    static constraints = {
    }
}
