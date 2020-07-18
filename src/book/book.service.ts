import { Injectable } from '@nestjs/common';
import { Repository } from 'typeorm';

import { BookEntity } from './book.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { bookDTO } from './book.dto';

@Injectable()
export class BookService {  
    constructor(
        @InjectRepository(BookEntity) 
        private bookRepository: Repository<BookEntity>
    ){}

   async showAll(): Promise<bookDTO[]>{
       return await this.bookRepository.find();
   }

   async create(data: bookDTO): Promise<bookDTO>{
       const book = await this.bookRepository.create(data);
       await this.bookRepository.save(book);
       return book;
   }

   async read(id: string): Promise<bookDTO>{
       return await this.bookRepository.findOne(id);
   }

   async update(id: string, data: Partial<bookDTO>){
       await this.bookRepository.update(id, data);
       return await this.bookRepository.findOne(id);
   }

   async destroy(id: string){
       await this.bookRepository.delete(id);
       return { deleted: true };
   }
}
