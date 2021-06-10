select * from invoice_line
where unit_price > 0.99;

select invoice.invoice_date, customer.first_name, customer.last_name, invoice.total from invoice
join customer on invoice.customer_id = customer.customer_id;

select customer.first_name, customer.last_name, employee.first_name, employee.last_name from customer
join employee on customer.support_rep_id = employee.employee_id

select album.title, artist.name from album
join artist on album.artist_id = artist.artist_id;

select pl_t.track_id, pl.name from playlist_track as pl_t
join playlist as pl on pl_t.playlist_id = pl.playlist_id
where name = 'Music';

select * from playlist_track
select track.name, playlist_track.playlist_id from track
join playlist_track on playlist_track.track_id = track.track_id
where playlist_id = 5;

select track.name, playlist.name from track
join playlist_track on playlist_track.track_id = track.track_id
join playlist on playlist_track.playlist_id = playlist.playlist_id;

select track.name, album.title from track
join album on track.album_id = album.album_id
join genre on track.genre_id = genre.genre_id
where genre.name = 'Alternative & Punk';
