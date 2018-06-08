module Remote.Flow where

import Prelude

import Engineering.Types.App (AppFlow)
import Product.Types (BillPayFailure, BillPayStatus(..), MobileNumber, Operator, Amount)

operators :: Array Operator
operators = [
    "Airtel"
  , "Vodafone"
  , "JIO"
  , "Aircel"
  , "Docomo"
  , "BSNL"
  , "Idea"
  , "MTNL"
  , "Airtel"
  , "Vodafone"
  , "JIO"
  , "Aircel"
  , "Docomo"
  , "BSNL"
  , "Idea"
  , "MTNL"
]

fetchOperators :: AppFlow BillPayFailure (Array Operator)
fetchOperators = pure operators

payBill :: MobileNumber -> Amount -> AppFlow BillPayFailure BillPayStatus
payBill mobileNumber amount = pure SUCCESS