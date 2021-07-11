{extends "file:layouts/layout.tpl"}
{block 'content'}
<div class="page__contacts ">
    <div class="container">
        <h1>[[*H1:default=`[[*pagetitle]]`]]</h1>
        <div class="contacts__page__info">
            <div class="item-col">
                <div class="caption caption-1">[[%word_32? &namespace=`langs`]]</div>
                <ul>
                    {if !$cAddress = $_modx->cacheManager->get('cAddress')}
                        {set $cAddress = 110 | resource : 'contacts_address' | fromJSON}
                        {set $null = $_modx->cacheManager->set('cAddress', $cAddress, 2592000)}
                    {/if}
                    {foreach $cAddress as $address}
                    <li>{$address['address']}</li>
                    {/foreach}
                </ul>
            </div>
            <div class="item-col">
                <div class="caption caption-2">[[%word_33? &namespace=`langs`]]</div>
                <ul>
                    {if !$cPhones = $_modx->cacheManager->get('cPhones')}
                    {set $cPhones = 110 | resource : 'contacts_phones' | fromJSON}
                    {set $null2 = $_modx->cacheManager->set('cPhones', $cPhones, 2592000)}
                    {/if}
                    {foreach $cPhones as $phone}
                    <li><a href="tel:{$phone['phone'] | phoneFormat}">{$phone['phone']}</a></li>
                    {/foreach}
                </ul>
            </div>
            <div class="item-col">
                <div class="caption caption-3">[[%word_1? &namespace=`langs`]]</div>
                <ul class="ul-times-work">
                    {if !$cTimes = $_modx->cacheManager->get('cTimes')}
                    {set $cTimes = 110 | resource : 'contacts_times' | fromJSON}
                    {set $null3 = $_modx->cacheManager->set('cTimes', $cTimes, 2592000)}
                    {/if}
                    {foreach $cTimes as $item}
                    <li>
                        <span class="title">{$item['day']}</span>
                        <span class="value">{$item['times']}</span>
                    </li>
                    {/foreach}
                </ul>
            </div>
        </div>
        <div class="contacts__page__map">
            <div class="contacts__map">
                <div class="map-content">
                    <img src="assets/production/img/map.jpg" alt="карта">
                </div>
            </div>
            [[!AjaxForm?
                &snippet=`FormIt`
                &form=`@FILE: chunks/BASE/forms/form_contacts.tpl`
                &hooks=`email`
                &emailTpl=`@FILE: chunks/BASE/emails/email_contacts.tpl`
                &emailSubject=`Связаться с нами`
                &emailTo=`[[++g_email]]`
                &validate=`name:required,phone:required,v-i:blank`
                &validationErrorMessage=`В форме содержатся ошибки!`
                &successMessage=`Сообщение успешно отправлено`
                &submitVar=`form-contacts`
            ]]

        </div>
    </div>
</div>
{/block}