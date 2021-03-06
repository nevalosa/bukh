<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - BUKH</title>
    <link rel="stylesheet" href="${ctx}/static/styles/modules.css">
    <link rel="stylesheet" href="${ctx}/static/styles/w_default.css">
    <link href="${ctx}/static/jquery-validation/1.11.1/validate.css" type="text/css" rel="stylesheet"/>
</head>
<body class=" bodyCatId11 bodyPageId6  bodyPageTypeKontakt languageUK site1 ">
<div id="Wrapper">
<%@include file="common/header.jsp" %>
<div id="InnerWrapper">
<div id="ContentWrapper">
<div id="ContentTop">

</div>
<div id="Content">
<div id="MainContentWrapper" style="width: 920px">
<div id="MainContentTop">

</div>
<div id="MainContent">
    <table class="table_form" cellpadding="0" cellspacing="0">
        <tbody>
        <tr>
            <td class="content">
                <table cellpadding="0" cellspacing="2" border="0">
                    <tbody>
                    <tr>
                        <td><p><spring:message code="contact.tips"/></p></td>
                    </tr>
                    </tbody>
                </table>
                <table cellpadding="0" cellspacing="2" border="0">
                    <tbody>
                    <tr>
                        <td>
                            <strong>BUKH A/S</strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Aabenraavej 13-17
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DK-6340
                            Krusaa <br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Danmark
                        </td>
                    </tr>
                    </tbody>
                </table>
                <br>
                <table cellpadding="0" cellspacing="2" border="0">
                    <tbody>
                    <tr>
                        <td width="125"><spring:message code="contact.u.telephone"/> :</td>
                        <td>+45 74 62 20 88</td>
                    </tr>
                    <tr>
                        <td width="125"><spring:message code="contact.u.email"/> :</td>
                        <td>
                            <a href="mailto:bukh@bukh.dk">bukh@bukh.dk</a>
                        </td>
                    </tr>
                    <tr>
                        <td width="125"><spring:message code="contact.u.website"/> :</td>
                        <td><a href="http://www.bukh.dk">http://www.bukh.dk</a></td>
                    </tr>
                    </tbody>
                </table>
                <br>

                <form action="${ctx}/contact/create" name="mail" method="post" id="validation_contact">
                    <input type="hidden" name="action" value="send_mail">
                    <table cellpadding="0" cellspacing="2" border="0">
                        <tbody>
                        <tr class="contactform-company">
                            <td width="125"><spring:message code="contact.companyName"/> </td>
                            <td><input name="companyName" value="" id="contactform_company"  class="form_input"></td>
                        </tr>
                        <tr class="contactform-name">
                            <td><spring:message code="contact.name"/> <span class="error_text">*</span></td>
                            <td><input name="name" value="" id="contactform_name" class="form_input required"></td>
                        </tr>
                        <tr class="contactform-adress">
                            <td><spring:message code="contact.address"/> <span class="error_text"></span></td>
                            <td><input name="address" value="" id="contactform_adress"  class="form_input"></td>
                        </tr>
                        <tr class="contactform-zipcode">
                            <td><spring:message code="contact.postCode"/> <span class="error_text"></span></td>
                            <td><input name="postCode" value="" id="contactform_postcode" class="form_input"></td>
                        </tr>
                        <tr class="contactform-city">
                            <td><spring:message code="contact.city"/> <span class="error_text"></span></td>
                            <td><input name="city" value="" id="contactform_city" class="form_input"></td>
                        </tr>
                        <tr class="contactform-phone">
                            <td><spring:message code="contact.telephone"/> <span class="error_text">*</span></td>
                            <td><input name="telephone" value="" id="contactform_telephone" class="form_input required number"></td>
                        </tr>
                        <tr class="contactform-mail">
                            <td><spring:message code="contact.email"/> <span class="error_text">*</span></td>
                            <td><input name="email" value="" id="contactform_mail" class="form_input required email"></td>
                        </tr>
                        <tr class="contactform-subject">
                            <td><spring:message code="contact.subject"/> <span class="error_text">*</span></td>
                            <td><input name="subject" value="" id="contactform_subject" class="form_input required"></td>
                        </tr>
                        <tr class="contactform-ref">
                            <td><spring:message code="contact.findWay"/> </td>
                            <td>
                                <select name="findWay" class="form_input" id="contactformSelect">
                                    <option value="Ikke valgt"><spring:message code="contact.findWay.default"/> </option>
                                    <option value="Searchengines like Google">Searchengines like
                                        Google
                                    </option>
                                    <option value="Through a colleague">Through a colleague</option>
                                    <option value="Followed link from another site">Followed link
                                        from another site
                                    </option>
                                    <option value="Press">Press</option>
                                    <option value="Commercials">Commercials</option>
                                    <option value="Other">Other</option>
                                </select>
                            </td>
                        </tr>
                        <tr class="contactform-message">
                            <td valign="top"><spring:message code="contact.message"/> <span class="error_text">*</span></td>
                            <td><textarea name="message" id="contactform_message"  class="form_input required"></textarea></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top" width="125"><spring:message code="contact.check"/>
                                <span class="error_text">*</span><br><span style="font-size:10px"><spring:message code="contact.check.tips"/> </span>
                            </td>
                            <td>
                                <script type="text/javascript">
                                    var RecaptchaOptions = {
                                        theme: 'custom',
                                        custom_theme_widget: 'recaptcha_widget'
                                    };
                                </script>
                                <div id="recaptcha_widget" style=""
                                     class="recaptcha_nothad_incorrect_sol recaptcha_isnot_showing_audio">

                                    <div id="recaptcha_image" onclick="Recaptcha.reload()"
                                         style="cursor: pointer; width: 300px; height: 57px;"></div>
                                    <div class="recaptcha_only_if_incorrect_sol" style="color:red">
                                        Incorrect please try again
                                    </div>
                                     <span id="recaptcha_challenge_field_holder" style="display: none;">
                                        <input type="hidden" name="recaptcha_challenge_field"
                                               id="recaptcha_challenge_field"
                                               value=""></span>
                                    <input type="text" id="recaptcha_response_field" name="recaptcha_response_field"
                                           style="width: 200px;" autocomplete="off" class="required">

                                </div>

                                <script type="text/javascript"
                                        src="http://www.google.com/recaptcha/api/challenge?k=6LcrmfASAAAAACNNvHJ6Yz8LNHzRShdO2aqy-G2T">
                                </script>

                                <noscript>
                                    &lt;iframe
                                    src="http://www.google.com/recaptcha/api/noscript?k=6LcrmfASAAAAACNNvHJ6Yz8LNHzRShdO2aqy-G2T
                                    "
                                    height="300" width="500" frameborder="0"&gt;&lt;/iframe&gt;&lt;br&gt;
                                    &lt;textarea name="recaptcha_challenge_field" rows="3" cols="40"&gt;
                                    &lt;/textarea&gt;
                                    &lt;input type="hidden" name="recaptcha_response_field"
                                    value="manual_challenge"&gt;
                                </noscript>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top"></td>
                            <td>
                                <div class="button">
                                    <dl>
                                        <dt class="left"></dt>
                                        <dt class="middle">
                                            <input type="submit" value="<spring:message code="contact.send"/>" name="mail"></dt>
                                        <dt class="right"></dt>
                                    </dl>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div id="MainContentBottom"></div>
</div>
</div>
<div id="ContentBottom">

</div>
</div>
</div>
<div style="clear: both;"></div>
</div>
<%@include file="common/footer.jsp" %>
<script src="${ctx}/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>
<script>
    $(function () {
        $("#nav-contact a").addClass("active");
        $("#validation_contact").validate();
    })
</script>
</body>
</html>