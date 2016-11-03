
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('na-duran', 'Nathan Duran', '8 Guinea Lane, Bristol, BS16 2HB', '1983-09-13', '2016-01-01', 'ACCEPTED', 0);

INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('to-fisher', 'Tom Fisher', '123 Place Rd, Bristol, B1 4BS', '1994-10-20', '2016-01-26', 'APPLIED', 0);

INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('mi-mouse', 'Mickey Mouse', '12 Disney Rd, Magic Kingdom, M1 2CK', '1950-10-20', '2016-08-26', 'APPLIED', 0);

INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('an-curtain', 'Annet Curtain', '45 New Rd, Bath, BA1 5LY', '1988-12-20', '2015-09-26', 'ACCEPTED', 0);


INSERT INTO `users` (`id`, `password`, `status`) VALUES
('na-duran', '123', 'ACCEPTED');

INSERT INTO `users` (`id`, `password`, `status`) VALUES
('to-fisher', 'asd', 'APPLIED');

INSERT INTO `users` (`id`, `password`, `status`) VALUES
('mi-mouse', 'qwe', 'APPLIED');

INSERT INTO `users` (`id`, `password`, `status`) VALUES
('an-curtain', 'zxc', 'ACCEPTED');


INSERT INTO `Claims` (`mem_id`, `date`, `rationale`, `status`, `amount`) VALUES
('na-duran', '2016-11-03', 'Because Reasons', 'ACCEPTED', '100.50');

INSERT INTO `Claims` (`mem_id`, `date`, `rationale`, `status`, `amount`) VALUES
('an-curtain', '2016-11-03', 'Because Reasons', 'PENDING', '10.50');


INSERT INTO `payments` (`mem_id`, `type_of_payment`, `amount`, `date`) VALUES
('na-duran', 'CARD', '50.25', '2016-11-04');