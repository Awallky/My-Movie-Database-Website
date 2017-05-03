<!--
Original Author: Adam M Walls
Description: This file serves as storage for all possible functions that may be
 						 called for the website functionality.
-->

﻿<?php
function add_user($email, $pass){
	$res =  mysql_query("
	INSERT INTO User (userRole, userEmail, userPass) VALUES (
	'user', '$email', '$pass'
	");
	return $res;
}

function change_role($email){
	return mysql_query("
	UPDATE User
	SET userRole = 'manager'
	WHERE userEmail = $email
	");
}

function getRole($email){
	return mysql_query("
	SELECT userRole FROM User
	WHERE userEmail = $email
	");
}

function addMovie($title, $summary, $language, $duration, $release_date){
	return mysql_query("
	INSERT INTO Movie (Title, Summary, Language, Duration, Release_date, Avg_Rating) VALUES (
	$title, $summary, $language, $duration, $release_date, NULL
	)");
}

function updateMovie($attributeToUpdate, $newAttribute, $mid ){
	return mysql_query("
	UPDATE Movie SET $attributeToUpdate = $newAttribute
	WHERE MID = $mid
	");
}

function deleteMovie($mid){
	return mysql_query("
	DELETE FROM Movie
	WHERE MID = $mid
	");
}

function addMovieGenre($genre, $mid){
	return mysql_query("
	INSERT INTO Genre (Genre, CATEGORIZED_AS) VALUES (
	$genre, $mid
	)");
}

function addCrewMember(	$first_name, $middle_name, $last_name, $role, $bio, $gender, $dob, $age, $birthplace, $mid){
	return mysql_query("
	INSERT INTO Crew(F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Age, Birthplace, MOVIE_MID) VALUES (
	$first_name, $middle_name, $last_name, $role, $bio, $gender, $dob, $age, $birthplace, $mid
	)");
}

function updateCrewMember($attributeToUpdate, $newAttribute, $mid){
	return mysql_query("
	UPDATE Crew SET $attributeToUpdate = $newAttribute
	WHERE CID = $mid
	");
}

function deleteCrewMember($cid){
	return mysql_query("
	DELETE FROM Crew
	WHERE CID = $cid
	");
}

function searchByTitle($title){
	return mysql_query("
	SELECT *
	FROM Movie
	WHERE Title = $title
	");
}

function searchByGenre(){
	return mysql_query("
	SELECT Movie
	FROM Movie, Genre
	WHERE Genre.Genre = $searchFor AND Genre.CATEGORIZED_AS = Movie.MID
	");
}

function searchByTag(){
	return mysql_query("
	SELECT Movie.*
	FROM Movie, Tag
	WHERE Tag.Tag = $searchFor AND Tag.TAGGED_AS = Movie.MID
	");
}

function searchByCrew($f_name, $l_name){
	return mysql_query("
	SELECT Movie
	FROM Movie, Crew
	WHERE Crew.F_Name = $f_name AND Crew.L_Name = $l_name AND Crew.Movie_MID = Movie.MID
	");
}

function tagMovie($tag, $mid){
	return mysql_query("
	INSERT INTO Tag (Tag, TAGGED_AS) VALUES (
	$tag, $mid
	)");
}

function rate_commentMovie($rating, $comment, $mid){
	return mysql_query("
	INSERT INTO Rating (Rating, Comment, RATED_AS) VALUES (
	$rating, $comment, $mid
	)");
}
?>
