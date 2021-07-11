{extends "file:layouts/layout.tpl"}
{block 'content'}

<div class="service__page">
    <div class="container">
        <h1 class="service__h1">[[*H1:default=`[[*pagetitle]]`]]</h1>
        <div class="service__head">
            <div class="img"><img src="[[*image]]" alt="[[*pagetitle]]"></div>
            <div class="service__infos">
                {if !$sMigxA = $_modx->cacheManager->get('sMigxA')}
                    {set $sMigxA = 159 | resource : 's_migx' | fromJSON}
                    {set $null = $_modx->cacheManager->set('sMigxA',$sMigxA , 2592000)}
                {/if}
                {foreach $sMigxA as $item}
                <div class="item__service__infos">
                    <div class="icon"><img src="{$item['image']}" alt="{$item['text']}"></div>
                    <div class="title">{$item['text']}</div>
                </div>
                {/foreach}
            </div>
        </div>

        {set $thisProblems = $_modx->resource.id | resource : 'types_problems'}
        {if $thisProblems}
        <div class="typical-breakdowns__section">
            <div class="caption-section__service">[[%word_18? &namespace=`langs`]]</div>

            <div class="typical-breakdowns__wrap section-service-padding">
                <div class="typical-breakdowns__contents row">

                    {set $problems = $_modx->runSnippet('pdoResources', [
                        'parents' => 154,
                        'limit'   => 0,
                        'return'  => 'json',
                        'includeTVs' => 'icon,type_work_children',
                        'resources' => $thisProblems
                    ]) | fromJSON}

                    {foreach $problems as $problem}
                    <div class="col-lg-6">
                        <div class="item_t-b">
                            <div class="img"><img src="{$problem['tv.icon']}" alt="{$problem['pagetitle']}"></div>
                            <div class="content">
                                <div class="title">{$problem['pagetitle']}</div>
                                {set $typeWork = $problem['tv.type_work_children'] | split : '||'}
                                {if $typeWork}
                                <ul class="list">
                                    {foreach $typeWork as $type}
                                        <li>{$type | resource : 'pagetitle'}</li>
                                    {/foreach}
                                </ul>
                                {/if}
                                <div class="btn-content"><a href="{$type | url}" class="btn-default btn-w-150">[[%word_27? &namespace=`langs`]]</a></div>
                            </div>
                        </div>
                    </div>
                    {/foreach}

                </div>

                [[-Тут доделать Еще поломки -]]
                [[-<div class="view-all__wrap"><button class="btn-view-all">Ещё поломки</button></div>-]]
            </div>
        </div>
        {/if}

        {set $priceList = $_modx->resource.id | resource : 's_prices' | fromJSON}
        {if count($priceList)}
        <div class="price__section">
            <div class="caption-section__service">Цены</div>

            <div class="section-service-padding price__contents__table">
                <div class="table_price">
                    <div class="table__scroll">
                        <div class="t_head">
                            <div class="t_row">
                                <div class="th">[[%word_28? &namespace=`langs`]]</div>
                                <div class="th">[[%word_29? &namespace=`langs`]]</div>
                                <div class="th">[[%word_30? &namespace=`langs`]]</div>
                                <div class="th">[[%word_31? &namespace=`langs`]]</div>
                            </div>
                        </div>
                        <div class="t_body">
                            {foreach $priceList as $price}
                            <div class="t_row">
                                <div class="td">{$price['p_type']}</div>
                                <div class="td">{$price['p_time']}</div>
                                <div class="td">{$price['p_gar']}</div>
                                <div class="td">{$price['p_price']}</div>
                            </div>
                            {/foreach}
                        </div>
                    </div>
                </div>
                [[-<div class="view-all__wrap"><button class="btn-view-all">Развернуть</button></div>-]]
            </div>
        </div>
        {/if}

        <div class="we-renovating">
            <div class="caption-section__service">[[%word_19? &namespace=`langs`]]</div>

            <div id="pdopage">
                <div class="present-brands__content row rows">
                    {'!pdoPage' | snippet : [
                    'parents' => '150',
                    'limit' => '8',
                    'includeTVs' => 'icon',
                    'toPlaceholder' => 'result',
                    'ajaxMode' => 'button',
                    'ajaxElemWrapper' => '#pdopage'
                    'ajaxElemRows' => '#pdopage .rows'
                    'ajaxElemPagination' => '#pdopage .pagination'
                    'tpl' => '@INLINE <div class="col-lg-3 col-md-4 col-6"><a href="[[+uri]]" class="item"><img src="[[+tv.icon]]" alt="[[+pagetitle]]"></a></div>'
                    'ajaxTplMore' => '@INLINE <div class="view-all__wrap"><button class="btn-view-all btn-more">Смотреть ещё</button></div>'
                    ]}
                    {'result' | placeholder}
                </div>
                {'page.nav' | placeholder}
            </div>
        </div>
    </div>

    {include 'file:includes/form-service.tpl'}

    {set $faq = $_modx->resource.id | resource : 'faq' | fromJSON}
    {if $faq}
    <div class="faq__section">
        <div class="container">
            <div class="caption-section__service">[[%word_26? &namespace=`langs`]]</div>

            <div class="faq__contents">
                {foreach $faq as $item}
                <div class="faq_row">
                    <div class="faq_caption">
                        <span>{$item['question']}</span>
                    </div>
                    <div class="faq_answer">
                        <div class="text">{$item['answer']}</div></div>
                </div>
                {/foreach}
            </div>

            [[-<div class="view-all__wrap"><button class="btn-view-all">Больше вопросов</button></div>-]]
        </div>
    </div>
    {/if}

    {include 'file:includes/reviews-slider.tpl'}

    <div class="section__page-content">
        <div class="container">
            [[*content]]
        </div>
    </div>
</div>
{/block}