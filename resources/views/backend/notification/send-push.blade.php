@extends('backend.master')
@section('content')


<div class="content">
    <div class="animated fadeIn">

        <div class="row">



            <div class="col-xs-6 col-sm-6">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Standard Select</strong>
                    </div>
                    <div class="card-body">

                      <select data-placeholder="Choose a Country..." class="standardSelect" tabindex="1">
                        <option value="" label="default"></option>
                        <option value="United States">United States</option>
                        <option value="United Kingdom">United Kingdom</option>
                        <option value="Afghanistan">Afghanistan</option>
                        <option value="Aland Islands">Aland Islands</option>
                        <option value="Albania">Albania</option>
                        <option value="Algeria">Algeria</option>
                        <option value="American Samoa">American Samoa</option>
                        <option value="Andorra">Andorra</option>
                        <option value="Angola">Angola</option>
                        <option value="Anguilla">Anguilla</option>
                        <option value="Antarctica">Antarctica</option>
                    </select>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Multi Select</strong>
                </div>
                <div class="card-body">

                  <select data-placeholder="Choose a country..." multiple class="standardSelect">
                    <option value="" label="default"></option>
                    <option value="United States">United States</option>
                    <option value="United Kingdom">United Kingdom</option>
                    <option value="Afghanistan">Afghanistan</option>
                    <option value="Aland Islands">Aland Islands</option>
                    <option value="Albania">Albania</option>
                    <option value="Algeria">Algeria</option>
                    <option value="American Samoa">American Samoa</option>
                    <option value="Andorra">Andorra</option>
                    <option value="Angola">Angola</option>
                    <option value="Anguilla">Anguilla</option>
                    <option value="Antarctica">Antarctica</option>
                </select>

            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <strong class="card-title">Multi Select with Groups</strong>
            </div>
            <div class="card-body">

              <select data-placeholder="Your Favorite Football Team" multiple class="standardSelect" tabindex="5">
                <option value="" label="default"></option>
                <optgroup label="NFC EAST">
                  <option>Dallas Cowboys</option>
                  <option>New York Giants</option>
                  <option>Philadelphia Eagles</option>
                  <option>Washington Redskins</option>
              </optgroup>
              <optgroup label="NFC NORTH">
                  <option>Chicago Bears</option>
                  <option>Detroit Lions</option>
                  <option>Green Bay Packers</option>
                  <option>Minnesota Vikings</option>
              </optgroup>
              <optgroup label="NFC SOUTH">
                  <option>Atlanta Falcons</option>
                  <option>Carolina Panthers</option>
                  <option>New Orleans Saints</option>
                  <option>Tampa Bay Buccaneers</option>
              </optgroup>
              <optgroup label="NFC WEST">
                  <option>Arizona Cardinals</option>
                  <option>St. Louis Rams</option>
                  <option>San Francisco 49ers</option>
                  <option>Seattle Seahawks</option>
              </optgroup>
              <optgroup label="AFC EAST">
                  <option>Buffalo Bills</option>
                  <option>Miami Dolphins</option>
                  <option>New England Patriots</option>
                  <option>New York Jets</option>
              </optgroup>
              <optgroup label="AFC NORTH">
                  <option>Baltimore Ravens</option>
                  <option>Cincinnati Bengals</option>
                  <option>Cleveland Browns</option>
                  <option>Pittsburgh Steelers</option>
              </optgroup>
              <optgroup label="AFC SOUTH">
                  <option>Houston Texans</option>
                  <option>Indianapolis Colts</option>
                  <option>Jacksonville Jaguars</option>
                  <option>Tennessee Titans</option>
              </optgroup>
              <optgroup label="AFC WEST">
                  <option>Denver Broncos</option>
                  <option>Kansas City Chiefs</option>
                  <option>Oakland Raiders</option>
                  <option>San Diego Chargers</option>
              </optgroup>
          </select>

      </div>
  </div>

</div>



</div>


</div><!-- .animated -->


@endsection
