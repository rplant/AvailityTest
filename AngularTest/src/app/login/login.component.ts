import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { User } from './user';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {


  firstName: string;
  lastName:  string;
  npiNumber: string;
  address: string;
  email: string;


  constructor() { }

  ngOnInit() {
  }

  onRegister()
  {



  }



}
