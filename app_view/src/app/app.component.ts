import { Component, Output, ViewEncapsulation } from '@angular/core';
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
  selectedCategory = 'Fotografía';
  title = 'Smile day';
  price = '0';
  searchQuery = '';
  selectedFiles: File[] = [];
  isDragOver = false;

  items = [
    { name: 'Smile day', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'portrait, male, smile, blue, bread, brown eyes, T-shirt' },
    { name: 'Lovely love', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'portrait, female, green eyes, red, love, heart' },
    { name: 'Queen lady', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'portrait, cat, queen, kitty, brown, amber, brown, crown' },
    { name: 'Yellow', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'portrait, female, flower, yellow, brown, green eyes' },
    { name: 'Deep eyes', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'portrait, female, exotic, woman, red, make up, eyes' },
    { name: 'Camelia', type: 'Fotografía', size: '2300x1800px', author: 'Karime Sita', date: '12/01/2025', tags: 'flower, pink, brown, relax' }
  ];

  onDragOver(event: DragEvent): void {
    event.preventDefault();
    this.isDragOver = true;
  }

  onDragLeave(event: DragEvent): void {
    event.preventDefault();
    this.isDragOver = false;
  }

  onDrop(event: DragEvent): void {
    event.preventDefault();
    this.isDragOver = false;

    const files = event.dataTransfer?.files;
    if (files) {
      this.handleFiles(files);
    }
  }

  onFileSelect(event: Event): void {
    const input = event.target as HTMLInputElement;
    if (input.files) {
      this.handleFiles(input.files);
    }
  }

  private handleFiles(fileList: FileList): void {
    const newFiles = Array.from(fileList).filter(file => {
      return file.type === 'image/png';
    });

    const totalFiles = this.selectedFiles.length + newFiles.length;
    if (totalFiles > 5) {
      const availableSlots = 5 - this.selectedFiles.length;
      this.selectedFiles = [...this.selectedFiles, ...newFiles.slice(0, availableSlots)];
      alert(`Solo se pueden seleccionar máximo 5 archivos PNG. Se agregaron ${availableSlots} archivos.`);
    } else {
      this.selectedFiles = [...this.selectedFiles, ...newFiles];
    }

    if (newFiles.length === 0 && Array.from(fileList).length > 0) {
      alert('Solo se permiten archivos PNG.');
    }
  }

  removeFile(index: number): void {
    this.selectedFiles.splice(index, 1);
  }

  clearAllFiles(): void {
    this.selectedFiles = [];
  }

  uploadFiles(): void {
    if (this.selectedFiles.length > 0) {
      console.log('Subiendo archivos:', this.selectedFiles);
      // Aquí iría la lógica de subida de archivos
      alert(`Subiendo ${this.selectedFiles.length} archivo(s)...`);
      // INPUT
        // ARRAY DE IMAGENES (64) - NOMBRE
        // {
        //   [
        //     {base64:xasxaxsxasx},
        //     {base64:xasxaxsxasx},
        //     {base64:xasxaxsxasx}
        //   ]

        // }
      // Output
      // [{\n    \"uuid\": \"a7b3c8e1-4f29-4d6a-9e8c-2b5f7a3d8e91\",\n   \"name\": \"Horno de pizza tradicional\",\n    \"category\": \"Gastronomía\",\n    \"description\": \"Un solitario horno de piedra que una vez irradió calor y alegría, ahora permanece silencioso como un testigo mudo de comidas compartidas que ya no volverán. Sus llamas danzan melancólicamente sobre una pizza que espera en vano ser degustada por voces familiares que se han desvanecido en el tiempo.\"\n  }]
    }
  }

  get hasFiles(): boolean {
    return this.selectedFiles.length > 0;
  }

  formatFileSize(bytes: number): string {
    if (bytes === 0) return '0 Bytes';
    const k = 1024;
    const sizes = ['Bytes', 'KB', 'MB', 'GB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i];
  }
}
