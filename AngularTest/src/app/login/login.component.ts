import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { User } from './user';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})

export class LoginComponent implements OnInit {
  @Output() regEvent = new EventEmitter<User>();

  regForm = new FormGroup({
    firstName: new FormControl(null),
    lastName: new FormControl(null),
    npiNumber: new FormControl(null),
    address: new FormControl(null),
    email: new FormControl(null)
  });

  constructor() {
  }

  ngOnInit() {
  }

  onRegister()
  {
    let user = { firstName: this.regForm.controls.firstName.value,
                 lastName: this.regForm.controls.lastName.value,
                 npiNumber: this.regForm.controls.npiNumber.value,
                 address: this.regForm.controls.address.value,
                 email: this.regForm.controls.email.value  } as User;

    this.regEvent.emit(user);
  }


}


