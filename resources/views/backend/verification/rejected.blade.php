@extends('backend.master')
@section('content')
    <!-- Content -->
    <div class="content">
        <!-- Animated -->
        <div class="animated fadeIn">
            <!-- Orders -->
            <div class="orders">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="box-title">Verified Users</h4>
                            </div>
                            <div class="card-body--">
                                <div class="table-stats order-table ov-h">
                                    <table class="table ">
                                        <thead>
                                            <tr>
                                                <th class="serial">#</th>
                                                <th class="avatar">Avatar</th>
                                                <th class="avatar">Verif. Image</th>
                                                <th>Name</th>
                                                <th>Date Joined</th>
                                                <th>Date Verified</th>
                                                <th>Requested At</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($verified as $key=>$item)
                                            <tr>
                                                <td class="serial">{{$key+1}}.</td>
                                                <td class="avatar">
                                                    <div class="round-img">
                                                            <img class="rounded-circle" src="{{$item->userMedia->photo_1}}" alt="" height="50px" width="50px">
                                                    </div>
                                                </td>
                                                <td class="avatar">
                                                    <div class="round-img">
                                                       <img class="rounded-circle" src="{{$item->image}}" alt=""  height="50px" width="50px">
                                                    </div>
                                                </td>
                                                <td> <span class="name">{{ $item->theUser->first_name}} {{ $item->theUser->last_name }}</span> </td>
                                                <td><span class="">{{ $item->theUser->created_at }}</span></td>
                                                <td><span class="">{{ $item->date_verified }}</span></td>
                                                <td><span class="">{{ $item->created_at }}</span></td>
                                                <td>
                                                    <a href="{{url("verify-user")}}/{{$item->uid}}">
                                                        <span class="badge badge-complete">Verify</span>
                                                    </a>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    <div class="col-12 d-flex justify-content-end pt-4" class="li: { list-style: none; }">
                                        {{ $verified->links("pagination::bootstrap-4") }}
                                    </div>
                                </div> <!-- /.table-stats -->
                            </div>
                        </div> <!-- /.card -->
                    </div>
                </div>
            </div>
            <!-- /.orders -->

        </div>
        <!-- .animated -->
    </div>
    <!-- /.content -->
@endsection
