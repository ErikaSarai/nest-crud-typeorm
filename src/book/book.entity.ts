import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity('bookTable')
export class BookEntity {
    @PrimaryGeneratedColumn() 
    id: number;

    @Column('text') 
    title: string;

    @Column('text') 
    author: string;

    @Column('text') 
    description: string;
}