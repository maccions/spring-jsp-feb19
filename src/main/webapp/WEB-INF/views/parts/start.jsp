<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<spring:eval expression="@environment.getProperty('site.title')" var="titolo" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Favicon -->
    <link rel="shortcut icon" href="${ctx}/res/favicon.ico" type="image/x-icon">
    <link rel="icon" href="${ctx}/res/favicon.ico" type="image/x-icon">
    <link rel="icon" href="${ctx}/res/images/cropped-logo-32x32.png" sizes="32x32" />
    <link rel="icon" href="${ctx}/res/images/cropped-logo-192x192.png" sizes="192x192" />
    <link rel="apple-touch-icon-precomposed" href="${ctx}/res/images/cropped-logo-180x180.png" />
    <meta name="msapplication-TileImage" content="${ctx}/res/images/cropped-logo-270x270.png" />




