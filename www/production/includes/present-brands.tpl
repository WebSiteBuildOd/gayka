<div class="present-brands">
    <div class="container">
        <div class="caption-section">[[%word_6? &namespace=`langs`]]</div>

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