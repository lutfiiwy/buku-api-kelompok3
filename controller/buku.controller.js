const pool = require("../database/index");
const bukuController = {
  getAll: async (req, res) => {
    try {
      const [rows, fields] = await pool.query("select * from buku");
      res.json({
        data: rows,
      });
    } catch (error) {
      console.log(error);
      res.json({
        status: "error",
      });
    }
  },

  getById: async (req, res) => {
    try {
      const { id } = req.params;
      const [rows, fields] = await pool.query("SELECT buku.judul, buku.penulis, buku.penerbit, buku.tahun, buku.stok, desc_buku.desc AS deskripsi " + "FROM desc_buku " + "LEFT JOIN buku ON buku.id = desc_buku.id " + "WHERE buku.id = ?", [
        id,
      ]);

      res.json({
        data: rows,
      });
    } catch (error) {
      console.log(error);
      res.json({
        status: "error",
      });
    }
  },

  create: async (req, res) => {
    try {
      const { judul, penulis, penerbit, tahun, stok } = req.body;
      const sql = "insert into buku (judul, penulis, penerbit, tahun, stok) values (?, ?, ?, ? ?)";
      const [rows, fields] = await pool.query(sql, [judul, penulis, penerbit, tahun, stok]);
      res.json({
        data: rows,
      });
    } catch (error) {
      console.log(error);
      res.json({
        status: "error",
      });
    }
  },
  update: async (req, res) => {
    try {
      const { judul, penulis, penerbit, tahun, stok } = req.body;
      const { id } = req.params;
      const sql = "update buku set judul = ?, penulis = ?, penerbit = ?, tahun = ?, stok = ? where id = ?";
      const [rows, fields] = await pool.query(sql, [judul, penulis, penerbit, tahun, stok, id]);
      res.json({
        data: rows,
      });
    } catch (error) {
      console.log(error);
      res.json({
        status: "error",
      });
    }
  },
  delete: async (req, res) => {
    try {
      const { id } = req.params;
      const [rows, fields] = await pool.query("delete from buku where id = ?", [id]);
      res.json({
        data: rows,
      });
    } catch (error) {
      console.log(error);
      res.json({
        status: "error",
      });
    }
  },
};

module.exports = bukuController;
