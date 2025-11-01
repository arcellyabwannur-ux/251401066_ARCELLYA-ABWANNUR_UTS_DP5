program bintangidamanku;
uses crt;

var
    i, j : integer;
    // i digunakan untuk mengatur jumlah baris (perulangan luar)
    // j digunakan untuk mencetak bintang per baris (perulangan dalam)

begin
    clrscr;

    // Mencetak segitiga bintang naik dari 1 ke 3
    for i := 1 to 3 do        // Perulangan yang luar: i dimulai dari 1 hingga 3 (jumlah baris)
    begin
        for j := 1 to i do    // Perulangan yang di dalam: mencetak bintang sebanyak nilai i
            write('*');       // Mencetak bintang tanpa pindah
        writeln;              // Pindah ke baris baru setelah satu baris selesai
    end;

    // Mencetak dua baris bintang menurun dari 8 ke 7
    for i := 8 downto 7 do    // Perulangan yang luar dari 8 turun ke 7
    begin
        for j := 1 to i do    // Setiap baris mencetak bintang sebanyak nilai i
            write('*');       
        writeln;              // Pindah ke baris berikutnya
    end;

    // Mencetak segitiga bintang naik dari 6 ke 8
    for i := 6 to 8 do        // Perulangan  yang luar: i dimulai dari 6 hingga 8
    begin
        for j := 1 to i do    // Perulangan yang di dalam: cetak bintang sebanyak i
            write('*');
        writeln;              // Pindah ke baris berikutnya
    end;

end.
