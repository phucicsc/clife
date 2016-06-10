<?php
class ControllerAccountToken extends Controller {
	private $error = array();

	public function index() {
		
		function myCheckLoign($self) {
			return $self->customer->isLogged() ? true : false;
		};

		function myConfig($self){
			$self -> load -> model('account/customer');
		};


		//method to call function
		!call_user_func_array("myCheckLoign", array($this)) && $this->response->redirect($this->url->link('account/login', '', 'SSL'));
		call_user_func_array("myConfig", array($this));		


		//data render website
		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		$page = isset($this->request->get['page']) ? $this->request->get['page'] : 1;      

		$limit = 10;
		$start = ($page - 1) * 10;
		$history_total = $this->model_account_customer->getTotalTokenHistory($this -> session -> data['customer_id']);
		$history_total = $history_total['number'];

		$pagination = new Pagination();
		$pagination->total = $history_total;
		$pagination->page = $page;
		$pagination->limit = $limit; 
		$pagination->num_links = 5;
		$pagination->text = 'text';
		$pagination->url = $this->url->link('account/token', 'page={page}', 'SSL');


		$data['history'] = $this->model_account_customer->getTokenHistoryById($this -> session -> data['customer_id'] , $limit , $start);
		$data['pagination'] = $pagination->render();

		$data['base'] = $server;
		$data['self'] = $this;	
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/token.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/token.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/account/token.tpl', $data));
		}
	}


	public function transfersubmit(){

		$json['login'] = $this->customer->isLogged() ? 1 : -1; 
		if($json['login'] === 1){
			$this -> load -> model('customize/register');
			$this -> load -> model('account/customer');
			//check customer
			$customer = $this -> request -> get['customer'];
			
			$Tree= $this->model_account_customer->checkUserName($this -> session -> data['customer_id']);

			$UTree=explode(',', $Tree);
			unset($UTree[0]);

			//get customer partent
			$customerParent = $this->model_account_customer->getCustomer( $this -> session -> data['customer_id']);
			$customerParent = $customerParent['p_node'];
			$customerParent = $this->model_account_customer->getCustomer($customerParent);
			array_push($UTree, $customerParent['username']);
		

			$customers=in_array($customer, $UTree) ? 1 : 0;

			$json['customer'] = intval($customers) === 0 ? -1 : 1;

			$variablePasswd = $this->model_account_customer->getPasswdTransaction($this -> request -> get['TransferPassword']);
			$json['password'] = $variablePasswd['number'] === '0' ? -1 : 1;
			
			$customerSend = $this->model_account_customer->getCustomer($this -> session -> data['customer_id']);
			$pin = $customerSend['ping'];
			$num = $this -> request -> get['pin'];
			$amount= $num;		
			if( is_numeric($num) && intval($num) !== 0 && ($pin - $amount) > 2 && $amount >= 6 ){
				$json['pin'] = 1;
			}else{
				$json['pin'] = -1;
			}

			if($json['pin'] === 1 && $json['customer'] === 1 && $json['password'] === 1){
				
				//up pin
				$pin_update = ($pin - $this -> request -> get['pin']);
				$this->model_account_customer->updatePin($this -> session -> data['customer_id'], $pin_update);
			
				//down pin
				$customerReceived = $this->model_account_customer->getCustomerByUsername($this -> request -> get['customer']);
				$ping = intval($customerReceived['ping']);
				
				if($ping === 0){
					$this->model_account_customer->updatePin($customerReceived['customer_id'], $this -> request -> get['pin']);
				}else {
					$ping = $ping + intval($this -> request -> get['pin']);
					$this->model_account_customer->updatePin($customerReceived['customer_id'], $ping);
				}
				

				//save history cho user chuyen di

				$id_history = $this->model_account_customer->saveHistoryPin(
					$this -> session -> data['customer_id'],  
					'- ' . $this -> request -> get['pin'],
					$this -> request -> get['description'],
					'Transfer',
					$customerReceived['username']
				);

				//save history cho user nhan token
				$id_history = $this->model_account_customer->saveHistoryPin(
					$customerReceived['customer_id'],  
					'+ ' . $this -> request -> get['pin'],
					$this -> request -> get['description'],
					'Transfer',
					$customerSend['username']
				);
				//update 38940 VND


				if(intval($customerReceived['status']) === 1 && intval($customerReceived['ping']) > 0){
					$this -> model_account_customer -> updateR_Wallet($customerReceived['customer_id'] , 3840000);
					$this -> model_account_customer -> updateStatus($customerReceived['customer_id'] , 2);
				}
				$json['ok'] = $id_history ? 1 : -1;
			}else{
				$json['ok'] = -1;
			}
		}
		
		$this -> response -> setOutput(json_encode($json));	
	}
	public function getaccount(){
		if($this->customer->isLogged() && $this -> request -> post['keyword'] ) {
			$this->load->model('account/customer');

			$tree=explode(',', $this->model_account_customer->getCustomLike($this -> request -> post['keyword'],  $this -> session -> data['customer_id']));
			unset($tree[0]);
			//get customer partent
			$customerParent = $this->model_account_customer->getCustomer( $this -> session -> data['customer_id']);
			$customerParent = $customerParent['p_node'];
			$customerParent = $this->model_account_customer->getCustomer($customerParent);
			array_push($tree, $customerParent['username']);

			foreach ($tree as $key => $value) {			
				echo $value ? '<li class="list-group-item" onClick="selectU('."'".$value."'".');">'.$value.'</li>' : ''; 
			}
		}
	}


	public function transfer(){

		function myCheckLoign($self) {
			return $self->customer->isLogged() ? true : false;
		};

		function myConfig($self){
			$self -> document -> addScript('catalog/view/javascript/autocomplete/jquery.easy-autocomplete.min.js');
			$self -> document -> addScript('catalog/view/javascript/transfer/transfer.js');
			$self -> document -> addStyle('catalog/view/theme/default/stylesheet/autocomplete/easy-autocomplete.min.css');
		};


		//method to call function
		!call_user_func_array("myCheckLoign", array($this)) && $this->response->redirect($this->url->link('account/login', '', 'SSL'));
		call_user_func_array("myConfig", array($this));	
		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}


		$data['base'] = $server;
		$data['self'] = $this;
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/token_transfer.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/token_transfer.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/account/token_transfer.tpl', $data));
		}

	}
}