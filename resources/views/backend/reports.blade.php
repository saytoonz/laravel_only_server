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
                                <h4 class="box-title">User Reports</h4>
                            </div>
                            <div class="card-body--">
                                <div class="table-stats order-table ov-h">
                                    <table class="table ">
                                        <thead>
                                            <tr>
                                                <th class="serial">#</th>
                                                <th class="avatar">Reporter</th>
                                                <th class="avatar">Reported</th>
                                                <th>Report</th>
                                                <th>Date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($reports as $key=>$item)
                                            <tr>
                                                <td class="serial">{{$key+1}}.</td>
                                                <td> <span class="name">{{ $item->reporter->first_name}} {{ $item->reporter->last_name }}</span> </td>
                                                <td> <span class="name">{{ $item->reported->first_name}} {{ $item->reported->last_name }}</span> </td>
                                                <td> <span class="name">{{ $item->report}}</span> </td>
                                                <td><span class="">{{ $item->created_at }}</span></td>
                                                <td>
                                                    <span class="badge badge-complete">Ignore</span>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    <div class="col-12 d-flex justify-content-end pt-4" class="li: { list-style: none; }">
                                        {{ $reports->links("pagination::bootstrap-4") }}
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
