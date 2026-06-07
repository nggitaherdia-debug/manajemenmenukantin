@extends('layouts.app')

@section('title', 'Laporan Menu')

@section('content')
    <div class="topbar">
        <div>
            <h1>Laporan Menu</h1>
            <p class="subtitle">Penjual: {{ auth()->user()->name }}. Dicetak pada {{ now()->format('d M Y') }}.</p>
        </div>
        <div class="actions no-print">
            <button class="btn btn-primary" type="button" onclick="window.print()">Cetak</button>
            <a class="btn btn-light" href="{{ route('menu.index') }}">Kelola Menu</a>
        </div>
    </div>

    <section class="grid stats">
        <div class="card">
            <div class="label">Total Menu</div>
            <div class="value">{{ $totalMenu }}</div>
        </div>
        <div class="card">
            <div class="label">Total Stok</div>
            <div class="value">{{ $totalStok }}</div>
        </div>
        <div class="card">
            <div class="label">Nilai Stok</div>
            <div class="value">Rp {{ number_format($totalNilai, 0, ',', '.') }}</div>
        </div>
        <div class="card">
            <div class="label">Tanggal</div>
            <div class="value" style="font-size: 22px;">{{ now()->format('d/m/Y') }}</div>
        </div>
    </section>

    <section class="panel">
        <div class="panel-head">
            <strong>Detail Menu</strong>
        </div>
        <div class="table-wrap">
            <table>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Kategori</th>
                        <th>Harga</th>
                        <th>Stok</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($menus as $menu)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $menu->nama_menu }}</td>
                            <td>{{ $menu->kategori_menu }}</td>
                            <td>Rp {{ number_format($menu->harga, 0, ',', '.') }}</td>
                            <td>{{ $menu->stok }}</td>
                            <td>{{ $menu->status_menu }}</td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="6" class="empty">Belum ada data menu untuk laporan.</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </section>
@endsection
