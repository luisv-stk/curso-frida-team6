import { Component, ViewEncapsulation } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, RouterModule, FormsModule],
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class AppComponent {
  categories = ['Fotografía', 'Video', 'Ilustración', '3D'];
  selectedCategory = 'Fotografía';
  title = 'Smile day';
  price = '0';
  searchQuery = '';
  items = [
    { name: 'Smile day', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'portrait, male, smile, blue, bread, brown eyes, T-shirt' },
    { name: 'Lovely love', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'portrait, female, green eyes, red, love, heart' },
    { name: 'Queen lady', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'portrait, cat, queen, kitty, brown, amber, brown, crown' },
    { name: 'Yellow', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'portrait, female, flower, yellow, brown, green eyes' },
    { name: 'Deep eyes', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'portrait, female, exotic, woman, red, make up, eyes' },
    { name: 'Camelia', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'flower, pink, brown, relax' }
  ];
}
