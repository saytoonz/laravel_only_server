@extends('backend.master')
@section('content')
    <div class="content">
        <div class="animated fadeIn">

            <div class="row">

                <div class="col-xs-6 col-sm-6">

                    @if (Session::has('message'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <button class="close" type="button" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        {{ Session('message') }}
                    </div>
                    @endif


                    @if (Session::has('error'))
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button class="close" type="button" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        {{ Session('error') }}
                    </div>
                    @endif

                    <form action="{{url('send-push-user')}}" method="POST">
                    {{ csrf_field() }}
                    <input type="hidden" name="tbl" value="{{ encrypt('user_push') }}">

                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Send Push to a user</strong>
                        </div>
                        <div class="card-body">
                            <select data-placeholder="Choose a user..." class="standardSelect" tabindex="1" name="user_id">
                                <option value="" label="default"></option>
                                @foreach ($users as $item)
                                    <option value="{{ $item->id }}">
                                        {{ $item->first_name }} {{ $item->last_name }}
                                    </option>
                                @endforeach
                            </select>

                            <div class="card-body">
                                <input type="text" id="title" placeholder="Title *" name="title" class="form-control">
                            </div>

                            <div class="card-body">
                                <textarea name="notification" cols="30" rows="10" style="width: 100%" placeholder="Message *"></textarea>
                                <br>
                                <span style="font-size: 13px;"> Note: All "{username}" would be replaced with the user's
                                    first name</span>
                            </div>
                            <div class="card-body">
                                <button type="submit" class="btn btn-primary">Send</button>
                            </div>
                        </div>
                    </div>

                    </form>
                </div>


                <div class="col-xs-6 col-sm-6">
                    @if (Session::has('message-2'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <button class="close" type="button" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        {{ Session('message-2') }}
                    </div>
                    @endif


                    @if (Session::has('error-2'))
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button class="close" type="button" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        {{ Session('error-2') }}
                    </div>
                    @endif

                    <form action="{{url('country-push-user')}}" method="POST">
                    {{ csrf_field() }}
                        <input type="hidden" name="tbl" value="{{ encrypt('country_push') }}">

                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Send Push to Countries</strong>
                            </div>
                            <div class="card-body">
                                <select data-placeholder="Choose a countries..."  class="standardSelect" name="country">
                                    <option value="" label="default"></option>
                                    @foreach ($countries as $item)
                                        <option value="{{ $item->country }}"> {{ $item->country }} ({{ $item->counts }})
                                        </option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="card-body">
                                <input type="text" id="title" placeholder="Title *" name="title" class="form-control">
                            </div>

                            <div class="card-body">
                                <textarea id="messageCountry" cols="30" rows="10" style="width: 100%" name="notification"></textarea>
                                <br>
                                <span style="font-size: 13px;"> Note: All "{username}" would be replaced with the user's first
                                    name</span>
                            </div>

                            <div class="card-body">
                                <button type="submit" style="float: right;" class="btn btn-danger">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
