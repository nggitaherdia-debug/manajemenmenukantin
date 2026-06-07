<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    public function dashboard()
    {
        $query = Menu::where('user_id', auth()->id());

        $totalMenu = (clone $query)->count();
        $tersedia = (clone $query)->where('status_menu', 'Tersedia')->count();
        $habis = (clone $query)->where('status_menu', 'Habis')->count();
        $totalStok = (clone $query)->sum('stok');
        $menuTerbaru = (clone $query)->latest()->take(5)->get();

        return view('dashboard', compact('totalMenu', 'tersedia', 'habis', 'totalStok', 'menuTerbaru'));
    }

    public function index()
    {
        $menus = Menu::where('user_id', auth()->id())->latest()->paginate(10);

        return view('menu.index', compact('menus'));
    }

    public function create()
    {
        return view('menu.create');
    }

    public function store(Request $request)
    {
        Menu::create($this->validatedMenu($request) + [
            'user_id' => auth()->id(),
        ]);

        return redirect()->route('menu.index')->with('success', 'Menu berhasil ditambahkan.');
    }

    public function edit($menu)
    {
        $menu = $this->findUserMenu($menu);

        return view('menu.edit', compact('menu'));
    }

    public function update(Request $request, $menu)
    {
        $menu = $this->findUserMenu($menu);
        $menu->update($this->validatedMenu($request));

        return redirect()->route('menu.index')->with('success', 'Menu berhasil diperbarui.');
    }

    public function destroy($menu)
    {
        $menu = $this->findUserMenu($menu);
        $menu->delete();

        return redirect()->route('menu.index')->with('success', 'Menu berhasil dihapus.');
    }

    public function laporan()
    {
        $menus = Menu::where('user_id', auth()->id())
            ->orderBy('kategori_menu')
            ->orderBy('nama_menu')
            ->get();
        $totalMenu = $menus->count();
        $totalStok = $menus->sum('stok');
        $totalNilai = $menus->sum(fn (Menu $menu) => $menu->harga * $menu->stok);

        return view('laporan.cetak', compact('menus', 'totalMenu', 'totalStok', 'totalNilai'));
    }

    private function validatedMenu(Request $request): array
    {
        return $request->validate([
            'nama_menu' => ['required', 'string', 'max:100'],
            'kategori_menu' => ['required', 'string', 'max:50'],
            'harga' => ['required', 'integer', 'min:0'],
            'stok' => ['required', 'integer', 'min:0'],
            'status_menu' => ['required', 'in:Tersedia,Habis'],
            'deskripsi' => ['nullable', 'string'],
            'tanggal_input' => ['required', 'date'],
        ]);
    }

    private function findUserMenu($id): Menu
    {
        return Menu::where('id', $id)
            ->where('user_id', auth()->id())
            ->firstOrFail();
    }
}
