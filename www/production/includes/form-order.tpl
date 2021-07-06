<div class="section__form-order">
    <div class="container">
        <div class="form-order__container">
            <div class="img"><img src="assets/production/img/laundry.png" alt="[[%word_8? &namespace=`langs`]]"></div>
            [[!AjaxForm?
                &snippet=`FormIt`
                &form=`@FILE: chunks/BASE/forms/form_callback.tpl`
                &hooks=`email`
                &emailTpl=`@FILE: chunks/BASE/emails/email_callback.tpl`
                &emailSubject=`Оформление заявки`
                &emailTo=`[[++g_email]]`
                &validate=`name:required,phone:required,v-i:blank`
                &validationErrorMessage=`В форме содержатся ошибки!`
                &successMessage=`Сообщение успешно отправлено`
                &submitVar=`form-callback`
            ]]

        </div>
    </div>
</div>