@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-9">
            <div class="card">
                <div class="card-header">Quản lý thể loại</div>



                @if(!isset($episode))
                {!! Form::open(['method' => 'POST','enctype' => 'multipart/form-data', 'style'=>'margin-bottom:30px;',
                'route' => 'episode.store']) !!}
                @else
                {!! Form::open(['method' => 'PUT','style'=>'margin-bottom:30px;','enctype' => 'multipart/form-data',
                'route' =>['episode.update',$episode->id], ]) !!}
                @endif
                <div class="form-group">
                    {!! Form::label('movie', 'Chọn phim', []) !!}
                    {!! Form::select('movie_id',[ '0' => 'Chọn phim', 'Phim' => $list_movie] ,
                    isset($episode) ? $episode->movie_id
                    : '', ['class' => 'form-control select-movie']) !!}

                </div>
                <div class="form-group">
                    {!! Form::label('link', 'Link phim', []) !!}
                    {!! Form::text('link', isset($episode) ? $episode->link_phim : '', ['class' => 'form-control']) !!}

                </div>
                <p>or</p>
                <div class="form-group">
                    @if (!isset($episode))
                    {!! Form::label('video', 'Upload phim', []) !!}
                    {!! Form::file('video', ['class' => 'form-control-file']) !!}
                    @elseif(isset($episode) && isset($episode->video))
                    {!! Form::label('video', 'Upload phim', []) !!}
                    {!! Form::file('video', ['class' => 'form-control-file']) !!}
                    <br>
                    <video width="400px" height="300px" controls>
                        <source src="{{asset('uploads/upload_eps/'.$episode->video)}}" type="video/mp4">
                    </video>
                    @endif
                </div>

                @if(isset($episode))
                <div class="form-group">
                    {!! Form::label('tap', 'Tập', []) !!}
                    {!! Form::text('episode', isset($episode) ? $episode->episode : '', ['class' =>
                    'form-control','readonly']) !!}

                </div>
                @else
                <div class="form-group">
                    {!! Form::label('tap', 'Tập', []) !!}
                    <select name="episode" class="form-control" id="episode">

                    </select>

                </div>
                @endif

                @if(!isset($episode))
                {!! Form::submit('Thêm', ['class' => 'btn btn-success',]) !!}
                @else
                {!! Form::submit('Cập nhập', ['class' => 'btn btn-success',]) !!}
                @endif
                {!! Form::close() !!}



                <table class="table" id="tablephim">
                    <thead>
                        <tr>

                            <th scope="col">STT</th>


                            <th scope="col">Tên phim</th>
                            <th scope="col">Hình ảnh</th>
                            <th scope="col">Link Phim</th>
                            <th scope="col">Tập</th>
                            <th scope="col">Hành động</th>



                        </tr>
                    </thead>

                    <tbody>
                        @foreach($list_episode as $key => $epi)
                        <tr>

                            <td>{{$key}}</td>
                            <td>{{$epi->movie->title}}</td>
                            <td><img style="height: 100px; width: 100px;"
                                    src="{{asset('uploads/movie/'.$epi->movie->img)}}">
                            </td>
                            <td>
                                <style>
                                .showphim iframe {
                                    width: 400px;
                                    height: 300px;
                                }
                                </style>

                                @if(isset($epi->link_phim))
                                <div class="showphim">
                                    {!!$epi->link_phim!!}
                                </div>
                                @else
                                <video width="400px" height="300px" controls>
                                    <source src="{{asset('uploads/upload_eps/'.$epi->video)}}" type="video/mp4">
                                </video>
                                @endif

                            </td>
                            <td>{{$epi->episode}}</td>
                            <td>
                                {!! Form::open(['method' => 'DELETE', 'route' =>
                                ['episode.destroy',$epi->id],'onsubmit'=>'return confirm("Xóa hay không")']) !!}
                                <div class="btn-group pull-right">
                                    {!! Form::submit('Xóa', ['class' => 'btn btn-danger']) !!}
                                </div>
                                {!! Form::close() !!}
                                <a href="{{route('episode.edit',$epi->id)}}" class="btn btn-warning">Sửa</a>
                            </td>

                        </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>
        </div>
    </div>



</div>

@endsection