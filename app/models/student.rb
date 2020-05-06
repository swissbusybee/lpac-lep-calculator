class Student < ApplicationRecord
  SCHOOL_YEARS  = %w(2032-2033 2031-2032 2030-2031 2029-2030 2028-2029 2027-2028 2026-2027 2025-2026 2024-2025 2023-2024 2022-2023 2021-2022 2020-2021 2019-2020 2018-2019 2017-2018 2016-2017 2015-2016 2014-2015 2013-2014 2012-2013 2011-2012 2010-2011 2009-2010 2008-2009)
  SCHOOL_GRADES = %w(K 1 2 3 4 5 6 7 8 9 10 11 12)
  LEP_CODES     = %w(1=EL(BIL/ESL/PD) F=M1 S=M2 3=M3 4=M4)

  validates :school_year, inclusion: { in: SCHOOL_YEARS }, presence: true
  validates :school_grade, inclusion: { in: SCHOOL_GRADES }, presence: true
  validates :school_grade, inclusion: { in: LEP_CODES }, presence: true
end
