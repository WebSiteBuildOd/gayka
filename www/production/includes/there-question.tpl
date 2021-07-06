<div class="section__there-question">
    <div class="container">
        <div class="there-question__contents">
            <div class="text">
                <div class="caption">[[%word_12? &namespace=`langs`]]</div>
                <div class="desc">[[%word_13? &namespace=`langs`]]</div>
            </div>
            <div class="there-question__form">
                [[!AjaxForm?
                    &snippet=`FormIt`
                    &form=`@FILE: chunks/BASE/forms/form_there-question.tpl`
                    &hooks=`email`
                    &emailTpl=`@FILE: chunks/BASE/emails/email_there-question.tpl`
                    &emailSubject=`Форма обратной связи`
                    &emailTo=`[[++g_email]]`
                    &validate=`name:required,phone:required,v-i:blank`
                    &validationErrorMessage=`В форме содержатся ошибки!`
                    &successMessage=`Сообщение успешно отправлено`
                    &submitVar=`form-there-question`
                ]]
            </div>
        </div>
    </div>
</div>