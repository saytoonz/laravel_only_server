@extends('backend.master')
@section('content')
    <div class="content">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="default-tab">
                                <nav>
                                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-photo-1" data-toggle="tab"
                                            href="#photo-one-id" role="tab" aria-controls="photo-one-id"
                                            aria-selected="true">Photo 1</a>
                                        <a class="nav-item nav-link" id="nav-photo-2" data-toggle="tab" href="#photo-two-id"
                                            role="tab" aria-controls="photo-two-id" aria-selected="false">Photo 2</a>
                                        <a class="nav-item nav-link" id="nav-photo-3" data-toggle="tab"
                                            href="#photo-three-id" role="tab" aria-controls="photo-three-id"
                                            aria-selected="false">Photo 3</a>
                                        <a class="nav-item nav-link" id="nav-photo-4" data-toggle="tab"
                                            href="#photo-four-id" role="tab" aria-controls="photo-four-id"
                                            aria-selected="false">Photo 4</a>
                                        <a class="nav-item nav-link" id="nav-photo-5" data-toggle="tab"
                                            href="#photo-five-id" role="tab" aria-controls="photo-five-id"
                                            aria-selected="false">Photo 5</a>
                                        <a class="nav-item nav-link" id="nav-photo-6" data-toggle="tab" href="#photo-six-id"
                                            role="tab" aria-controls="photo-six-id" aria-selected="false">Photo 6</a>
                                    </div>
                                </nav>
                                <div class="tab-content pl-3 pt-2" id="nav-tabContent">
                                    <div class="tab-pane fade show active" id="photo-one-id" role="tabpanel"
                                        aria-labelledby="nav-photo-1">
                                        <img src="{{ $userMedia->photo_1 }}" alt="" srcset="">
                                    </div>
                                    <div class="tab-pane fade" id="photo-two-id" role="tabpanel"
                                        aria-labelledby="nav-photo-2">
                                        <img src="{{ $userMedia->photo_2 }}" alt="" srcset="">
                                    </div>

                                    <div class="tab-pane fade" id="photo-three-id" role="tabpanel"
                                        aria-labelledby="nav-photo-3">
                                        <img src="{{ $userMedia->photo_3 }}" alt="" srcset="">
                                    </div>

                                    <div class="tab-pane fade" id="photo-four-id" role="tabpanel"
                                        aria-labelledby="nav-photo-4">
                                        <img src="{{ $userMedia->photo_4 }}" alt="" srcset="">
                                    </div>

                                    <div class="tab-pane fade" id="photo-five-id" role="tabpanel"
                                        aria-labelledby="nav-photo-5">
                                        <img src="{{ $userMedia->photo_5 }}" alt="" srcset="">
                                    </div>


                                    <div class="tab-pane fade" id="photo-six-id" role="tabpanel"
                                        aria-labelledby="nav-photo-6">
                                        <img src="{{ $userMedia->photo_6 }}" alt="" srcset="">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title mb-3">User</strong>
                        </div>
                        <div class="card-body">
                            <div class="mx-auto d-block">
                                {{-- <img class=" mx-auto d-block" src="{{$userMedia->photo_1}}" alt="Card image cap"> --}}
                                <h3 class="text-sm-center mt-2 mb-1" title="Name">{{ $user->first_name }}
                                    {{ $user->last_name }}</h3>
                                <div></div>
                                <div class="location text-sm-center" title="Gender"><i class="fa fa-circle"></i>
                                    {{ $user->gender }}</div>
                                <div class="location text-sm-center" title="Location"><i class="fa fa-map-marker"></i>
                                    {{ $user->city }}, {{ $user->country }}</div>
                                <div class="location text-sm-center" title="Phone number"><i class="fa fa-mobile"></i>
                                    {{ $user->phone }}</div>
                                <div class="location text-sm-center" title="Email"><i class="fa  fa-envelope"></i>
                                    {{ $user->email }}</div>
                                <div class="location text-sm-center" title="Date of Birth"><i class="fa fa-calendar"></i>
                                    {{ $user->date_of_birth }}</div>

                                    <div class="location text-sm-center" title="Verification"><i class="fa fa-thumbs-up"></i>
                                        {{ $verification->status == 'Verified' ? 'Verified' : 'Not Verified' }}</div>

                                <div class="location text-sm-center" title="User Status"><i class="fa  {{ $user->active == 'yes' ? 'fa-trash' : 'fa-times' }}"></i>
                                    {{ $user->active == 'yes' ? 'Active' : 'Blocked' }}</div>
                            </div>
                            <hr>
                            <div class="card-text text-sm-center">
                                <a href="{{url("user-matches")}}/{{ $user->id }}" title="Matches"><i class="fa fa-link pr-1"></i></a>
                                <a href="javascript:void(0)" title="{{ $user->active == 'yes' ? 'Block Account' : 'Unblock Account' }}"  onclick="updateAlert('{{ $user->id }}', 'app_users', 'active', '{{ $user->active == 'yes' ? 'no' : 'yes' }}')"><i class="fa  {{ $user->active == 'yes' ? 'fa-trash' : 'fa-times' }} pr-1"></i></a>
                                <a href="{{ url('verify-user') }}/{{ $user->id }}" title="Verification"><i class="fa fa-thumbs-up pr-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title mb-3">Work / Education / Interests</strong>
                        </div>
                        <div class="card-body">
                            <div class="mx-auto d-block">
                                <div class="location text-sm-center" title="Work role / Organization">
                                    <i class="fa fa-briefcase"></i> {{ $userAbout->work_role }},
                                    {{ $userAbout->work_organization }}
                                </div>

                                <div class="location text-sm-center" title="Education Level / School ">
                                    <i class="fa fa-building-o"></i> {{ $userAbout->edu_level }},
                                    {{ $userAbout->edu_school }}
                                </div>
                                <br>
                                @foreach (explode(':,', $userAbout->interests) as $item)
                                    <div class="location text-sm-center" title="Interests"> {{ $item }}</div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>

                @foreach ($userRecs as $key => $item)

                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title mb-3">Recommendation ({{ $key + 1 }})</strong>
                            </div>
                            <div class="card-body">
                                <div class="mx-auto d-block">
                                    <div class="location text-sm-center" title="Recommender Name">
                                        <i class="fa fa-user"></i> {{ $item->recommender_fname }},
                                        {{ $item->recommender_sname }}
                                    </div>

                                    <div class="location text-sm-center" title="Recommender Phone">
                                        <i class="fa fa-mobile"></i> {{ $item->recommender_phone }}
                                    </div>


                                    <div class="location text-sm-center" title="Recommender Email">
                                        <i class="fa fa-envelope"></i> {{ $item->recommender_email }}
                                    </div>
                                    <br>
                                    <div class="location text-sm-center"
                                        title="How Recommender Know {{ $user->first_name }}">
                                        {{ $item->how_you_know_friend }}
                                    </div>
                                    <br>
                                    <div class="location text-sm-center" title="Why {{ $user->first_name }} is Great">
                                        {{ $item->why_great }}
                                    </div>
                                    <br>


                                    <div class="location text-sm-center" title="Conversation Opener">
                                         {{ $item->conversation_open }}
                                    </div>
                                    <br>

                                    <div class="location text-sm-center" title="Conversation Opener">
                                        <audio src="{{ $item->recording_path }}">Audio</audio>
                                        <audio controls>
                                            <source src="{{ $item->recording_path }}" type="audio/ogg">
                                            <source src="{{ $item->recording_path }}" type="audio/mpeg">
                                          Your browser does not support the audio element.
                                          </audio>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach





            </div><!-- .row -->
        </div><!-- .animated -->
    </div><!-- .content -->
@endsection
