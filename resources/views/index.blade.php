@extends('min_dashboard')

@section('UserDach')
    <div class="tab-pane fade active show" id="dashboard" role="tabpanel" aria-labelledby="dashboard-tab">
        <div class="card">
            <div class="card-header">
                <h3 class="mb-0">Hello {{$userData->name}}!</h3>
                <br>
                <img src="{{!empty($userData->photo)?url('upload/user_images/'.$userData->photo):url('upload/default.jpg')}}" alt="photo" class="showImage" id="showImage" style="width: 100px ; height:100px;">

            </div>
            
        </div>
    </div>
@endsection
                            