@extends('backend.master')
@section('content')
    <div class="content">
        <div class="animated fadeIn">

            <div class="row">

                <div class="col-xs-6 col-sm-6">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Send Push to a user</strong>
                        </div>
                        <div class="card-body">
                            <select data-placeholder="Choose a user..." class="standardSelect" tabindex="1">
                                <option value="" label="default"></option>
                                @foreach ($users as $item)
                                    <option value="{{ $item->id }}">
                                        {{ $item->first_name }} {{ $item->last_name }}
                                    </option>
                                @endforeach
                            </select>

                            <div class="card-body">
                                <textarea name="message" id="messageUser" cols="30" rows="10" style="width: 100%"></textarea>
                                <br>
                               <span style="font-size: 13px;"> Note: All "${username}" would be replaced with the user's first name</span>
                            </div>
                            <div class="card-body">
                                <button type="button" class="btn btn-primary">Send</button>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-xs-6 col-sm-6">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Send Push to Countries</strong>
                        </div>
                        <div class="card-body">
                            <select data-placeholder="Choose a countries..." multiple class="standardSelect">
                                <option value="" label="default"></option>
                                @foreach ($countries as $item)
                                    <option value="{{ $item->country }}"> {{ $item->country }} ({{ $item->counts }})
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="card-body">
                            <textarea name="message" id="messageCountry" cols="30" rows="10" style="width: 100%"></textarea>
                            <br>
                               <span style="font-size: 13px;"> Note: All "${username}" would be replaced with the user's first name</span>
                        </div>

                        <div class="card-body">
                            <button type="button" style="float: right;" class="btn btn-danger">Send</button>
                        </div>
                    </div>
                </div>



            </div>


        </div><!-- .animated -->
    </div>
@endsection
