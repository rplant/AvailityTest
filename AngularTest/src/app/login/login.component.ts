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
  @Output() firstName: string;
  @Output() lastName:  string;
  @Output() npiNumber: string;
  @Output() address: string;
  @Output() email: string;
  @Output() user: User;

  constructor() {


  }

  ngOnInit() {
  }

  onRegister()
  {
    let user = { firstName: this.firstName,
                 lastName: this.lastName,
                 npiNumber: this.npiNumber,
                 address: this.address,
                 email: this.email  } as User;
    this.regEvent.emit(user);
  }


}


