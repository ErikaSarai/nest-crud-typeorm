import { Controller, Get, Post, Put, Delete, Body, Param } from '@nestjs/common';
import { BookService } from './book.service';
import { bookDTO } from './book.dto';

@Controller('book')
export class BookController {
    constructor(private bookService: BookService){}

    @Get()
    showAllBooks(){
        return this.bookService.showAll();
    }

    @Post()
    createBook(@Body() data: bookDTO){
        return this.bookService.create(data);
    }

    @Get(':id')
    readBook(@Param('id') id: string){
        return this.bookService.read(id);
    }

    @Put(':id')
    updateBook(@Param('id') id: string, @Body() data: Partial<bookDTO> ){
        return this.bookService.update(id, data);
    }

    @Delete(':id')
    destroyBook(@Param('id') id: string){
        return this.bookService.destroy(id);
    }
}
