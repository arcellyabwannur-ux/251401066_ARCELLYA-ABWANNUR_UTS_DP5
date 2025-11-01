program tebakangka;
uses crt;
var
    angka_rahasia, tebakan, percobaan: integer;  
    // angka_rahasia = angka yang harus ditebak oleh user
    // tebakan = input angka dari user
    // percobaan = menghitung berapa kali user menebak

begin
    clrscr;
    angka_rahasia := 3;// Menetapkan angka yang mau ditebak
    percobaan := 0;    // Mengatur jumlah percobaan awal ke 0

    writeln('Yuk Main Tebak Angka Rahasia!');  // Menampilkan pesan pembuka di layar

    // Struktur repeat-until akan terus berulang sampai tebakan benar
    repeat
        write('Masukkan tebakan Anda: ');      // Meminta pemain memasukkan angka tebakannya
        readln(tebakan);                       // Membaca input angka dari pemain
        percobaan := percobaan + 1;            // Menambah jumlah percobaan setiap kali menebak

        // Mengecek apakah tebakan lebih kecil, lebih besar, atau sama dengan angka rahasia
        if tebakan < angka_rahasia then
            writeln('Terlalu kecil! yuk bisa yuk!')   // Jika tebakan terlalu kecil
        else if tebakan > angka_rahasia then
            writeln('Terlalu besar! turunin angkanya!') // Jika tebakan terlalu besar
        else
            // Jika tebakan benar maka ini yang dijalankan
            writeln('Selamat Tebakan kamu benar! Tebakanmu benar setelah ', percobaan, ' percobaan.');

    until tebakan = angka_rahasia; // Ulangi sampai tebakan benar

end.
