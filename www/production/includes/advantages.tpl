<div class="our-advantages">
    <div class="container">
        <div class="caption-section">[[%word_7? &namespace=`langs`]]</div>
        <div class="our-advantages__content row">
            {if !$advantages = $_modx->cacheManager->get('advantages')}
                {set $advantages = 1 | resource : 'advantages' | fromJSON}
                {set $null = $_modx->cacheManager->set('advantages', $advantages, 2592000)}
            {/if}
            {foreach $advantages as $advantage}
                <div class="our-advantages__item col-lg-4 col-md-6 col-6">
                    <div class="img"><img src="{$advantage['image']}" alt="{$advantage['text']}"></div>
                    <div class="title">{$advantage['text']}</div>
                </div>
            {/foreach}
        </div>
    </div>
</div>