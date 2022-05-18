@extends('backend.master')
@section('content')
    <div class="content">
        <div class="col-12 d-flex justify-content-center pt-4" class="li: { list-style: none; }">
            <div class="col-lg-8">

                <div class="card">
                    <div class="card-header">
                        <button class="btn-danger btn" type="button"  onclick="updateAlert('{{ $verification->id }}', 'verified', 'status', 'Rejected')">
                            Reject Verification
                        </button>
                        <button class="btn-primary btn float-right" type="button"  onclick="updateAlert('{{ $verification->id }}', 'verified', 'status', 'Verified')">
                            Verify User
                        </button>
                        <a href="{{ url('view-user') }}/{{ $user->id }}"><button class="btn-default btn float-right"
                                type="submit">View User</button></a>
                    </div>
                    <div class="card-body">
                        <div class="default-tab">
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home"
                                        role="tab" aria-controls="nav-home" aria-selected="true">Verification Image</a>
                                    <a class="nav-item nav-link" id="nav-photo-1" data-toggle="tab" href="#photo-one-id"
                                        role="tab" aria-controls="photo-one-id" aria-selected="false">Photo 1</a>
                                    <a class="nav-item nav-link" id="nav-photo-2" data-toggle="tab" href="#photo-two-id"
                                        role="tab" aria-controls="photo-two-id" aria-selected="false">Photo 2</a>
                                    <a class="nav-item nav-link" id="nav-photo-3" data-toggle="tab" href="#photo-three-id"
                                        role="tab" aria-controls="photo-three-id" aria-selected="false">Photo 3</a>
                                    <a class="nav-item nav-link" id="nav-photo-4" data-toggle="tab" href="#photo-four-id"
                                        role="tab" aria-controls="photo-four-id" aria-selected="false">Photo 4</a>
                                    <a class="nav-item nav-link" id="nav-photo-5" data-toggle="tab" href="#photo-five-id"
                                        role="tab" aria-controls="photo-five-id" aria-selected="false">Photo 5</a>
                                    <a class="nav-item nav-link" id="nav-photo-6" data-toggle="tab" href="#photo-six-id"
                                        role="tab" aria-controls="photo-six-id" aria-selected="false">Photo 6</a>
                                </div>
                            </nav>
                            <div class="tab-content pl-3 pt-2" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                                    aria-labelledby="nav-home-tab">
                                    <img src="{{ $verification->image }}" alt="" srcset="">
                                </div>
                                <div class="tab-pane fade" id="photo-one-id" role="tabpanel" aria-labelledby="nav-photo-1">
                                    <img src="{{ $user->userMedia->photo_1 }}" alt="" srcset="">
                                </div>
                                <div class="tab-pane fade" id="photo-two-id" role="tabpanel" aria-labelledby="nav-photo-2">
                                    <img src="{{ $user->userMedia->photo_2 }}" alt="" srcset="">
                                </div>

                                <div class="tab-pane fade" id="photo-three-id" role="tabpanel"
                                    aria-labelledby="nav-photo-3">
                                    <img src="{{ $user->userMedia->photo_3 }}" alt="" srcset="">
                                </div>

                                <div class="tab-pane fade" id="photo-four-id" role="tabpanel"
                                    aria-labelledby="nav-photo-4">
                                    <img src="{{ $user->userMedia->photo_4 }}" alt="" srcset="">
                                </div>

                                <div class="tab-pane fade" id="photo-five-id" role="tabpanel"
                                    aria-labelledby="nav-photo-5">
                                    <img src="{{ $user->userMedia->photo_5 }}" alt="" srcset="">
                                </div>


                                <div class="tab-pane fade" id="photo-six-id" role="tabpanel" aria-labelledby="nav-photo-6">
                                    <img src="{{ $user->userMedia->photo_6 }}" alt="" srcset="">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

