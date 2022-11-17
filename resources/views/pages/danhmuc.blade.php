@extends('layout')
@section('content')

<div class="row container" id="wrapper">
    <div class="halim-panel-filter">
        <div class="panel-heading">
            <div class="row">
                <div class="col-xs-6">
                    <div class="yoast_breadcrumb hidden-xs"><span><span><a href="">{{$cate_slug->title}}</a> » <span
                                    class="breadcrumb_last" aria-current="page">2022</span></span></span></div>
                </div>
            </div>
        </div>
        <div id="ajax-filter" class="panel-collapse collapse" aria-expanded="true" role="menu">
            <div class="ajax"></div>
        </div>
    </div>
    <main id="main-contents" class="col-xs-12 col-sm-12 col-md-8">
        <section>
            <div class="section-bar clearfix">
                <h1 class="section-title"><span>{{$cate_slug->title}}</span></h1>
            </div>
            <div class="halim_box">
                @foreach($movie as $key => $movie_home)
                <article class="col-md-3 col-sm-3 col-xs-6 thumb grid-item post-37606">
                    <div class="halim-item">
                        <a class="halim-thumb" href="{{route('chitiet', $movie_home->slug)}}">
                            <figure><img class="lazy img-responsive" src="{{asset('uploads/movie/'.$movie_home->img)}}"
                                    alt="BẠN CÙNG PHÒNG CỦA TÔI LÀ GUMIHO" title="BẠN CÙNG PHÒNG CỦA TÔI LÀ GUMIHO">
                            </figure>
                            @if($movie_home->resolution == 0)
                            <span class="status">HD</span>
                            @elseif($movie_home->resolution == 1)
                            <span class="status">SD</span>

                            @elseif($movie_home->resolution == 2)
                            <span class="status">HDCam</span>

                            @elseif($movie_home->resolution == 3)
                            <span class="status">FullHD</span>
                            @elseif($movie_home->resolution == 4)
                            <span class="status">Trailer</span>
                            @endif
                            <span class="episode"><i class="fa fa-play" aria-hidden="true"></i>
                                @if($movie_home->cc == 0)
                                Thuyết Minh
                                @if($movie_home->session != 0)
                                Session-{{$movie_home->session}}
                                @endif
                                @elseif($movie_home->cc == 1)
                                VietSub
                                @if($movie_home->session != 0)
                                Session-{{$movie_home->session}}
                                @endif
                                @endif
                            </span>
                            <div class="icon_overlay"></div>
                            <div class="halim-post-title-box">
                                <div class="halim-post-title ">
                                    <p class="entry-title">{{$movie_home->title}}</p>
                                    <p class="original_title">{{$movie_home->name_eng}}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </article>
                @endforeach


            </div>
            <div class="clearfix"></div>
            <div class="text-center">
                <!-- <ul class='page-numbers'>
                     <li><span aria-current="page" class="page-numbers current">1</span></li>
                    <li><a class="page-numbers" href="">2</a></li>
                    <li><a class="page-numbers" href="">3</a></li>
                    <li><span class="page-numbers dots">&hellip;</span></li>
                    <li><a class="page-numbers" href="">55</a></li>
                    <li><a class="next page-numbers" href=""><i class="hl-down-open rotate-right"></i></a></li> 

                </ul> -->
                {!! $movie->links("pagination::bootstrap-4 ")!!}
            </div>
        </section>
        <section class="related-movies">
            <div id="halim_related_movies-2xx" class="wrap-slider">
                <div class="section-bar clearfix">
                    <h3 class="section-title"><span>CÓ THỂ BẠN MUỐN XEM</span></h3>
                </div>
                <div id="halim_related_movies-2" class="owl-carousel owl-theme related-film">
                    @foreach($related as $key => $movie_hot)
                    <article class="thumb grid-item post-38498">
                        <div class="halim-item">
                            <a class="halim-thumb" href="{{route('chitiet', $movie_hot->slug)}}"
                                title="Đại Thánh Vô Song">
                                <figure><img class="lazy img-responsive"
                                        src="{{asset('uploads/movie/'.$movie_hot->img)}}" alt="Đại Thánh Vô Song"
                                        title="Đại Thánh Vô Song"></figure>
                                @if($movie_hot->resolution == 0)
                                <span class="status">HD</span>
                                @elseif($movie_hot->resolution == 1)
                                <span class="status">SD</span>

                                @elseif($movie_hot->resolution == 2)
                                <span class="status">HDCam</span>

                                @elseif($movie_hot->resolution == 3)
                                <span class="status">FullHD</span>

                                @endif
                                <span class="episode"><i class="fa fa-play" aria-hidden="true"></i>
                                    @if($movie_hot->cc == 0)
                                    Thuyết Minh
                                    @elseif($movie_hot->cc == 1)
                                    VietSub
                                    @endif
                                </span>
                                <div class="icon_overlay"></div>
                                <div class="halim-post-title-box">
                                    <div class="halim-post-title ">
                                        <p class="entry-title">{{$movie_hot->title}}</p>
                                        <p class="original_title">{{$movie_hot->name_eng}}</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </article>
                    @endforeach





                </div>
                <script>
                jQuery(document).ready(function($) {
                    var owl = $('#halim_related_movies-2');
                    owl.owlCarousel({
                        loop: true,
                        margin: 4,
                        autoplay: true,
                        autoplayTimeout: 4000,
                        autoplayHoverPause: true,
                        nav: true,
                        navText: ['<i class="hl-down-open rotate-left"></i>',
                            '<i class="hl-down-open rotate-right"></i>'
                        ],
                        responsiveClass: true,
                        responsive: {
                            0: {
                                items: 2
                            },
                            480: {
                                items: 3
                            },
                            600: {
                                items: 4
                            },
                            1000: {
                                items: 4
                            }
                        }
                    })
                });
                </script>
            </div>
        </section>
    </main>
    @include('pages.include.sidebar')
</div>


@endsection