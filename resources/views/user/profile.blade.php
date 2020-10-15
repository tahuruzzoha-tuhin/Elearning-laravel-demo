@extends('layouts.users')


@section('content')


<div class="row clearfix">
    <div class="col-md-10 offset-md-1">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary"> Profile</h6>
                </div>
                <div class="card-body">

                    {!! Form::model($user, array('url' => 'users/profile', 'method' => 'PUT', 'files'=>true)) !!}

                       
                        <div class="form-group ">
                            <label for="name">Your name : </label>
                            {!! Form::text('name', NULL, ['class' => 'form-control', 'placeholder' => 'name']) !!}
                            @if($errors->has('name')) 
                                <small class="text-danger"> {{ $errors->first('name') }} </small>
                            @endif
                        </div>
                         <div class="form-group ">
                            <label for="dob">Date of Birth </label>
                            {!! Form::text('dob', NULL, ['class' => 'form-control', 'placeholder' => 'DD/MM/YY']) !!}
                            @if($errors->has('dob')) 
                                <small class="text-danger"> {{ $errors->first('dob') }} </small>
                            @endif
                        </div>
                         <div class="form-group ">
                            <label for="name">Phone : </label>
                            {!! Form::text('name', NULL, ['class' => 'form-control', 'placeholder' => 'name']) !!}
                            @if($errors->has('name')) 
                                <small class="text-danger"> {{ $errors->first('name') }} </small>
                            @endif
                        </div>
                         <div class="form-group ">
                            <label for="name">Your name : </label>
                            {!! Form::text('name', NULL, ['class' => 'form-control', 'placeholder' => 'name']) !!}
                            @if($errors->has('name')) 
                                <small class="text-danger"> {{ $errors->first('name') }} </small>
                            @endif
                        </div>
                        
                
                        <button type="submit" class="btn btn-primary float-right">Submit</button>
                    

                    {!! Form::close() !!}    

                </div>
            </div>
    </div>
</div>


@endsection