import { Component } from '@angular/core';
import { User } from './login/user';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  results: User[] = [];

  onAddItem(user: User)
  {
      this.results.push(user);
      console.log(this.results);
  }

  onClear()
  {
     this.results = [];
  }

}
