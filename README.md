# 🛠️ Bash Scripts for Data Engineers

A curated collection of 20 Bash scripts tailored for data engineering tasks. These scripts help automate common file operations, data validations, backups, and more. Great for learning, interviews, or building your Bash scripting portfolio.

---

## 📂 Project Structure

```
bash-data-engineering-scripts/
├── scripts/
│   ├── 01_file_cleanup.sh
│   ├── 02_csv_header_validator.sh
│   ├── 03_json_prettifier.sh
│   └── ...
├── README.md
└── LICENSE
```

---

## 📜 Script Index

| Script Name | Purpose |
|-------------|---------|
| `01_file_cleanup.sh` | Delete files older than N days |
| `02_csv_header_validator.sh` | Validate CSV headers match a schema |
| `03_json_prettifier.sh` | Format raw JSON files |
| `04_s3_sync.sh` | Sync local directory with AWS S3 bucket |
| `05_db_backup.sh` | Take PostgreSQL/MySQL database backups |
| `06_log_rotation.sh` | Archive and compress logs |
| `07_data_dir_monitor.sh` | Watch a directory for new files |
| `08_csv_to_tsv.sh` | Convert CSV files to TSV |
| `09_null_value_checker.sh` | Detect nulls in CSV columns |
| `10_large_file_splitter.sh` | Split large CSV files into chunks |
| `11_remove_duplicates.sh` | Remove duplicate rows from a CSV |
| `12_schema_diff.sh` | Compare two CSV headers for schema differences |
| `13_disk_usage_report.sh` | Report disk usage for data directories |
| `14_schedule_task.sh` | Add a cron job via script |
| `15_sql_runner.sh` | Run SQL queries from a `.sql` file |
| `16_env_loader.sh` | Load `.env` variables into a session |
| `17_parquet_checker.sh` | Validate Parquet file metadata (via CLI tools) |
| `18_ftp_uploader.sh` | Upload files to an FTP server |
| `19_column_stats.sh` | Basic stats (mean, nulls, unique) from CSV |
| `20_batch_file_renamer.sh` | Rename files with a pattern (e.g., timestamp) |

---

## How to Use

1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/bash-data-engineering-scripts.git
   cd bash-data-engineering-scripts/scripts
   ```

2. Make a script executable:
   ```bash
   chmod +x 01_file_cleanup.sh
   ```

3. Run a script:
   ```bash
   ./01_file_cleanup.sh /path/to/files 30
   ```

---

## 📘 Prerequisites

Most scripts use standard Unix tools. Some scripts require the following:
- `jq` – for JSON formatting
- `aws` – AWS CLI for S3 sync
- `inotifywait` – for monitoring directories
- `parquet-tools` – for checking Parquet metadata

Use your OS package manager to install any missing tools:
```bash
sudo apt install jq awscli inotify-tools parquet-tools
```

---

## Contributing

Pull requests are welcome! If you have useful Bash snippets for data engineering, feel free to submit a PR or open an issue.

---

## License

This project is licensed under the MIT License.

