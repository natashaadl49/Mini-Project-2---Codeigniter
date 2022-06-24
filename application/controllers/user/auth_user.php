<?php

class Auth_user extends CI_controller
{
    public function index()
    {
        $this->load->view('templates_user/header');
        $this->load->view('user/login_user');
        $this->load->view('templates_user/footer');
    }

    public function proses_login_user()
    {
        $this->form_validation->set_rules(
            'username',
            'username',
            'required',
            [
                'required' => 'Username wajib diisi'
            ]
        );

        $this->form_validation->set_rules(
            'password',
            'password',
            'required',
            [
                'required' => 'Password wajib diisi'
            ]
        );
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates_user/header');
            $this->load->view('user/login_user');
            $this->load->view('templates_user/footer');
        } else {
            $username = $this->input->post('username');
            $password = $this->input->post('password');


            $user = $username;
            $pass = MD5($password);

            $cek = $this->login_model_user->cek_login($user, $pass);
        }
        if ($cek->num_rows() > 0) {

            foreach ($cek->result() as $ck) {
                $sess_data['username'] = $ck->username;
                $sess_data['email'] = $ck->email;
                $sess_data['level'] = $ck->level;

                $this->session->set_userdata($sess_data);
            }
            if ($sess_data['level'] == 'user') {
                redirect('user/dashboard_user');
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Maaf Username Atau Password Salah<button type="button" class="close" data-dismiss="alert"
             aria-label="Close">
            <span aria-hidden="true">&times;</span></button></div>');
                redirect('user/auth_user');
            }
        } else {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
        Maaf Username Dam Password Salah<button type="button" class="close" data-dismiss="alert"
         aria-label="Close">
        <span aria-hidden="true">&times;</span></button></div>');
            redirect('user/auth_user');
        }
    }
}
