//
// Autogenerated by Laurine - by Jiri Trecak ( http://jiritrecak.com, @jiritrecak )
// Do not change this file manually!
//


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Imports

import Foundation


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Localizations


public class Localizations {


    public class InputValidation {

        /// Base translation: Field could not be validated
        public static var NotValidated : String = NSLocalizedString("INPUT_VALIDATION.NOT_VALIDATED", tableName: nil, bundle: Bundle.main, comment: "")


        public class Wod {

            /// Base translation: You should define a timecap
            public static var Timecap : String = NSLocalizedString("INPUT_VALIDATION.WOD.TIMECAP", tableName: nil, bundle: Bundle.main, comment: "")

            /// Base translation: You should select a type
            public static var WodType : String = NSLocalizedString("INPUT_VALIDATION.WOD.WOD_TYPE", tableName: nil, bundle: Bundle.main, comment: "")

        }

        public class Lastname {

            /// Base translation: last name
            public static var Title : String = NSLocalizedString("INPUT_VALIDATION.LASTNAME.TITLE", tableName: nil, bundle: Bundle.main, comment: "")

        }

        public class Firstname {

            /// Base translation: first name
            public static var Title : String = NSLocalizedString("INPUT_VALIDATION.FIRSTNAME.TITLE", tableName: nil, bundle: Bundle.main, comment: "")

        }

        public class Status {

            /// Base translation: %@ empty
            public static func Empty(_ value1 : String) -> String {
                return String(format: NSLocalizedString("INPUT_VALIDATION.STATUS.EMPTY", tableName: nil, bundle: Bundle.main, comment: ""), value1)
            }

            /// Base translation: %@ invalide
            public static func Invalid(_ value1 : String) -> String {
                return String(format: NSLocalizedString("INPUT_VALIDATION.STATUS.INVALID", tableName: nil, bundle: Bundle.main, comment: ""), value1)
            }

        }

        public class Default {

            /// Base translation: field
            public static var Title : String = NSLocalizedString("INPUT_VALIDATION.DEFAULT.TITLE", tableName: nil, bundle: Bundle.main, comment: "")

        }

        public class Address {


            public class City {

                /// Base translation: city
                public static var Title : String = NSLocalizedString("INPUT_VALIDATION.ADDRESS.CITY.TITLE", tableName: nil, bundle: Bundle.main, comment: "")

            }

            public class PostalCode {

                /// Base translation: postcode
                public static var Title : String = NSLocalizedString("INPUT_VALIDATION.ADDRESS.POSTAL_CODE.TITLE", tableName: nil, bundle: Bundle.main, comment: "")

            }
        }

        public class PhoneNumber {

            /// Base translation: phone number
            public static var Title : String = NSLocalizedString("INPUT_VALIDATION.PHONE_NUMBER.TITLE", tableName: nil, bundle: Bundle.main, comment: "")

        }

        public class Email {

            /// Base translation: email
            public static var Title : String = NSLocalizedString("INPUT_VALIDATION.EMAIL.TITLE", tableName: nil, bundle: Bundle.main, comment: "")

        }

        public class Password {

            /// Base translation: Passwords do not match
            public static var Correspondance : String = NSLocalizedString("INPUT_VALIDATION.PASSWORD.CORRESPONDANCE", tableName: nil, bundle: Bundle.main, comment: "")

            /// Base translation: password
            public static var Title : String = NSLocalizedString("INPUT_VALIDATION.PASSWORD.TITLE", tableName: nil, bundle: Bundle.main, comment: "")

            /// Base translation: Your password must contain at least 6 caracters
            public static var Length : String = NSLocalizedString("INPUT_VALIDATION.PASSWORD.LENGTH", tableName: nil, bundle: Bundle.main, comment: "")

        }
    }
}