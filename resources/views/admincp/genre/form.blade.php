@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-9">
            <div class="card">
                <div class="card-header">Quản lý thể loại</div>



                @if(!isset($genre))
                {!! Form::open(['method' => 'POST', 'route' => 'genre.store', 'class' => 'form-horizontal']) !!}
                @else
                {!! Form::open(['method' => 'PUT', 'route' => ['genre.update',$genre->id], 'class' =>
                'form-horizontal']) !!}
                @endif
                <div class="form-group">
                    {!! Form::label('title', 'Tiêu đề', []) !!}
                    {!! Form::text('title', isset($genre) ? $genre->title : '', ['class' => 'form-control',
                    'placeholder' => 'Nhâp tên','id'=> 'slug', 'onkeyup'=> 'ChangeToSlug()']) !!}
                </div>
                <div class="form-group">
                    {!! Form::label('slug', 'slug', []) !!}
                    {!! Form::text('slug', isset($genre) ? $genre->slug : '', ['class' => 'form-control', 'id'=>
                    'convert_slug']) !!}
                </div>
                <div class="form-group">
                    {!! Form::label('des', 'Mô tả', []) !!}
                    {!! Form::textarea('des', isset($genre) ? $genre->des : '', ['class' => 'form-control',
                    'placeholder' => 'Mô tả']) !!}
                </div>
                <div class="form-group">
                    {!! Form::label('staus', 'Trạng Thái', []) !!}
                    {!! Form::select('status',['1'=> 'Hiện thị', '0'=> 'Không hiện thị'], isset($genre) ? $genre->status
                    : '', ['class' => 'form-control']) !!}

                </div>
                @if(!isset($genre))
                {!! Form::submit('Thêm', ['class' => 'btn btn-success',]) !!}
                @else
                {!! Form::submit('Cập nhập', ['class' => 'btn btn-success',]) !!}
                @endif
                {!! Form::close() !!}



                <table class="table">
                    <thead>
                        <tr>

                            <th scope="col">STT</th>
                            <th scope="col">Tiêu đề</th>
                            <th scope="col">Mô tả</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col">Hành động</th>


                        </tr>
                    </thead>
                    <tbody>
                        @foreach($list as $key => $cate)
                        <tr>

                            <td>{{$key}}</td>
                            <td>{{$cate->title}}</td>
                            <td>{{$cate->des}}</td>

                            @if($cate->status == 1)
                            <td>Hiện thị</td>
                            @else
                            <td>Không hiện thị</td>
                            @endif
                            <td>
                                {!! Form::open(['method' => 'DELETE', 'route' =>
                                ['genre.destroy',$cate->id],'onsubmit'=>'return confirm("Xóa hay không")']) !!}
                                <div class="btn-group pull-right">
                                    {!! Form::submit('Xóa', ['class' => 'btn btn-danger']) !!}
                                </div>
                                {!! Form::close() !!}
                                <a href="{{route('genre.edit',$cate->id)}}" class="btn btn-warning">Sửa</a>
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