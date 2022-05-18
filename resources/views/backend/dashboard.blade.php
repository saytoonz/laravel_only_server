@extends('backend.master')
@section('content')
    <!-- Content -->
    <div class="content">
        <!-- Animated -->
        <div class="animated fadeIn">
            <!-- Widgets  -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-1">
                                    <i class="pe-7s-id"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span
                                                class="count">{{ $appUsersThisMonth }}</span></div>
                                        <div class="stat-heading">New Users</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-1">
                                    <i class="pe-7s-users"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span
                                                class="count">{{ $totalAppUsers }}</span></div>
                                        <div class="stat-heading">All Users</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-1">
                                    <i class="pe-7s-link"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span class="count">{{ $matches }}</span>
                                        </div>
                                        <div class="stat-heading">Matches</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-1">
                                    <i class="pe-7s-like"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span class="count">{{ $userLikes }}</span>
                                        </div>
                                        <div class="stat-heading">Likes</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Widgets -->
            <!--  Traffic  -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="box-title">Traffic </h4>
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <!-- <canvas id="TrafficChart"></canvas>   -->
                                    <div id="traffic-chart" class="traffic-chart"></div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card-body">
                                    @foreach ($countries as $key => $item)
                                    <div class="progress-box progress-1">
                                        <h4 class="por-title">{{ $item->country }}</h4>
                                        <div class="por-txt">{{ $item->counts }} Users ({{ rand(($item->counts / $totalAppUsers) * 100, 2) }}%)</div>
                                        <div class="progress mb-2" style="height: 5px;">
                                            <div class="progress-bar bg-flat-color-1" role="progressbar" style="width: {{ rand(($item->counts / $totalAppUsers) * 100, 2) }}%;"
                                                aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                    @endforeach

                                    {{-- <div class="progress-box progress-2">
                                        <h4 class="por-title">Bounce Rate</h4>
                                        <div class="por-txt">3,220 Users (24%)</div>
                                        <div class="progress mb-2" style="height: 5px;">
                                            <div class="progress-bar bg-flat-color-2" role="progressbar" style="width: 24%;"
                                                aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                    <div class="progress-box progress-2">
                                        <h4 class="por-title">Unique Visitors</h4>
                                        <div class="por-txt">29,658 Users (60%)</div>
                                        <div class="progress mb-2" style="height: 5px;">
                                            <div class="progress-bar bg-flat-color-3" role="progressbar" style="width: 60%;"
                                                aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                    <div class="progress-box progress-2">
                                        <h4 class="por-title">Targeted Visitors</h4>
                                        <div class="por-txt">99,658 Users (90%)</div>
                                        <div class="progress mb-2" style="height: 5px;">
                                            <div class="progress-bar bg-flat-color-4" role="progressbar" style="width: 90%;"
                                                aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div> --}}
                                </div> <!-- /.card-body -->
                            </div>
                        </div> <!-- /.row -->
                        <div class="card-body"></div>
                    </div>
                </div><!-- /# column -->
            </div>
            <!--  /Traffic -->
            <div class="clearfix"></div>
            <!-- Orders -->
            <div class="orders">
                <div class="row">
                    <div class="col-xl-8">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="box-title">New Verifications</h4>
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
                                                <td><span class="">{{ $item->created_at }}</span></td>
                                                <td>
                                                    <a href="{{url("verify-user")}}/{{$item->uid}}">
                                                        <span class="badge badge-complete">View</span>
                                                    </a>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div> <!-- /.table-stats -->
                            </div>
                        </div> <!-- /.card -->
                    </div> <!-- /.col-lg-8 -->

                    <div class="col-xl-4">
                        <div class="row">
                            <div class="col-lg-6 col-xl-12">
                                <div class="card br-0">
                                    <div class="card-body">
                                        <div class="chart-container ov-h">
                                            <div id="flotPie1" class="float-chart"></div>
                                        </div>
                                    </div>
                                </div><!-- /.card -->
                            </div>

                        </div>
                    </div> <!-- /.col-md-4 -->
                </div>
            </div>
            <!-- /.orders -->

        </div>
        <!-- .animated -->
    </div>
    <!-- /.content -->
@endsection
@section('script')

// Pie chart flotPie1
var piedata = [
    { label: "Verified Users", data: [[1,{{ $verifiedSize }}]], color: '#5c6bc0'},
    { label: "Unverified Users", data: [[1, {{ $totalAppUsers - $verifiedSize }}]], color: '#ef5350'},
];

$.plot('#flotPie1', piedata, {
    series: {
        pie: {
            show: true,
            radius: 1,
            innerRadius: 0.65,
            label: {
                show: true,
                radius: 2/3,
                threshold: 1
            },
            stroke: {
                width: 0
            }
        }
    },
    grid: {
        hoverable: true,
        clickable: true
    }
});
// Pie chart flotPie1  End

    // Traffic Chart using chartist
    if ($('#traffic-chart').length) {
    var chart = new Chartist.Line('#traffic-chart', {
    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
    series: [
        [
            @foreach ($usersList as $key => $data)
                {{ $data }},
            @endforeach
        ],
        [
            @foreach ($matchesList as $key => $data)
                {{ $data }},
            @endforeach
        ],
        [
            @foreach ($likesList as $key => $data)
                {{ $data }},
            @endforeach
        ],
    ]
    }, {
    low: 0,
    showArea: true,
    showLine: false,
    showPoint: false,
    fullWidth: true,
    axisX: {
    showGrid: true
    }
    });

    chart.on('draw', function(data) {
    if(data.type === 'line' || data.type === 'area') {
    data.element.animate({
    d: {
    begin: 2000 * data.index,
    dur: 2000,
    from: data.path.clone().scale(1, 0).translate(0, data.chartRect.height()).stringify(),
    to: data.path.clone().stringify(),
    easing: Chartist.Svg.Easing.easeOutQuint
    }
    });
    }
    });
    }
    // Traffic Chart using chartist End
@endsection
