<div class="section__reviews">
    <div class="container">
        <div class="caption-section">[[%word_10? &namespace=`langs`]]</div>
        <div class="reviews-slider">
        {if !$reviews = $_modx->cacheManager->get('reviews')}
            {set $reviews = 158 | resource : 'reviews' | fromJSON}
            {set $null = $_modx->cacheManager->set('reviews', $reviews, 2592000)}
        {/if}
        {foreach $reviews as $review}

            <div class="reviews-slider__item">
                <div class="item-content-review">
                    <div class="text">{$review['text']}</div>
                    <div class="info">
                        <div class="img"><img src="{$review['image']}" alt=""></div>
                        <div class="name">{$review['from_name']}</div>
                    </div>
                </div>
            </div>

        {/foreach}
        </div>
    </div>
</div>