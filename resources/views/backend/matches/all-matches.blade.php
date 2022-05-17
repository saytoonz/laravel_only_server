@extends('backend.master')
@section('content')
    <!-- Content -->
    <div class="content">
        <!-- Animated -->
        <div class="animated fadeIn">
            <div class="clearfix"></div>
            <!-- Orders -->
            <div class="orders">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="box-title">All Matches</h4>
                            </div>
                            <div class="card-body--">
                                <div class="table-stats order-table ov-h">
                                    <table class="table ">
                                        <thead>
                                            <tr>
                                                <th class="serial">#</th>
                                                <th class="avatar">User 1</th>
                                                <th class="avatar">User 2</th>
                                                <th>Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($matches as $key=>$item)
                                            <tr>
                                                <td class="serial">{{$key+1}}.</td>
                                                <td> <span class="name">{{ $item->user1->first_name}} {{ $item->user1->last_name }}</span> </td>
                                                <td> <span class="name">{{ $item->user2->first_name}} {{ $item->user2->last_name }}</span> </td>
                                                <td><span class="">{{ $item->created_at }}</span></td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    <div class="col-12 d-flex justify-content-end pt-4" class="li: { list-style: none; }">
                                        {{ $matches->links("pagination::bootstrap-4") }}
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
