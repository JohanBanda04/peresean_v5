<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Datapengguna extends CI_Controller {

	public function index()
	{
		redirect('datapengguna/v');
	}

	public function v($aksi='', $id='')
	{
		$id = hashids_decrypt($id);
		$ceks 	 = $this->session->userdata('username');
		$id_user = $this->session->userdata('id_user');
		$level 	 = $this->session->userdata('level');




		if(!isset($ceks)) {
			redirect('web/login');
		}else{
			$data['user']  			  = $this->Mcrud->get_users_by_un($ceks);

			if ($level != 'superadmin') {
					redirect('404_content');
			}

			$this->db->where_not_in('level', 'superadmin');
			$data['query'] = $this->db->get("tbl_user");

				if ($aksi == 't') {
					$p = "tambah";
					$data['judul_web'] 	  = "Registrasi Pengguna";
				}elseif ($aksi == 'e') {
					$p = "edit";
					$data['judul_web'] 	  = "Edit Data Pengguna";
					$this->db->where_not_in('level', 'superadmin');
					$data['query'] = $this->db->get_where("tbl_user", array('id_user' => "$id"))->row();
					if ($data['query']->id_user=='') {redirect('404');}
				}
				elseif ($aksi == 'h') {
//				    echo "hapus pengguna<br>";
//				    echo " uri1: ".$this->uri->segment(1)."<br>";
//				    echo " uri2: ".$this->uri->segment(2)."<br>";
//				    echo " uri3: ".$this->uri->segment(3)."<br>";
//				    echo " uri4: ".$this->uri->segment(4)."<br>"; die;
//                    echo $id; die;
					$this->db->where_not_in('level', 'superadmin');
//					$cek_data = $this->db->get_where("tbl_user", array('id_user' => "$id"));
					$cek_data = $this->db->get_where("tbl_user", array('id_user' => "$id"));
//                    echo $cek_data->num_rows(); die;
//                    echo $id ;die;
//                    $this->db->delete('tbl_user', array('id_user' => $id)); die;
//					while($dt = mysqli_fetch_array($cek_data)){
//                         echo $cek_data->nama_lengkap;
//                    }
					if ($cek_data->num_rows () != 0) {
							$this->db->delete('tbl_user', array('id_user' => $id));
							$this->session->set_flashdata('msg',
								'
								<div class="alert alert-success alert-dismissible" role="alert">
									 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
										 <span aria-hidden="true">&times;</span>
									 </button>
									 <strong>Sukses!</strong> Berhasil dihapus.
								</div>
								<br>'
							);
							redirect("datapengguna/v");
					}else {
						redirect('404');
					}
				}else{
					$p = "index";
					$data['judul_web'] 	  = "Pengguna";
				}

					$this->load->view('users/header', $data);
					$this->load->view("users/datapengguna/$p", $data);
					$this->load->view('users/footer');

					date_default_timezone_set('Asia/Jakarta');
					$tgl = date('Y-m-d H:i:s');

					if (isset($_POST['btnsimpan'])) {
						$nama 	 = htmlentities(strip_tags($this->input->post('nama')));
						$level  = htmlentities(strip_tags($this->input->post('level')));
						$username = htmlentities(strip_tags($this->input->post('username')));
						$password  = htmlentities(strip_tags($this->input->post('password')));
						$password2 = htmlentities(strip_tags($this->input->post('password2')));
						
						$cek_data = $this->db->get_where('tbl_user', array('username'=>$username));
						$pesan  = '';
						$simpan = 'y';

						if ($cek_data->num_rows()!=0) {
							$simpan = 'n';
							$pesan  = "Username '<b>$username</b>' sudah ada";
						} else {
							if ($password!=$password2) {
								$simpan = 'n';
								$pesan  = "Password tidak cocok!";
							}
						}

						if ($simpan=='y') {
							$data = array(
								'nama_lengkap' => $nama,
								'username' 		 => $username,
								'password' 		 => $password,
								'level' 			 => $level
							);
							$this->db->insert('tbl_user',$data);
							$this->session->set_flashdata('msg',
								'
								<div class="alert alert-success alert-dismissible" role="alert">
									 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
										 <span aria-hidden="true">&times;</span>
									 </button>
									 <strong>Sukses7!</strong> Berhasil disimpan.
								</div>
							  <br>'
							);
							
						}else {
							$this->session->set_flashdata('msg',
								'
								<div class="alert alert-warning alert-dismissible" role="alert">
									 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
										 <span aria-hidden="true">&times;</span>
									 </button>
									 <strong>Gagal!</strong> '.$pesan.'.
								</div>
							 <br>'
							);
							 redirect("datapengguna/v/t");
						}
						 redirect("datapengguna/v");
					}


					if (isset($_POST['btnupdate'])) {
						$nama 	 = htmlentities(strip_tags($this->input->post('nama')));
						$level  = htmlentities(strip_tags($this->input->post('level')));
						$username = htmlentities(strip_tags($this->input->post('username')));
						$password  = htmlentities(strip_tags($this->input->post('password')));
						$password2 = htmlentities(strip_tags($this->input->post('password2')));
						$data_lama = $this->db->get_where('tbl_user', array('id_user'=>$id))->row();
						$cek_data  = $this->db->get_where('tbl_user', array(
						    'username'=>$username,
                            'username!='=>$data_lama->username)
                        );

//						echo '<pre>'; var_dump($cek_data) ; die;
						
						$pesan  = '';

						$simpan = 'y';

						if ($cek_data->num_rows()!=0) {
							$simpan = 'n';
							$pesan  = "Username '<b>$username</b>' sudah ada";
						}else {
							$pass_lama = $data_lama->password;
							if ($password=='') {
								$password = $pass_lama;
							}else {
								if ($password!=$password2) {
									$simpan = 'n';
									$pesan  = "Password tidak cocok!";
								}
							}
						}
						if ($simpan=='y') {
						$data = array(
							'nama_lengkap' => $nama,
							'username' 		 => $username,
							'password' 		 => $password,
							'level'			=> $level
						);
						$this->db->update('tbl_user',$data, array('id_user'=>$id));

						$this->session->set_flashdata('msg',
							'
							<div class="alert alert-success alert-dismissible" role="alert">
								 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
									 <span aria-hidden="true">&times;</span>
								 </button>
								 <strong>Sukses5!</strong> Berhasil disimpan.
							</div>
						  <br>'
						);
						
						 }else {
										$this->session->set_flashdata('msg',
											'
											<div class="alert alert-warning alert-dismissible" role="alert">
												 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
													 <span aria-hidden="true">&times;</span>
												 </button>
												 <strong>Gagal!</strong> '.$pesan.'.
											</div>
										 <br>'
										);
										 redirect("datapengguna/v/e/".hashids_encrypt($id));
					 	 }
						 redirect("datapengguna/v");
					}
		}
	}

}
