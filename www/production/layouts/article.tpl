{extends "file:layouts/layout.tpl"}
{block 'content'}

<div class="service__page">
    <div class="container">
        <h1 class="service__h1">[[*pagetitle]]</h1>

        <div class="article-page__wrap">
            <div class="article__sidebar__col article__col">
                <div class="article__sidebar article__col">
                    <div class="image-article-in-sidebar">
                        <img src="[[*foto_article]]" alt="[[*pagetitle]]">
                    </div>
                    <div class="caption">[[%word_46? &namespace=`langs`]]</div>
                    <ul class="ul-sidebar-list">

                    </ul>
                </div>
            </div>
            <div class="article__content__col article__col">
                <div class="article__main-image">
                    <img src="[[*foto_article]]" alt="[[*pagetitle]]">
                </div>
                <div class="article__info">
                    <div class="author__name">[[%word_40? &namespace=`langs`]]</div>
                    <div class="article__date">- [[*publishedon:date=`%b %d, %Y`]]</div>
                    <div class="article__comments">[[%word_47? &namespace=`langs`]] (<span id="count-comments">0</span>)</div>
                </div>
                <div class="article__content" id="content-article-page">
                    [[*content]]
                </div>

                <div class="article__section-comments" id="comments">
                    [[+comments]]
                    <div class="article__form-comment">
                        [[+comments_form]]

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{/block}