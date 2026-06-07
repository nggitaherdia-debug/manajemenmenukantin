<div class="form-grid">
    <div class="field">
        <label for="nama_menu">Nama Menu</label>
        <input id="nama_menu" name="nama_menu" type="text" value="{{ old('nama_menu', $menu?->nama_menu) }}" required>
        @error('nama_menu') <div class="error">{{ $message }}</div> @enderror
    </div>

    <div class="field">
        <label for="kategori_menu">Kategori Menu</label>
        <select id="kategori_menu" name="kategori_menu" required>
            @foreach (['Makanan', 'Minuman', 'Snack'] as $kategori)
                <option value="{{ $kategori }}" @selected(old('kategori_menu', $menu?->kategori_menu ?? 'Makanan') === $kategori)>
                    {{ $kategori }}
                </option>
            @endforeach
        </select>
        @error('kategori_menu') <div class="error">{{ $message }}</div> @enderror
    </div>

    <div class="field">
        <label for="harga">Harga</label>
        <input id="harga" name="harga" type="number" min="0" value="{{ old('harga', $menu?->harga ?? 0) }}" required>
        @error('harga') <div class="error">{{ $message }}</div> @enderror
    </div>

    <div class="field">
        <label for="stok">Stok</label>
        <input id="stok" name="stok" type="number" min="0" value="{{ old('stok', $menu?->stok ?? 0) }}" required>
        @error('stok') <div class="error">{{ $message }}</div> @enderror
    </div>

    <div class="field">
        <label for="status_menu">Status Menu</label>
        <select id="status_menu" name="status_menu" required>
            @foreach (['Tersedia', 'Habis'] as $status)
                <option value="{{ $status }}" @selected(old('status_menu', $menu?->status_menu ?? 'Tersedia') === $status)>
                    {{ $status }}
                </option>
            @endforeach
        </select>
        @error('status_menu') <div class="error">{{ $message }}</div> @enderror
    </div>

    <div class="field">
        <label for="tanggal_input">Tanggal Input</label>
        <input id="tanggal_input" name="tanggal_input" type="date" value="{{ old('tanggal_input', optional($menu?->tanggal_input)->format('Y-m-d') ?? now()->toDateString()) }}" required>
        @error('tanggal_input') <div class="error">{{ $message }}</div> @enderror
    </div>

    <div class="field full">
        <label for="deskripsi">Deskripsi</label>
        <textarea id="deskripsi" name="deskripsi">{{ old('deskripsi', $menu?->deskripsi) }}</textarea>
        @error('deskripsi') <div class="error">{{ $message }}</div> @enderror
    </div>
</div>

<div class="actions" style="margin-top: 18px;">
    <button class="btn btn-primary" type="submit">{{ $button }}</button>
    <a class="btn btn-light" href="{{ route('menu.index') }}">Batal</a>
</div>
