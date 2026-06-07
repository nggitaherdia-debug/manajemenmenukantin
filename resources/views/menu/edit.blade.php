@extends('layouts.app')

@section('title', 'Edit Menu')

@section('content')
    <div class="topbar">
        <div>
            <h1>Edit Menu</h1>
            <p class="subtitle">Perbarui data {{ $menu->nama_menu }}.</p>
        </div>
        <a class="btn btn-light" href="{{ route('menu.index') }}">Kembali</a>
    </div>

    <section class="panel">
        <div class="panel-body">
            <form action="{{ route('menu.update', $menu) }}" method="POST">
                @csrf
                @method('PUT')
                @include('menu.partials.form', ['menu' => $menu, 'button' => 'Update Menu'])
            </form>
        </div>
    </section>
@endsection
