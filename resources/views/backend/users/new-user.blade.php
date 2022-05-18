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
                                <h4 class="box-title">New Users</h4>
                            </div>
                            <div class="card-body--">
                                <div class="table-stats order-table ov-h">
                                    <table class="table ">
                                        <thead>
                                            <tr>
                                                <th class="serial">#</th>
                                                <th class="avatar">Avatar</th>
                                                <th>Name</th>
                                                <th>Phone</th>
                                                <th>Email</th>
                                                <th>Country</th>
                                                <th>City</th>
                                                <th>Sex</th>
                                                <th>Requested At</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($users as $key=>$item)
                                            <tr>
                                                <td class="serial">{{$key+1}}.</td>
                                                <td class="avatar">
                                                    <div class="round-img">
                                                            <img class="rounded-circle" src="{{$item->userMedia->photo_1}}" alt="" height="50px" width="50px">
                                                    </div>
                                                </td>
                                                <td> <span class="name">{{ $item->first_name}} {{ $item->last_name }}</span> </td>
                                                <td><span class="">{{ $item->phone }}</span></td>
                                                <td><span class="">{{ $item->email }}</span></td>
                                                <td><span class="">{{ $item->country }}</span></td>
                                                <td><span class="">{{ $item->city }}</span></td>
                                                <td><span class="">{{ $item->gender }}</span></td>
                                                <td><span class="">{{ $item->created_at }}</span></td>
                                                <td>
                                                    <a href="{{url("view-user")}}/{{ $item->id}}">
                                                        <span class="badge badge-complete">View</span>
                                                    </a>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    <div class="col-12 d-flex justify-content-end pt-4" class="li: { list-style: none; }">
                                        {{ $users->links("pagination::bootstrap-4") }}
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
