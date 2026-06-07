<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('menus', function (Blueprint $table) {
            if (! Schema::hasColumn('menus', 'user_id')) {
                $table->foreignId('user_id')->nullable()->after('id')->constrained()->cascadeOnDelete();
            }

            if (! Schema::hasColumn('menus', 'nama_menu')) {
                $table->string('nama_menu', 100)->nullable()->after('user_id');
            }

            if (! Schema::hasColumn('menus', 'kategori_menu')) {
                $table->string('kategori_menu', 50)->nullable()->after('nama_menu');
            }

            if (! Schema::hasColumn('menus', 'status_menu')) {
                $table->string('status_menu', 50)->nullable()->after('stok');
            }

            if (! Schema::hasColumn('menus', 'tanggal_input')) {
                $table->date('tanggal_input')->nullable()->after('deskripsi');
            }
        });

        if (Schema::hasColumn('menus', 'nama')) {
            DB::table('menus')->whereNull('nama_menu')->update(['nama_menu' => DB::raw('nama')]);
        }

        if (Schema::hasColumn('menus', 'kategori')) {
            DB::table('menus')->whereNull('kategori_menu')->update(['kategori_menu' => DB::raw('kategori')]);
        }

        if (Schema::hasColumn('menus', 'status')) {
            DB::table('menus')->whereNull('status_menu')->update(['status_menu' => DB::raw('status')]);
        }

        DB::table('menus')->whereNull('tanggal_input')->update(['tanggal_input' => now()->toDateString()]);
    }

    public function down(): void
    {
        Schema::table('menus', function (Blueprint $table) {
            foreach (['tanggal_input', 'status_menu', 'kategori_menu', 'nama_menu', 'user_id'] as $column) {
                if (Schema::hasColumn('menus', $column)) {
                    $table->dropColumn($column);
                }
            }
        });
    }
};
