DROP TABLE IF EXISTS viral_disease, health_condition CASCADE;

CREATE TABLE viral_disease (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250) NOT NULL
);

INSERT INTO viral_disease (name) VALUES
    ('Respiratory'),
    ('Gatrointestinal'),
    ('Exanthematous'),
    ('Hepatic'),
    ('Cutaneous'),
    ('Hemorrhagic'),
    ('Neurologic');

CREATE TABLE health_condition (
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease_id INT NOT NULL,
    name VARCHAR(250) NOT NULL,
    transmission VARCHAR(500) NOT NULL,
    foreign key (disease_id) references viral_disease(id)
);

INSERT INTO health_condition (disease_id, name, transmission) VALUES
    (1, 'Flu', 'Respiratory viruses are spread by droplets generated through coughing or sneezing. If someone with a viral illness coughs or sneezes nearby and you inhale these droplets, you may develop the disease. These viruses can also be spread through contaminated objects, such as doorknobs, tabletops, and personal items. If you touch one of these objects and then touch your nose or eyes, you could develop a disease.'),
    (1, 'Common Cold', 'Respiratory viruses are spread by droplets generated through coughing or sneezing. If someone with a viral illness coughs or sneezes nearby and you inhale these droplets, you may develop the disease. These viruses can also be spread through contaminated objects, such as doorknobs, tabletops, and personal items. If you touch one of these objects and then touch your nose or eyes, you could develop a disease.'),
    (1, 'Respiratory Syncytial Virus Infection (RSV)', 'Respiratory viruses are spread by droplets generated through coughing or sneezing. If someone with a viral illness coughs or sneezes nearby and you inhale these droplets, you may develop the disease. These viruses can also be spread through contaminated objects, such as doorknobs, tabletops, and personal items. If you touch one of these objects and then touch your nose or eyes, you could develop a disease.'),
    (1, 'Parainfluenza Virus Infection', 'Respiratory viruses are spread by droplets generated through coughing or sneezing. If someone with a viral illness coughs or sneezes nearby and you inhale these droplets, you may develop the disease. These viruses can also be spread through contaminated objects, such as doorknobs, tabletops, and personal items. If you touch one of these objects and then touch your nose or eyes, you could develop a disease.'),
    (1, 'Severe Acute Respiratory Syndrome (SARS)', 'Respiratory viruses are spread by droplets generated through coughing or sneezing. If someone with a viral illness coughs or sneezes nearby and you inhale these droplets, you may develop the disease. These viruses can also be spread through contaminated objects, such as doorknobs, tabletops, and personal items. If you touch one of these objects and then touch your nose or eyes, you could develop a disease.'),
    (2, 'Norovirus Infection', 'Gastrointestinal viruses are shed in the stool during bowel movements. Food or water that’s been contaminated by feces can spread the virus to others. You can also get the virus from sharing utensils or personal objects with someone who has a virus. '),
    (2, 'Rotavirus Infection', 'Gastrointestinal viruses are shed in the stool during bowel movements. Food or water that’s been contaminated by feces can spread the virus to others. You can also get the virus from sharing utensils or personal objects with someone who has a virus. '),
    (2, 'Astrovirus Infection', 'Gastrointestinal viruses are shed in the stool during bowel movements. Food or water that’s been contaminated by feces can spread the virus to others. You can also get the virus from sharing utensils or personal objects with someone who has a virus. '),
    (3, 'Measles', 'Many exanthematous viruses are spread through respiratory droplets from the cough or sneeze of someone with the virus. \nOther exanthematous viral diseases, such as chickenpox and smallpox, can be transmitted by coming into contact with fluid in broken skin lesions.'),
    (3, 'Rubella', 'Many exanthematous viruses are spread through respiratory droplets from the cough or sneeze of someone with the virus. \nOther exanthematous viral diseases, such as chickenpox and smallpox, can be transmitted by coming into contact with fluid in broken skin lesions.'),
    (3, 'Chickenpos/Shingles', 'Many exanthematous viruses are spread through respiratory droplets from the cough or sneeze of someone with the virus. \nOther exanthematous viral diseases, such as chickenpox and smallpox, can be transmitted by coming into contact with fluid in broken skin lesions. \nShingles only occurs in people who’ve had chickenpox at some point. It’s a reactivation of the varicella-zoster virus that’s been lying dormant in your cells.'),
    (3, 'Roseola', 'Many exanthematous viruses are spread through respiratory droplets from the cough or sneeze of someone with the virus. \nOther exanthematous viral diseases, such as chickenpox and smallpox, can be transmitted by coming into contact with fluid in broken skin lesions.'),
    (3, 'Smallpox', 'Many exanthematous viruses are spread through respiratory droplets from the cough or sneeze of someone with the virus. \nOther exanthematous viral diseases, such as chickenpox and smallpox, can be transmitted by coming into contact with fluid in broken skin lesions.'),
    (3, 'Fifth Disease', 'Many exanthematous viruses are spread through respiratory droplets from the cough or sneeze of someone with the virus. \nOther exanthematous viral diseases, such as chickenpox and smallpox, can be transmitted by coming into contact with fluid in broken skin lesions.'),
    (3, 'Chikungunya Virus Infection', 'Many exanthematous viruses are spread through respiratory droplets from the cough or sneeze of someone with the virus. \nOther exanthematous viral diseases, such as chickenpox and smallpox, can be transmitted by coming into contact with fluid in broken skin lesions. \nChikungunya virus is spread through a mosquito bite and cannot be transmitted from person to person.'),
    (4, 'Hepatitis A', 'People get hepatitis A and E by consuming food or water that’s been contaminated with feces from someone with the virus.'),
    (4, 'Hepatitis B', 'Hepatitis B and C can be transmitted from person to person through bodily fluids. Sharing items that come in to contact with blood, such as needles or razors, can also spread the virus. Hepatitis B can be spread through sexual contact.'),
    (4, 'Hepatitis C', 'Hepatitis B and C can be transmitted from person to person through bodily fluids. Sharing items that come in to contact with blood, such as needles or razors, can also spread the virus. Hepatitis B can be spread through sexual contact.'),
    (4, 'Hepatitis D', 'You can only develop hepatitis D if you already have the hepatitis B virus. '),
    (4, 'Hepatitis E', 'People get hepatitis A and E by consuming food or water that’s been contaminated with feces from someone with the virus.'),
    (5, 'Warts', 'These viruses are contagious. They’re usually spread through close physical contact with someone who has the virus or touching a contaminated object, such as a towel or faucet handle.'),
    (5, 'Oral Herpes', 'These viruses are contagious. They’re usually spread through close physical contact with someone who has the virus or touching a contaminated object, such as a towel or faucet handle.'),
    (5, 'Genital Herpes', 'These viruses are contagious. They’re usually spread through close physical contact with someone who has the virus or touching a contaminated object, such as a towel or faucet handle.'),
    (5, 'Molluscum Contagiosum', 'These viruses are contagious. They’re usually spread through close physical contact with someone who has the virus or touching a contaminated object, such as a towel or faucet handle.'),
    (6, 'Ebola', 'Some hemorrhagic viral diseases, such as dengue fever and yellow fever, are spread through the bite of an infected insect. \nOthers, such as Ebola, are spread to other people through contact with the blood or other bodily fluid of someone with the virus. Lassa fever is spread through inhaling or consuming the dried feces or urine of a rodent with the virus.'),
    (6, 'Lassa Fever', 'Some hemorrhagic viral diseases, such as dengue fever and yellow fever, are spread through the bite of an infected insect. \nOthers, such as Ebola, are spread to other people through contact with the blood or other bodily fluid of someone with the virus. Lassa fever is spread through inhaling or consuming the dried feces or urine of a rodent with the virus.'),
    (6, 'Dengue Fever', 'Some hemorrhagic viral diseases, such as dengue fever and yellow fever, are spread through the bite of an infected insect. \nOthers, such as Ebola, are spread to other people through contact with the blood or other bodily fluid of someone with the virus. Lassa fever is spread through inhaling or consuming the dried feces or urine of a rodent with the virus.'),
    (6, 'Yellow Fever', 'Some hemorrhagic viral diseases, such as dengue fever and yellow fever, are spread through the bite of an infected insect. \nOthers, such as Ebola, are spread to other people through contact with the blood or other bodily fluid of someone with the virus. Lassa fever is spread through inhaling or consuming the dried feces or urine of a rodent with the virus.'),
    (6, 'Marburg Hemorrhagic Fever', 'Some hemorrhagic viral diseases, such as dengue fever and yellow fever, are spread through the bite of an infected insect. \nOthers, such as Ebola, are spread to other people through contact with the blood or other bodily fluid of someone with the virus. Lassa fever is spread through inhaling or consuming the dried feces or urine of a rodent with the virus.'),
    (6, 'Crimean-Congo Hemorrhagic Fever', 'Some hemorrhagic viral diseases, such as dengue fever and yellow fever, are spread through the bite of an infected insect. \nOthers, such as Ebola, are spread to other people through contact with the blood or other bodily fluid of someone with the virus. Lassa fever is spread through inhaling or consuming the dried feces or urine of a rodent with the virus.'),
    (7, 'Polio', 'Many neurologic viruses are spread through the bite of an infected animal or bug, such as a mosquito or tick. \nOther viruses, such poliovirus and other enteroviruses, are quite contagious and spread through close contact with someone with the virus. Contaminated objects can also contribute to the spread of these viruses.'),
    (7, 'Viral Meningitis', 'Many neurologic viruses are spread through the bite of an infected animal or bug, such as a mosquito or tick. \nOther viruses, such poliovirus and other enteroviruses, are quite contagious and spread through close contact with someone with the virus. Contaminated objects can also contribute to the spread of these viruses.'),
    (7, 'Viral Encephalitis', 'Many neurologic viruses are spread through the bite of an infected animal or bug, such as a mosquito or tick. \nOther viruses, such poliovirus and other enteroviruses, are quite contagious and spread through close contact with someone with the virus. Contaminated objects can also contribute to the spread of these viruses.'),
    (7, 'Rabies', 'Many neurologic viruses are spread through the bite of an infected animal or bug, such as a mosquito or tick. \nOther viruses, such poliovirus and other enteroviruses, are quite contagious and spread through close contact with someone with the virus. Contaminated objects can also contribute to the spread of these viruses.');