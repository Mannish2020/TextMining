
This is a small Machine Learning Project on R, and meant to perform some basic text analyses. The file for the analysis is a basic splitting into 'ham' and 'non-ham' labels. There are 5572 observations. 

Even small text-mining projects can quickly become large and cumborsome. To properly analyze textual data using machine learning methodologies, it is necessary in many cases to have a large number of variables ('features'). A large number of features can help us to make more accurate predictions. On the other hand, this can also lead to the 'curse of dimensionality' whereby our training model is not able to make accurate predictions about our data set but not on others. 

In order to get a final text-analysis model, we need to go through several intermediary steps. The important steps are:
A. As in all ML methods, make a test/train split of the data. 
B. Tokenization: The string (textual data) is split into 'tokens'. Tokens are like words that are made suitable for natural language processing.  
C. Bag of words: After the sequence is created by tokenization, we get a 'bag of words' by disregarding the *order* of the sequence. We only care about the *frequency* of the tokens. 
D. Term frequency: This is the frequency of the tokens. 
E. Inverse document frequency: This is a measure of how *rare* a term is in a given doucment. 
F. Document-term matrix: This is matrix that describes the frequency of terms that occurs in a collection of documents. The *rows* in a DTM correspond to the documents (in our case each 'document' is a single line). The *columns* correspond to the *tokens*. 

These various processes are all performed for this analysis. Finally a cross-validation is done and the model is trained by using a decision tree. Two different models are used. In the first model, the dataset used for training uses tokens. In the second model, the dataset uses the inverse document frequency. In both cases, the accuracy is a little over 94%. 
