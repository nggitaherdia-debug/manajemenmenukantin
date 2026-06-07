@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')
    <div class="topbar">
        <div>
            <h1>Dashboard</h1>
            <p class="subtitle">Penjual: {{ auth()->user()->name }}. Ringkasan data menu milik akun ini.</p>
        </div>
        <div class="actions">
            <a class="btn btn-primary" href="{{ route('menu.create') }}">Tambah Menu</a>
        </div>
    </div>

    <section class="grid stats">
        <div class="card">
            <div class="label">Total Menu</div>
            <div class="value">{{ $totalMenu }}</div>
        </div>
        <div class="card">
            <div class="label">Tersedia</div>
            <div class="value">{{ $tersedia }}</div>
        </div>
        <div class="card">
            <div class="label">Habis</div>
            <div class="value">{{ $habis }}</div>
        </div>
        <div class="card">
            <div class="label">Total Stok</div>
            <div class="value">{{ $totalStok }}</div>
        </div>
    </section>

    <section class="panel">
        <div class="panel-head">
            <strong>Menu Terbaru</strong>
            <a class="btn btn-light" href="{{ route('menu.index') }}">Lihat Semua</a>
        </div>
        <div class="table-wrap">
            <table>
                <thead>
                    <tr>
                        <th>Nama</th>
                        <th>Kategori</th>
                        <th>Harga</th>
                        <th>Stok</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($menuTerbaru as $menu)
                        <tr>
                            <td>{{ $menu->nama_menu }}</td>
                            <td>{{ $menu->kategori_menu }}</td>
                            <td>Rp {{ number_format($menu->harga, 0, ',', '.') }}</td>
                            <td>{{ $menu->stok }}</td>
                            <td>
                                <span class="badge {{ $menu->status_menu === 'Tersedia' ? 'badge-ok' : 'badge-empty' }}">
                                    {{ $menu->status_menu }}
                                </span>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="5" class="empty">Belum ada menu. Klik Tambah Menu untuk mulai mengisi.</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </section>
@endsection
