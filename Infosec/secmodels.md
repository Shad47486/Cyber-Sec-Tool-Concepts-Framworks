# How can we create a system that ensures one or more security functions?

* USING SECURITY MODELS

* Foundational Models:
  * Bell-LaPadula Model
  * The Biba Integrity Model
  * The Clark-Wilson Model

## What is the Bell-LaPadula Model?

* Aims to achieve confidentiality by specifying three rules:
  * Simple Security Property-
    * Property is referred to as “no read up”; it states that a subject at a lower security level cannot read an object at a higher security level.
      * This rule prevents access to sensitive information above the authorized level.
  * Star Security Property -
    * Property is referred to as “no write down”; it states that a subject at a higher security level cannot write to an object at a lower security level.
      * This rule prevents the disclosure of sensitive information to a subject of lower security level.
  * Discretionary-Security Property -
    * Property uses an access matrix to allow read and write operations.
    * EX: Access matrix is shown in the table below and used in conjunction with the first two properties.

* The first two properties can be summarized as “write up, read down.”
  * You can share confidential information with people of higher security clearance (write up), and you can receive confidential information from people with lower security clearance (read down).
    * This model is not designed to handle file-sharing

## What is the Biba Model?

* aims to achieve integrity by specifying two main rules:
  * Simple Integrity Property:
    * This property is referred to as “no read down”; a higher integrity subject should not read from a lower integrity object.
  * Star Integrity Property:
    * This property is referred to as “no write up”; a lower integrity subject should not write to a higher integrity object.

* These 2 properties can be summarized as “read up, write down.”
  * This rule is in contrast with the Bell-LaPadula Model, and this should not be surprising as one is concerned with confidentiality while the other is with integrity.
    * Does not handle internal threats (insider threat).

## What is the Clark-Wilson Model?

* Aims to achieve integrity by using the following concepts:
  * Constrained Data Item (CDI):
    * This refers to the data type whose integrity we want to preserve.
  * Unconstrained Data Item (UDI):
    * This refers to all data types beyond CDI, such as user and system input.
  * Transformation Procedures (TPs):
    * These procedures are programmed operations, such as read and write, and should maintain the integrity of CDIs.
  * Integrity Verification Procedures (IVPs):
    * These procedures check and ensure the validity of CDIs.
