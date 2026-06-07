@extends('layouts.app')

@section('title', 'Kelola Menu')

@section('content')
    <div class="topbar">
        <div>
            <h1>Kelola Menu</h1>
            <p class="subtitle">Tambah, edit, dan hapus data menu kantin.</p>
        </div>
        <div class="actions">
            <a class="btn btn-primary" href="{{ route('menu.create') }}">Tambah Menu</a>
        </div>
    </div>

    @if (session('success'))
        <div class="alert">{{ session('success') }}</div>
    @endif

    <section class="panel">
        <div class="panel-head">
            <strong>Daftar Menu</strong>
            <a class="btn btn-light" href="{{ route('laporan') }}">Laporan</a>
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
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($menus as $menu)
                        <tr>
                            <td>
                                <strong>{{ $menu->nama_menu }}</strong>
                                @if ($menu->deskripsi)
                                    <div class="subtitle">{{ $menu->deskripsi }}</div>
                                @endif
                            </td>
                            <td>{{ $menu->kategori_menu }}</td>
                            <td>Rp {{ number_format($menu->harga, 0, ',', '.') }}</td>
                            <td>{{ $menu->stok }}</td>
                            <td>
                                <span class="badge {{ $menu->status_menu === 'Tersedia' ? 'badge-ok' : 'badge-empty' }}">
                                    {{ $menu->status_menu }}
                                </span>
                            </td>
                            <td>
                                <div class="actions">
                                    <a class="btn btn-warning" href="{{ route('menu.edit', $menu) }}">Edit</a>
                                    <form action="{{ route('menu.destroy', $menu) }}" method="POST" onsubmit="return confirm('Yakin ingin menghapus menu ini?')">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger" type="submit">Hapus</button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="6" class="empty">Belum ada data menu.</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>

        <div class="panel-body pagination">
            {{ $menus->links() }}
        </div>
    </section>
@endsection
