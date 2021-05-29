  
class Preprocessing(object):
    def process(self, rows, axis):
        """ 
        Input: panda series
        Output with axis for return:
            # 0 = SumBasic
            # 1 = SumBasic order
            # 2 = Sentence length
            # 3 = Sentence
        """    
        sentences, processed = self.cleaning(rows)
        sumbasic, sumbasic_order, frequency = self.sumBasic(sentences, processed)
        if axis == 0:
          return sumbasic
        elif axis == 1:
          return sumbasic_order
        elif axis == 2:
          return frequency
        elif axis == 3:
          return sentences

    def cleaning(self, rows):
        from Sastrawi.StopWordRemover.StopWordRemoverFactory import StopWordRemoverFactory
        from nltk.tokenize import sent_tokenize
        import re

        sentences = []
        processed = []
        factory = StopWordRemoverFactory()
        stop_words = factory.get_stop_words()

        for row in sent_tokenize(rows):
            sentences.append(sent_tokenize(row))
        sentences = [y for x in sentences for y in x]
        # sentences = tokenize raw paragraph <list>

        for text in sentences:
            text = text.lower()
            text = re.sub(r"[^a-zA-Z]", " ", text)
            text = re.sub(r"\b\w{1,3}\b"," ",text)
            text = " ".join([word for word in text.split() if not word in stop_words])
            processed.append(text)
        # processed = tokenize cleaned text <list>
        return sentences, processed

    
    

    def sumBasic(self, sentences, processed):
        from nltk.tokenize import word_tokenize
        def sorting(e):
            return e[2]

        # Count the sum weights
        frequency = {}
        for text in processed:
            for word in word_tokenize(text):
                if word not in frequency.keys():
                    frequency[word]=1
                else:
                    frequency[word]+=1
        max_fre = max(frequency.values())
        for word in frequency.keys():
            frequency[word]=(frequency[word]/max_fre)
        
        # Score the weight for every sentence
        scores = {}
        sentence_count = 0
        sentence_len = []
        for i, sentence in enumerate(processed):
            if (len(sentence) != 0):
                for word in word_tokenize(sentence):  
                    if word in frequency.keys():
                        if i not in scores.keys():
                            scores[i] = frequency[word]            
                        else:
                            scores[i] += frequency[word]
                            sentence_count += 1
            else:
                scores[i] = 0.0000001
            sentence_len.append(sentence_count)
            sentence_count = 0

        ranked_sentences = sorted(([scores[i],i+1,s] for i,s in enumerate(sentences)), reverse=True)

        # Return list(SumBasic weights, SumBasic order, sentence order, sentence) => sum_bas
        sum_bas = []
        for index, sentence in enumerate(ranked_sentences):
            sentence.insert(1, index+1)
            sum_bas.append(sentence)

        sum_bas = sorted(sum_bas,key=sorting)

        SB_weight = []
        SB_order = []
        for i in range(len(sum_bas)):
            SB_weight.append(sum_bas[i][0])
            SB_order.append(sum_bas[i][1])
        # Return 3 list(Sumbasic weights, Sumbasic order, sentence length)
        return SB_weight, SB_order, sentence_len