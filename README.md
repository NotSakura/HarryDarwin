# Harry Potter Vs Charles Darwin Natural Selection

## Overview

We examine take 2 texts that can be as far apart from each other in terms of content and we see the language involved with it. This is interesting as we see the impact of language on text as well as how the content of text affect the language as well. The aim of the analysis is not to find rates or new information but to help the reader understand how this may help with machine learning models. 

## Abstract
This paper analyses the frequency of occurrence of certain words (\"magic\" and \"natural\") in the books Harry Potter and The Prisoner of Azkaban and Charles Darwin's Book of Evolution. Using the data provided by Gutenburg's project and PDFDrives, we were able to find the related data and analyze whether a topic of the book had any effect on the number of occurrences of each word in each text. The data found here will be related to a very important topic in Machine Learning; clustering. This is when a machine is able to see the content of data, and group them together based on what it sees.


## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from Project Gutenburg and Internet Archive.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted models. 
-   `other` contains relevant literature, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## Statement on LLM usage

The abstract and introduction were written with the help of ChatGPT and the entire chat history is available in inputs/llms/usage.txt. The link to the usage is https://chat.openai.com/share/d259a99b-d50f-4746-839f-27ba27964ac4. It was only used as a minor search engine when the question was too specific to be answered by the internet. 
