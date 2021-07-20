{extends "file:layouts/layout.tpl"}
{block 'content'}
<div class="service__page">
    <div class="container">
        <h1 class="service__h1">[[*H1:default=`[[*pagetitle]]`]]</h1>

        {set $articles = $_modx->runSnippet('pdoResources', [
        'parents' => 80,
        'limit'   => 4,
        'return'  => 'json',
        'includeTVs' => 'foto_article',
        'sortby' => '{ "publishedon" : "DESC" }'
        ]) | fromJSON}

        <div class="section__blog__list">
            <div class="row">
                <div class="col-lg-7">
                    {foreach $articles as $article}
                    {if $article@index+1 == 1}
                    <div class="blog__first-article">
                        <a href="{$article['uri']}" class="article__title">{$article['pagetitle']}</a>
                        <div class="article__info">
                            <div class="author__name">Артур Серебрин</div>
                            <div class="article__date">- {$article['publishedon'] | date_format : '%b %d, %Y'}</div>
                        </div>
                        <div class="article__image">
                            <a href="{$article['uri']}"><img src="{$article['tv.foto_article'] | phpthumbon: 'w=625&h=270&zc=1&q=80'}" alt="{$article['pagetitle']}"></a>
                        </div>
                        <div class="article__desc">
                            {$article['introtext']}
                        </div>
                    </div>
                    {/if}
                    {/foreach}

                </div>
                <div class="col-lg-5">
                    <div class="blog__search">
                        <div class="search__blog__wrap">
                            <form action="" class="form__search-blog" id="formSearchBlog">
                                <input type="search" name="search" value="" placeholder="Поиск по блогу">
                                <button type="submit" name="submit" value=""></button>
                            </form>
                        </div>
                    </div>
                    <div class="blog__list-mini-articles">
                        {foreach $articles as $article}
                        {if $article@index+1 != 1}
                        <div class="item-mini-article">
                            <div class="img"><a href="{$article['uri']}"><img src="{$article['tv.foto_article'] | phpthumbon: 'w=180&h=100&zc=1&q=80'}" alt="{$article['pagetitle']}"></a></div>
                            <div class="content">
                                <a href="{$article['uri']}" class="title">{$article['pagetitle']}</a>
                                <div class="date">- {$article['publishedon'] | date_format : '%b %d, %Y'}</div>
                            </div>
                        </div>
                        {/if}
                        {/foreach}
                    </div>
                </div>
            </div>

            <div id="pdopage" class="articles__list">
                <div class="row rows">
                    {'!pdoPage' | snippet : [
                    'parents' => '80',
                    'limit' => '6',
                    'includeTVs' => 'foto_article',
                    'toPlaceholder' => 'result',
                    'ajaxMode' => 'button',
                    'ajaxElemWrapper' => '#pdopage',
                    'ajaxElemRows' => '#pdopage .rows',
                    'ajaxElemMore' => '#pdopage .btn-more',
                    'ajaxElemPagination' => '#pdopage .pagination',
                    'tpl' => '@FILE includes/article.item.tpl',
                    'ajaxTplMore' => '@INLINE <div class="view-all__wrap"><button class="btn-view-all btn-more">Загрузить ещё</button></div>'
                    ]}
                    {'result' | placeholder}
                </div>
                {'page.nav' | placeholder}
            </div>

        </div>
    </div>
</div>

{/block}