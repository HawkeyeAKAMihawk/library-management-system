

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$By0zQXuGxetYP/onpfttguYqJ/yiX/COtXfySclDiZfuDx9ooasRC', 'Website', 'Create', 'profile_youtube.jpg', '2023-05-01');



CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(150) NOT NULL,
  `publisher` varchar(150) NOT NULL,
  `publish_date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `books` (`id`, `isbn`, `category_id`, `title`, `author`, `publisher`, `publish_date`, `status`) VALUES
(2, 'bookisbntest', 2, 'Calculus Made Easy', 'Author Me', 'Self Publish Inc', '2018-05-02', 0),
(13, '159420229X', 3, 'Moonwalking with Einstein: The Art and Science of Remembering Everything ', 'Joshua Foer ', 'Penguin Press HC', '2020-05-11', 0);



CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrow` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Engineering'),
(2, 'Mathematics'),
(3, 'Science and Technology'),
(4, 'History');



CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `code` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `course` (`id`, `title`, `code`) VALUES
(1, 'Bachelor of Science in Information Systems', 'BSIS'),
(2, 'Bachelor of Science in Computer Science', 'BSCS');



CREATE TABLE `returns` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_return` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;


ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


--
ALTER TABLE `returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;


