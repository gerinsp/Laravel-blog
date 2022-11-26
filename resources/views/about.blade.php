@extends('layouts.main')

@section('container')
    <h3>Halaman About</h3>
    <br>
    <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-4">
            <img src="img/poto.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title">Profil</h5>
                <h6>Nama: {{ $data['nama'] }}</h6>
                <h6>Email: {{ $data['email'] }}</h6>
            </div>
            </div>
        </div>
    </div>
@endsection