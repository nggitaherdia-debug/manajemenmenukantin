<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('menus', function (Blueprint $table) {
            foreach (['nama', 'kategori', 'status'] as $column) {
                if (Schema::hasColumn('menus', $column)) {
                    $table->dropColumn($column);
                }
            }
        });
    }

    public function down(): void
    {
        Schema::table('menus', function (Blueprint $table) {
            if (! Schema::hasColumn('menus', 'nama')) {
                $table->string('nama')->nullable();
            }

            if (! Schema::hasColumn('menus', 'kategori')) {
                $table->string('kategori')->nullable();
            }

            if (! Schema::hasColumn('menus', 'status')) {
                $table->string('status')->nullable();
            }
        });
    }
};
