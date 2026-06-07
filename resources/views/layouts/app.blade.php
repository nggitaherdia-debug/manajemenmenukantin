<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Manajemen Menu Kantin')</title>
    <style>
        :root {
            --bg: #f7f8fb;
            --panel: #ffffff;
            --ink: #1f2937;
            --muted: #64748b;
            --line: #dbe2ea;
            --primary: #0f766e;
            --primary-dark: #115e59;
            --danger: #b91c1c;
            --warning: #b45309;
        }

        * { box-sizing: border-box; }
        body {
            margin: 0;
            min-height: 100vh;
            background: var(--bg);
            color: var(--ink);
            font-family: Arial, Helvetica, sans-serif;
            line-height: 1.5;
        }
        a { color: inherit; text-decoration: none; }
        .app-shell { min-height: 100vh; display: grid; grid-template-columns: 240px 1fr; }
        .sidebar { background: #0b1f2a; color: #e5edf3; padding: 24px 18px; }
        .brand { font-size: 20px; font-weight: 700; margin-bottom: 28px; }
        .nav { display: grid; gap: 8px; }
        .nav a {
            padding: 10px 12px;
            border-radius: 8px;
            color: #cbd5e1;
            font-weight: 600;
        }
        .nav a.active, .nav a:hover { background: #123447; color: #ffffff; }
        .content { padding: 28px; }
        .topbar { display: flex; justify-content: space-between; align-items: center; gap: 16px; margin-bottom: 22px; }
        h1 { margin: 0; font-size: 28px; }
        .subtitle { color: var(--muted); margin: 4px 0 0; }
        .grid { display: grid; gap: 16px; }
        .stats { grid-template-columns: repeat(4, minmax(0, 1fr)); margin-bottom: 22px; }
        .card, .panel {
            background: var(--panel);
            border: 1px solid var(--line);
            border-radius: 8px;
            box-shadow: 0 1px 2px rgba(15, 23, 42, 0.04);
        }
        .card { padding: 18px; }
        .card .label { color: var(--muted); font-size: 14px; margin-bottom: 8px; }
        .card .value { font-size: 30px; font-weight: 700; }
        .panel { overflow: hidden; }
        .panel-head { padding: 16px 18px; border-bottom: 1px solid var(--line); display: flex; justify-content: space-between; align-items: center; gap: 12px; }
        .panel-body { padding: 18px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { padding: 12px 14px; border-bottom: 1px solid var(--line); text-align: left; vertical-align: top; }
        th { background: #f1f5f9; color: #334155; font-size: 13px; text-transform: uppercase; }
        tr:last-child td { border-bottom: 0; }
        .actions { display: flex; gap: 8px; flex-wrap: wrap; }
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            min-height: 38px;
            padding: 8px 12px;
            border-radius: 8px;
            border: 1px solid transparent;
            font-weight: 700;
            cursor: pointer;
            font-size: 14px;
        }
        .btn-primary { background: var(--primary); color: #ffffff; }
        .btn-primary:hover { background: var(--primary-dark); }
        .btn-light { background: #ffffff; border-color: var(--line); color: #334155; }
        .btn-warning { background: #fff7ed; border-color: #fed7aa; color: var(--warning); }
        .btn-danger { background: #fef2f2; border-color: #fecaca; color: var(--danger); }
        .badge { display: inline-block; padding: 4px 8px; border-radius: 999px; font-size: 12px; font-weight: 700; }
        .badge-ok { background: #dcfce7; color: #166534; }
        .badge-empty { background: #fee2e2; color: #991b1b; }
        .alert { background: #ecfdf5; border: 1px solid #bbf7d0; color: #166534; padding: 12px 14px; border-radius: 8px; margin-bottom: 16px; }
        .form-grid { display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 16px; }
        .field.full { grid-column: 1 / -1; }
        label { display: block; font-weight: 700; margin-bottom: 6px; }
        input, select, textarea {
            width: 100%;
            border: 1px solid var(--line);
            border-radius: 8px;
            padding: 10px 12px;
            background: #ffffff;
            color: var(--ink);
        }
        textarea { min-height: 110px; }
        .error { color: var(--danger); font-size: 13px; margin-top: 5px; }
        .empty { color: var(--muted); padding: 28px; text-align: center; }
        .pagination { margin-top: 14px; }

        @media (max-width: 860px) {
            .app-shell { grid-template-columns: 1fr; }
            .sidebar { position: static; }
            .stats, .form-grid { grid-template-columns: 1fr; }
            .content { padding: 18px; }
            .topbar, .panel-head { align-items: flex-start; flex-direction: column; }
            table { min-width: 720px; }
            .table-wrap { overflow-x: auto; }
        }

        @media print {
            .sidebar, .topbar .actions, .no-print { display: none !important; }
            .app-shell { display: block; }
            .content { padding: 0; }
            body { background: #ffffff; }
            .panel, .card { border: 0; box-shadow: none; }
        }
    </style>
</head>
<body>
    <div class="app-shell">
        <aside class="sidebar">
            <div class="brand">Menu Kantin</div>
            <nav class="nav">
                <a href="{{ route('dashboard') }}" class="{{ request()->routeIs('dashboard') ? 'active' : '' }}">Dashboard</a>
                <a href="{{ route('menu.index') }}" class="{{ request()->routeIs('menu.*') ? 'active' : '' }}">Kelola Menu</a>
                <a href="{{ route('laporan') }}" class="{{ request()->routeIs('laporan') ? 'active' : '' }}">Laporan</a>
            </nav>
            <form action="{{ route('logout') }}" method="POST" style="margin-top: 28px;">
                @csrf
                <button class="btn btn-light" type="submit" style="width: 100%;">Logout</button>
            </form>
        </aside>

        <main class="content">
            @yield('content')
        </main>
    </div>
</body>
</html>
