*** Settings ***
#Libraries
Library    RequestsLibrary
Library    JSONLibrary
Library    String
Library    Collections
Library    OperatingSystem
Library    BuiltIn
Library    JsonValidator
Library    DatabaseLibrary
Library    DateTime

Library    ../resource/utils/generate_curl.py


#Index api
Resource    ../resource/API/index_ambiente.resource
Resource    ../resource/API/index_edps_api.resource

# Index input
Resource    ../resource/data/input/credentials/credentials.resource
Resource    ../resource/data/input/credentials/input_headers.resource

# Common
Resource    ../resource/keywords/common/kws_shared.robot
Resource    ../resource/keywords/common/setups.robot

# Keywords
Resource    ../resource/utils/gherkin_ptbr.robot

# API
Resource    ../resource/keywords/API_/GET_issues.robot
