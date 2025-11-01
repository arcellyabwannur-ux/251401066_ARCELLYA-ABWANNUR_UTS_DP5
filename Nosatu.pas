program cicipunyatoko;
uses crt;

var 
    hargabuku, hargapulpen, hargapensil, hargapenghapus, hargapenggaris: integer;
    jumlahbuku, jumlahpulpen, jumlahpensil, jumlahpenghapus, jumlahpenggaris: integer;
    totalbarang, totaldiskon, hasil : longint;
    metodebayar : string;

begin
    clrscr;
    // Menampilkan daftar harga barang di toko
    writeln('Toko ini menjual beberapa jenis barang dengan harga sebagai berikut: ');
    writeln('1. Buku = Rp 25.000');
    writeln('2. Pulpen = Rp 5.000');
    writeln('3. Pensil = Rp 3.000');
    writeln('4. Penghapus = Rp 2.000');
    writeln('5. Penggaris = Rp 4.000');

    // Menginisialisasi harga masing-masing barang
    hargabuku := 25000;
    hargapulpen := 5000;
    hargapensil := 3000;
    hargapenghapus := 2000;
    hargapenggaris := 4000;

    // Meminta input jumlah barang dari pengguna
    write('Masukkan jumlah Buku = ');
    readln(jumlahbuku);
    write('Masukkan jumlah Pulpen = ');
    readln(jumlahpulpen);
    write('Masukkan jumlah Pensil = ');
    readln(jumlahpensil);
    write('Masukkan jumlah Penghapus = ');
    readln(jumlahpenghapus);
    write('Masukkan jumlah Penggaris = ');
    readln(jumlahpenggaris);

    // Menghitung total harga semua barang sebelum diskon
    totalbarang := (hargabuku * jumlahbuku) 
                 + (hargapulpen * jumlahpulpen) 
                 + (hargapensil * jumlahpensil) 
                 + (hargapenghapus * jumlahpenghapus) 
                 + (hargapenggaris * jumlahpenggaris);

    // Menampilkan total harga sebelum diskon 
    writeln('Total harga yang harus dibayar sebelum diskon = Rp ', totalbarang);

    // Memberikan diskon 10% untuk setiap pembelian di atas atau sama dengan 100.000
    if totalbarang >= 100000 then
        begin
            // Menghitung total setelah diskon 10%
            totaldiskon := totalbarang - (10 * totalbarang div 100);
            writeln('Mendapatkan diskon 10%.');
        end
    else
        begin
            // Jika tidak mencapai 100.000, tidak dapat diskon
            writeln('Maaf, tidak mendapatkan diskon.');
            totaldiskon := totalbarang;
        end;

    // Meminta input metode pembayaran
    write('Metode pembayaran (QRIS/TUNAI) = ');
    readln(metodebayar);

    // Jika metode pembayaran menggunakan QRIS
    if metodebayar = 'QRIS' then
        begin
            // Dapat potongan Rp 5.000
            hasil := totaldiskon - 5000;
            writeln('Mendapatkan potongan Rp 5.000.');
            writeln('Total Akhir = Rp ', hasil);
        end

    // Jika metode pembayaran menggunakan TUNAI
    else if metodebayar = 'TUNAI' then
        begin
            // Tidak ada potongan tambahan
            hasil := totaldiskon;
            writeln('Total Akhir = Rp ', hasil );
        end
    else
        begin
            // Jika metode pembayaran tidak dikenali
            writeln('Metode pembayaran tidak valid.');
        end;

end.
