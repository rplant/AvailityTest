import { Component } from '@angular/core';
import { User } from './login/user';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  results: User[] = [];
  firstName: string;
  lastName:  string;
  npiNumber: string;
  address: string;
  email: string;
  user: User;

  onRegister()
  {
    let user = { firstName: this.firstName,
                 lastName: this.lastName,
                 npiNumber: this.npiNumber,
                 address: this.address,
                 email: this.email  } as User;

    this.results.push(user);

  }

  onClear()
  {
     this.results = [];
  }

}
