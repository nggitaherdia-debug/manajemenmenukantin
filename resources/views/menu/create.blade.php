@extends('layouts.app')

@section('title', 'Tambah Menu')

@section('content')
    <div class="topbar">
        <div>
            <h1>Tambah Menu</h1>
            <p class="subtitle">Isi data menu baru untuk kantin.</p>
        </div>
        <a class="btn btn-light" href="{{ route('menu.index') }}">Kembali</a>
    </div>

    <section class="panel">
        <div class="panel-body">
            <form action="{{ route('menu.store') }}" method="POST">
                @csrf
                @include('menu.partials.form', ['menu' => null, 'button' => 'Simpan Menu'])
            </form>
        </div>
    </section>
@endsection
