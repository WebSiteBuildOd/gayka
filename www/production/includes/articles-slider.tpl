<div class="section-articles">
    <div class="container">
        <div class="caption-section">[[%word_11? &namespace=`langs`]]</div>

        <div class="articles__contents row">
            {set $articles = $_modx->runSnippet('pdoResources', [
                'parents' => 80,
                'limit'   => 3,
                'return' => 'json',
                'includeTVs' => 'foto_article'
            ]) | fromJSON}
            {foreach $articles as $article}
            <div class="col-lg-4">
                <div class="item-article">
                    <div class="img">
                        <img src="{$article['tv.foto_article'] | phpthumbon: 'w=350&h=225&zc=1&q=75'}"
                             alt="{$article['pagetitle']}">
                    </div>
                    <a href="{$article['uri']}" class="title">{$article['pagetitle']}</a>
                    <div class="desc">{$article['introtext'] | truncate : 120}</div>
                    <a href="{$article['uri']}" class="more">Читать далее >></a>
                </div>
            </div>
            {/foreach}
        </div>
    </div>
</div>