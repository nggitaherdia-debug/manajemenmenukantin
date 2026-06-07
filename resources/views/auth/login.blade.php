<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Menu Kantin</title>
    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            min-height: 100vh;
            display: grid;
            place-items: center;
            background: #f7f8fb;
            color: #1f2937;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auth-card {
            width: min(420px, calc(100% - 32px));
            background: #ffffff;
            border: 1px solid #dbe2ea;
            border-radius: 8px;
            padding: 28px;
            box-shadow: 0 8px 30px rgba(15, 23, 42, 0.08);
        }
        h1 { margin: 0 0 6px; font-size: 28px; }
        p { margin: 0 0 22px; color: #64748b; }
        label { display: block; font-weight: 700; margin-bottom: 6px; }
        input {
            width: 100%;
            border: 1px solid #dbe2ea;
            border-radius: 8px;
            padding: 10px 12px;
            margin-bottom: 14px;
        }
        .check { display: flex; gap: 8px; align-items: center; margin-bottom: 16px; color: #334155; }
        .check input { width: auto; margin: 0; }
        .btn {
            width: 100%;
            border: 0;
            border-radius: 8px;
            padding: 11px 14px;
            background: #0f766e;
            color: #ffffff;
            font-weight: 700;
            cursor: pointer;
        }
        .link { display: block; margin-top: 16px; color: #0f766e; text-align: center; font-weight: 700; text-decoration: none; }
        .error { color: #b91c1c; font-size: 13px; margin: -8px 0 12px; }
    </style>
</head>
<body>
    <main class="auth-card">
        <h1>Login</h1>
        <p>Masuk untuk mengelola menu kantin.</p>

        <form action="{{ route('login.store') }}" method="POST">
            @csrf

            <label for="email">Email</label>
            <input id="email" name="email" type="email" value="{{ old('email') }}" required autofocus>
            @error('email') <div class="error">{{ $message }}</div> @enderror

            <label for="password">Password</label>
            <input id="password" name="password" type="password" required>
            @error('password') <div class="error">{{ $message }}</div> @enderror

            <label class="check">
                <input type="checkbox" name="remember" value="1">
                Ingat saya
            </label>

            <button class="btn" type="submit">Login</button>
        </form>

        <a class="link" href="{{ route('register') }}">Belum punya akun? Daftar</a>
    </main>
</body>
</html>
