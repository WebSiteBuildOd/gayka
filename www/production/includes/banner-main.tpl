<div class="banner-main">
    <div class="container">

        {if !$sales = $_modx->cacheManager->get('sales')}
            {set $sales = $_modx->runSnippet('pdoResources', [
            'parents' => 'p_page_sales' | option,
            'return' => 'json',
            'limit' => 0,
            'includeTVs' => 'image'
            ]) | json_decode : true}
            {set $null = $_modx->cacheManager->set('sales', $sales, 2592000)}
        {/if}
        {foreach $sales as $sale}
        <div class="banner_container">
            <div class="img"><img src="{$sale['tv.image']}" alt="{$sale['pagetitle']}"></div>
            <div class="content">
                <div class="banner_content">
                    <div class="banner-title">[[%word_5? &namespace=`langs`]]</div>
                    <div class="banner-text">{$sale['pagetitle']}</div>
                    <div class="banner-link"><a href="{$sale['uri']}" class="btn-default btn-red">{$sale['introtext']}</a></div>
                </div>
            </div>
        </div>
        {/foreach}




    </div>
</div>