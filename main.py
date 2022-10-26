import sqlite3
import pandas as pd

con = sqlite3.connect("hospital.sqlite")
f_damp = open('hospital.db','r', encoding ='utf-8-sig')
damp = f_damp.read()
f_damp.close()
con.executescript(damp)
con.commit()
cursor = con.cursor()

def fill():
    f_dump = open('inserts.sql', 'r', encoding='utf-8-sig')
    dump = f_dump.read()
    f_dump.close()
    con.executescript(dump)
    con.commit()

fill()
# Расписание докторов по именам в алфавитном порядке
def docName():
    ds = pd.read_sql(''' SELECT fullDocName as имя, d.VisitBeginning, d.VisitEnding 
     from Doctors join DoctorSchedule d using (idDoctor)
     order by Doctors.fullDocName asc'''
     , con)
    print(ds)

print()

# Специальности докторов по именам в алфавитном порядке
def SpecName():
    ds = pd.read_sql(''' SELECT idDoctor as айди , fullDocName as имя, d.Speciality as специальность
     from Doctors join DoctorSpeciality d using (idDoctorSpeciality)
     order by Doctors.fullDocName asc''',con)
    print(ds)

# Количество сотрудников каждой профессии
def Surmembers():
    ds = pd.read_sql('''select Speciality as специальность, count(DoctorSpeciality.Speciality ) as Количество
    from Doctors 
    join DoctorSpeciality using (idDoctorSpeciality)
    group by idDoctorSpeciality 
     ''',con)
    print(ds)

# Список сотрудников работающих больше 2х часов
def DocAmount():

    ds = pd.read_sql(''' select fullDocName as имя, idDoctor
    from Doctors
left join DoctorSchedule using (idDoctor) 
    group by idDoctor Having (time(VisitEnding) - time(VisitBeginning)) > 2 ''',con)
    print(ds)

# Записать клиента
def procrec():
    cursor.executescript('''update Attends set idPatients=1, Diagnosis = 'Геморой' 
    where idAttends=16''')

# Убрать определенное окошко записи
def delAttend(num):
    cursor.executescript(f'''DELETE
FROM Attends 
WHERE idAttends = {num};
''')

    

docName()
SpecName()
Surmembers()
DocAmount()
procrec()
#delAttend(1)

