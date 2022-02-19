insert into candidates values (25, 'Taylor', 30);
insert into candidates values (113, 'Paul', 21);
insert into candidates values (10, 'Lara', 19);
insert into reports values (1, 'Codility', 10, 20);
insert into reports values (36, 'Soft', 113, 60);
insert into reports values (137, 'Codility', 10, 30);
insert into reports values (2, 'ITCompany', 10, 99);





solution 1
SELECT candidates.id, candidates.name, COUNT(candidates.id) AS companies 
FROM candidates
INNER JOIN reports ON reports.candidate_id=candidates.id GROUP BY
    candidates.id;

solution 2
SELECT candidates.id, candidates.name, COUNT(candidates.id) AS companies 
FROM candidates
INNER JOIN reports ON reports.candidate_id=candidates.id GROUP BY
    candidates.id HAVING COUNT(*) > 1;

solution 3
SELECT candidates.id, candidates.name, COUNT(distinct candidates.id) AS companies 
FROM candidates
INNER JOIN reports ON reports.candidate_id=candidates.id GROUP BY
    candidates.id;