<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Register Yourself with Us</title>
    <meta name="layout" content="main"/>
    <link href="${resource(dir: 'css/mine', file: 'stepByStep.css')}" rel="stylesheet">
</head>

<body>
<section class="light-bg">
    <div class="container" style="margin-top: 100px; margin-bottom: 100px;">
        <g:render template="navigationPer"/>
        <g:render template="stepNavigation"/>
        <form class="form-horizontal">
            <g:render template="step1" model="[userCO: userCO]"/>
            <g:render template="step2" model="[personalDetailCO: personalDetailCO]"/>
            <g:render template="step3" model="[addressCO: addressCO]"/>
            <g:render template="step4" model="[companyDetailCO: companyDetailCO, companyAddress: companyAddress]"/>
            <g:render template="step5"/>
        </form>
    </div>
</section>
<script src="${resource(dir: 'js/public', file: 'jquery.validate.min.js')}"></script>
<script src="${resource(dir: 'js/mine', file: 'stepByStep.js')}"></script>
</body>
</html>