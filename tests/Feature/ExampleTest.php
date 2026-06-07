<?php

namespace Tests\Feature;

use App\Models\Menu;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    use RefreshDatabase;

    /**
     * A basic test example.
     */
    public function test_the_application_redirects_guests_to_login(): void
    {
        $response = $this->get('/');

        $response->assertRedirect(route('login'));
    }

    public function test_logged_in_user_only_sees_their_own_menus(): void
    {
        $userA = User::factory()->create();
        $userB = User::factory()->create();

        Menu::create($this->menuData($userA->id, 'Nasi Goreng'));
        Menu::create($this->menuData($userB->id, 'Es Teh'));

        $response = $this->actingAs($userA)->get(route('menu.index'));

        $response->assertOk();
        $response->assertSee('Nasi Goreng');
        $response->assertDontSee('Es Teh');
    }

    public function test_user_cannot_edit_another_users_menu(): void
    {
        $userA = User::factory()->create();
        $userB = User::factory()->create();
        $menuB = Menu::create($this->menuData($userB->id, 'Mie Ayam'));

        $response = $this->actingAs($userA)->get(route('menu.edit', $menuB));

        $response->assertNotFound();
    }

    public function test_logged_in_user_can_create_menu(): void
    {
        $user = User::factory()->create();

        $response = $this->actingAs($user)->post(route('menu.store'), [
            'nama_menu' => 'Bakso',
            'kategori_menu' => 'Makanan',
            'harga' => 12000,
            'stok' => 8,
            'status_menu' => 'Tersedia',
            'deskripsi' => 'Bakso kuah',
            'tanggal_input' => now()->toDateString(),
        ]);

        $response->assertRedirect(route('menu.index'));
        $this->assertDatabaseHas('menus', [
            'user_id' => $user->id,
            'nama_menu' => 'Bakso',
        ]);
    }


    private function menuData(int $userId, string $namaMenu): array
    {
        return [
            'user_id' => $userId,
            'nama_menu' => $namaMenu,
            'kategori_menu' => 'Makanan',
            'harga' => 10000,
            'stok' => 5,
            'status_menu' => 'Tersedia',
            'deskripsi' => 'Menu testing',
            'tanggal_input' => now()->toDateString(),
        ];
    }
}
