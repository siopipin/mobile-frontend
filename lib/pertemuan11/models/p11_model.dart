class CustomerModel {
  String? idCustomer;
  String? createDate;
  String? idEmployee;
  String? nameEmployee;
  String? nikSjs;
  String? nikCustomer;
  String? position;
  String? noKtp;
  String? mobilePhone;
  String? noKk;
  String? taxNumber;
  String? noBpjsTk;
  String? noBpjsKes;
  Null? noBpjsPensiun;
  String? maritalStatus;
  String? endContractPkwt1Suksesindo;
  Null? endContractPkwt2Suksesindo;
  Null? endContractPkwt3Suksesindo;
  Null? endContractPkwt4Suksesindo;
  String? noNikCouple;
  String? nameCouple;
  String? nameChild1;
  String? nameChild2;
  dynamic nameChild3;
  String? address;
  String? currentLivingAddress;
  Null? statusOut;
  Null? firedKodeKategori;
  String? nameBank;
  String? accountNumberBank;
  String? accountNameBank;
  String? email;
  String? biologicalMotherName;
  String? gender;
  String? placeOfBirth;
  String? dateOfBirth;
  String? idProvince;
  String? idRegencie;
  String? districts;
  String? village;
  String? postalCode;
  String? educationLevel1;
  String? schoolName1;
  String? department1;
  String? accountNumberBankPath;
  String? noKkPath;
  Null? noBpjsTkPath;
  Null? noBpjsKesPath;
  String? basicSalary;
  String? cutiBalance;
  String? cutiTaken;
  String? cutiLeave;
  String? statusWork;
  String? startDateJointSjs;
  Null? statusBpjsKes;
  String? fotoProfile;
  Null? firedDate;
  String? nameProvince;
  String? nameRegencie;
  Null? pathSignature;
  bool? verifikasiKtp;
  String? messageKtp;

  CustomerModel(
      {this.idCustomer,
      this.createDate,
      this.idEmployee,
      this.nameEmployee,
      this.nikSjs,
      this.nikCustomer,
      this.position,
      this.noKtp,
      this.mobilePhone,
      this.noKk,
      this.taxNumber,
      this.noBpjsTk,
      this.noBpjsKes,
      this.noBpjsPensiun,
      this.maritalStatus,
      this.endContractPkwt1Suksesindo,
      this.endContractPkwt2Suksesindo,
      this.endContractPkwt3Suksesindo,
      this.endContractPkwt4Suksesindo,
      this.noNikCouple,
      this.nameCouple,
      this.nameChild1,
      this.nameChild2,
      this.nameChild3,
      this.address,
      this.currentLivingAddress,
      this.statusOut,
      this.firedKodeKategori,
      this.nameBank,
      this.accountNumberBank,
      this.accountNameBank,
      this.email,
      this.biologicalMotherName,
      this.gender,
      this.placeOfBirth,
      this.dateOfBirth,
      this.idProvince,
      this.idRegencie,
      this.districts,
      this.village,
      this.postalCode,
      this.educationLevel1,
      this.schoolName1,
      this.department1,
      this.accountNumberBankPath,
      this.noKkPath,
      this.noBpjsTkPath,
      this.noBpjsKesPath,
      this.basicSalary,
      this.cutiBalance,
      this.cutiTaken,
      this.cutiLeave,
      this.statusWork,
      this.startDateJointSjs,
      this.statusBpjsKes,
      this.fotoProfile,
      this.firedDate,
      this.nameProvince,
      this.nameRegencie,
      this.pathSignature,
      this.verifikasiKtp,
      this.messageKtp});

  CustomerModel.fromJson(Map<String, dynamic> json) {
    idCustomer = json['id_customer'];
    createDate = json['create_date'];
    idEmployee = json['id_employee'];
    nameEmployee = json['name_employee'];
    nikSjs = json['nik_sjs'];
    nikCustomer = json['nik_customer'];
    position = json['position'];
    noKtp = json['no_ktp'];
    mobilePhone = json['mobile_phone'];
    noKk = json['no_kk'];
    taxNumber = json['tax_number'];
    noBpjsTk = json['no_bpjs_tk'];
    noBpjsKes = json['no_bpjs_kes'];
    noBpjsPensiun = json['no_bpjs_pensiun'];
    maritalStatus = json['marital_status'];
    endContractPkwt1Suksesindo = json['end_contract_pkwt_1_suksesindo'];
    endContractPkwt2Suksesindo = json['end_contract_pkwt_2_suksesindo'];
    endContractPkwt3Suksesindo = json['end_contract_pkwt_3_suksesindo'];
    endContractPkwt4Suksesindo = json['end_contract_pkwt_4_suksesindo'];
    noNikCouple = json['no_nik_couple'];
    nameCouple = json['name_couple'];
    nameChild1 = json['name_child_1'];
    nameChild2 = json['name_child_2'];
    nameChild3 = json['name_child_3'];
    address = json['address'];
    currentLivingAddress = json['current_living_address'];
    statusOut = json['status_out'];
    firedKodeKategori = json['fired_kode_kategori'];
    nameBank = json['name_bank'];
    accountNumberBank = json['account_number_bank'];
    accountNameBank = json['account_name_bank'];
    email = json['email'];
    biologicalMotherName = json['biological_mother_name'];
    gender = json['gender'];
    placeOfBirth = json['place_of_birth'];
    dateOfBirth = json['date_of_birth'];
    idProvince = json['id_province'];
    idRegencie = json['id_regencie'];
    districts = json['districts'];
    village = json['village'];
    postalCode = json['postal_code'];
    educationLevel1 = json['education_level_1'];
    schoolName1 = json['school_name_1'];
    department1 = json['department_1'];
    accountNumberBankPath = json['account_number_bank_path'];
    noKkPath = json['no_kk_path'];
    noBpjsTkPath = json['no_bpjs_tk_path'];
    noBpjsKesPath = json['no_bpjs_kes_path'];
    basicSalary = json['basic_salary'];
    cutiBalance = json['cuti_balance'];
    cutiTaken = json['cuti_taken'];
    cutiLeave = json['cuti_leave'];
    statusWork = json['status_work'];
    startDateJointSjs = json['start_date_joint_sjs'];
    statusBpjsKes = json['status_bpjs_kes'];
    fotoProfile = json['foto_profile'];
    firedDate = json['fired_date'];
    nameProvince = json['name_province'];
    nameRegencie = json['name_regencie'];
    pathSignature = json['path_signature'];
    verifikasiKtp = json['verifikasi_ktp'];
    messageKtp = json['message_ktp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_customer'] = this.idCustomer;
    data['create_date'] = this.createDate;
    data['id_employee'] = this.idEmployee;
    data['name_employee'] = this.nameEmployee;
    data['nik_sjs'] = this.nikSjs;
    data['nik_customer'] = this.nikCustomer;
    data['position'] = this.position;
    data['no_ktp'] = this.noKtp;
    data['mobile_phone'] = this.mobilePhone;
    data['no_kk'] = this.noKk;
    data['tax_number'] = this.taxNumber;
    data['no_bpjs_tk'] = this.noBpjsTk;
    data['no_bpjs_kes'] = this.noBpjsKes;
    data['no_bpjs_pensiun'] = this.noBpjsPensiun;
    data['marital_status'] = this.maritalStatus;
    data['end_contract_pkwt_1_suksesindo'] = this.endContractPkwt1Suksesindo;
    data['end_contract_pkwt_2_suksesindo'] = this.endContractPkwt2Suksesindo;
    data['end_contract_pkwt_3_suksesindo'] = this.endContractPkwt3Suksesindo;
    data['end_contract_pkwt_4_suksesindo'] = this.endContractPkwt4Suksesindo;
    data['no_nik_couple'] = this.noNikCouple;
    data['name_couple'] = this.nameCouple;
    data['name_child_1'] = this.nameChild1;
    data['name_child_2'] = this.nameChild2;
    data['name_child_3'] = this.nameChild3;
    data['address'] = this.address;
    data['current_living_address'] = this.currentLivingAddress;
    data['status_out'] = this.statusOut;
    data['fired_kode_kategori'] = this.firedKodeKategori;
    data['name_bank'] = this.nameBank;
    data['account_number_bank'] = this.accountNumberBank;
    data['account_name_bank'] = this.accountNameBank;
    data['email'] = this.email;
    data['biological_mother_name'] = this.biologicalMotherName;
    data['gender'] = this.gender;
    data['place_of_birth'] = this.placeOfBirth;
    data['date_of_birth'] = this.dateOfBirth;
    data['id_province'] = this.idProvince;
    data['id_regencie'] = this.idRegencie;
    data['districts'] = this.districts;
    data['village'] = this.village;
    data['postal_code'] = this.postalCode;
    data['education_level_1'] = this.educationLevel1;
    data['school_name_1'] = this.schoolName1;
    data['department_1'] = this.department1;
    data['account_number_bank_path'] = this.accountNumberBankPath;
    data['no_kk_path'] = this.noKkPath;
    data['no_bpjs_tk_path'] = this.noBpjsTkPath;
    data['no_bpjs_kes_path'] = this.noBpjsKesPath;
    data['basic_salary'] = this.basicSalary;
    data['cuti_balance'] = this.cutiBalance;
    data['cuti_taken'] = this.cutiTaken;
    data['cuti_leave'] = this.cutiLeave;
    data['status_work'] = this.statusWork;
    data['start_date_joint_sjs'] = this.startDateJointSjs;
    data['status_bpjs_kes'] = this.statusBpjsKes;
    data['foto_profile'] = this.fotoProfile;
    data['fired_date'] = this.firedDate;
    data['name_province'] = this.nameProvince;
    data['name_regencie'] = this.nameRegencie;
    data['path_signature'] = this.pathSignature;
    data['verifikasi_ktp'] = this.verifikasiKtp;
    data['message_ktp'] = this.messageKtp;
    return data;
  }
}
