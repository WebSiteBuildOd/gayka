<div class="section__form-order">
    <div class="container">
        <div class="form-order__container">
            <div class="img"><img src="assets/production/img/form-img-2.png" alt="[[%word_8? &namespace=`langs`]]"></div>
            [[!AjaxForm?
            &snippet=`FormIt`
            &form=`@FILE: chunks/BASE/forms/form_order_service.tpl`
            &hooks=`email`
            &emailTpl=`@FILE: chunks/BASE/emails/email_order_service.tpl`
            &emailSubject=`Оформление заказа`
            &emailTo=`[[++g_email]]`
            &validate=`name:required,phone:required,v-i:blank`
            &validationErrorMessage=`В форме содержатся ошибки!`
            &successMessage=`Сообщение успешно отправлено`
            &submitVar=`form-order-service`
            ]]

        </div>
    </div>
</div>