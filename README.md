# Visualisasi Arus Mutasi Pegawai

Aplikasi web untuk memvisualisasikan aliran perpindahan (mutasi) pegawai antar wilayah menggunakan Sankey Diagram interaktif.

![Sankey Diagram](https://img.shields.io/badge/Visualization-Sankey%20Diagram-blue)
![D3.js](https://img.shields.io/badge/Library-D3.js%20v7-orange)
![Docker](https://img.shields.io/badge/Deploy-Docker-2496ED)

## ✨ Fitur

- **Sankey Diagram** - Visualisasi aliran mutasi pegawai dengan D3.js
- **Filter Jenis Mutasi** - Filter berdasarkan Account Representative, Pelaksana, atau Promosi
- **Tampilan Per Kota/Kanwil** - Switch antara view per kota atau per kantor wilayah
- **Filter Minimum Arus** - Atur threshold minimum untuk menampilkan flow
- **Interaktif** - Tooltip dengan detail informasi saat hover
- **Responsive** - Tampilan yang menyesuaikan dengan ukuran layar

## 🚀 Cara Menjalankan

### Menggunakan Docker (Recommended)

```bash
# Build dan jalankan
docker-compose up -d

# Akses di browser
open http://localhost:8080

# Stop
docker-compose down
```

### Menggunakan Python HTTP Server

```bash
# Python 3
python -m http.server 8080

# Akses di browser
open http://localhost:8080
```

### Menggunakan Node.js

```bash
npx serve -p 8080
```

## 📁 Struktur File

```
.
├── visualisasi_mutasi.html   # Aplikasi utama (HTML + JS)
├── mutasi_anonim.csv         # Data mutasi pegawai (anonim)
├── hasil_join_kantor.csv     # Mapping kantor -> kota/kanwil
├── Dockerfile                # Docker image configuration
├── docker-compose.yml        # Docker Compose configuration
├── .gitignore                # Git ignore rules
└── README.md                 # Dokumentasi ini
```

## 📊 Format Data

### mutasi_anonim.csv
| Kolom | Deskripsi |
|-------|-----------|
| ID | Identifier anonim |
| Jabatan Lama | Jabatan dan lokasi asal |
| Jabatan Baru | Jabatan dan lokasi tujuan |

### hasil_join_kantor.csv
| Kolom | Deskripsi |
|-------|-----------|
| Nama Kantor | Nama KPP |
| Kota | Kota lokasi kantor |
| Nama Kantor Wilayah | Kantor wilayah induk |

## 🛠️ Teknologi

- **D3.js v7** - Data visualization
- **D3-Sankey** - Sankey diagram plugin
- **Nginx** - Web server (Docker)

## 📝 Lisensi

MIT License
