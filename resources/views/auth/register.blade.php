<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Menu Kantin</title>
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
            width: min(440px, calc(100% - 32px));
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
        <h1>Daftar Akun</h1>
        <p>Buat akun admin untuk membuka aplikasi kantin.</p>

        <form action="{{ route('register.store') }}" method="POST">
            @csrf

            <label for="name">Nama</label>
            <input id="name" name="name" type="text" value="{{ old('name') }}" required autofocus>
            @error('name') <div class="error">{{ $message }}</div> @enderror

            <label for="email">Email</label>
            <input id="email" name="email" type="email" value="{{ old('email') }}" required>
            @error('email') <div class="error">{{ $message }}</div> @enderror

            <label for="password">Password</label>
            <input id="password" name="password" type="password" required>
            @error('password') <div class="error">{{ $message }}</div> @enderror

            <label for="password_confirmation">Konfirmasi Password</label>
            <input id="password_confirmation" name="password_confirmation" type="password" required>

            <button class="btn" type="submit">Daftar</button>
        </form>

        <a class="link" href="{{ route('login') }}">Sudah punya akun? Login</a>
    </main>
</body>
</html>
