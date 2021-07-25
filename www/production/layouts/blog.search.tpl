{extends "file:layouts/layout.tpl"}
{block 'content'}
<div class="service__page">
    <div class="container">
        <h1 class="service__h1">[[*H1:default=`[[*pagetitle]]`]]</h1>

        <div class="section__blog__list">
            {'!SimpleSearch' | snippet : [
                'tpl' => '@CODE [[+id]],',
                'minChars' => 3,
                'perPage' => '100000',
                'docFields' => 'pagetitle,longtitle,alias,introtext,content',
                'toPlaceholder' => 'res_ids',
                'containerTpl' => '@CODE [[+results]]',
                'noResultsTpl' => '@CODE'
            ]}
            {if 'res_ids' | placeholder !== ''}
                <div id="pdopage" class="articles__list">
                    <div class="row rows">
                        {'!pdoPage' | snippet : [
                        'parents' => '80',
                        'limit' => '6',
                        'resources' => 'res_ids' | placeholder,
                        'includeTVs' => 'foto_article',
                        'toPlaceholder' => 'result',
                        'ajaxMode' => 'button',
                        'ajaxElemWrapper' => '#pdopage',
                        'ajaxElemRows' => '#pdopage .rows',
                        'ajaxElemMore' => '#pdopage .btn-more',
                        'ajaxElemPagination' => '#pdopage .pagination',
                        'tpl' => '@FILE includes/article.item.tpl',
                        'ajaxTplMore' => '@INLINE <div class="view-all__wrap"><button class="btn-view-all btn-more">[[%word_38? &namespace=`langs`]]</button></div>'
                        ]}
                        {'result' | placeholder}
                    </div>
                    {'page.nav' | placeholder}
                </div>
            {else}
            <p>[[%word_37? &namespace=`langs`]]</p>
            {/if}
        </div>
    </div>
</div>

{/block}