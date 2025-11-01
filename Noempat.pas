program deret_fibonanci;
uses crt;

var
    N, i: integer;    // N = banyaknya suku deret, i = variabel penghitung loop
    a, b, c: integer; // a dan b = dua suku awal Fibonacci, c = hasil penjumlahan a + b
    total: integer;   // total = penjumlahan seluruh suku Fibonacci yang ditampilkan

begin
    clrscr;

    write('Masukkan Nilai N : ');  // Meminta user memasukkan banyaknya suku yang diinginkan
    readln(N);  // Membaca input 
    a := 0; // suku pertama Fibonacci = 0
    b := 1; //suku kedua Fibonacci = 1
    total := 0; //total = 0 (belum ada penjumlahan)

    write('Sequence : ');

    for i := 1 to N do
    begin
        write(a);               // Menampilkan nilai suku saat ini (a)

        if i < N then           // Jika belum sampai suku terakhir
            write(', ');        // Tambahkan tanda koma agar rapi, kecuali di akhir

        total := total + a;     // Menambahkan nilai suku saat ini ke total keseluruhan

        c := a + b;             // Menghitung suku berikutnya (jumlah dua suku sebelumnya)
        a := b;                 // Geser nilai: a menjadi b
        b := c;                 // Geser nilai: b menjadi c (suku baru)
    end;

    writeln;
    writeln('Total = ', total); // Menampilkan hasil penjumlahan seluruh angka

end.
