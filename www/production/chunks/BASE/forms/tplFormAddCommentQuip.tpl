[[+preview]]
<span class="quip-success" id="quip-success-[[+idprefix]]">[[!+successMsg]]</span>
<form action="[[+url]]#quip-comment-preview-box-[[+idprefix]]"
      data-count-comments="[[+total]]"
      method="post"
      id="quip-add-comment-[[+idprefix]]"
      class="form__add-comment-to-article">
    <input type="hidden" name="nospam" value="" />
    <input type="hidden" name="thread" value="[[+thread]]" />
    <input type="hidden" name="parent" value="[[+parent]]" />
    <input type="hidden" name="auth_nonce" value="[[+auth_nonce]]" />
    <input type="hidden" name="preview_mode" value="[[+preview_mode]]" />

    <div class="caption-form">Добавить комментарий</div>
    <div class="row-form">
        <label for="quip-comment-name-[[+idprefix]]">[[%quip.name? &namespace=`quip` &topic=`default`]]:<span class="quip-error">[[+error.name]]</span></label>
        <input required="required" type="text" name="name" id="quip-comment-name-[[+idprefix]]" value="[[+name]]" placeholder="Имя:">
    </div>
    <div class="row-form">
        <label for="quip-comment-email-[[+idprefix]]">[[%quip.email]]:<span class="quip-error">[[+error.email]]</span></label>
        <input required="required" type="text" name="email" id="quip-comment-email-[[+idprefix]]" value="[[+email]]" placeholder="Электронная почта:">
    </div>
    <div class="quip-fld" style="display: none;">
        <label for="quip-comment-website-[[+idprefix]]">[[%quip.website]]:<span class="quip-error">[[+error.website]]</span></label>
        <input type="text" name="website" id="quip-comment-website-[[+idprefix]]" value="[[+website]]" />
        <br />
    </div>
    <div class="row-form">
        <textarea required="required" name="comment" id="quip-comment-box-[[+idprefix]]" rows="4" placeholder="Добавить новый комментарий:">[[+comment]]</textarea>
    </div>
    <div class="quip-fld recaptcha">
        [[+quip.recaptcha_html]]
        <span class="quip-error">[[+error.recaptcha]]</span>
    </div>
    <button class="submit" name="[[+post_action]]" type="submit" value="1">Добавить</button>
</form>