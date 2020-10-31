setwd("C:/Users/Ethan Rohlf/Documents")
corpus <- scan("kanye_verses.txt", character(), quote = " ")

corpus <- sapply(corpus, tolower)


song1 = sample(corpus, 100, replace = T)

final_song1 = paste(song1, collapse = " ")
final_song1


long_run_1 = sample(corpus, 1000, replace = T)
sort(table(long_run_1),decreasing = T)[1:20]/1000


song2 = NULL
song2[1] = sample(corpus, 1)


for (i in 1:100){
   song2[i+1] = sample(corpus[which(corpus == song2[i])+1],1)
}

final_song2 = paste(song2, collapse = " ")
final_song2
 

long_run_2 = NULL
long_run_2[1] = sample(corpus, 1)

for (i in 1:1000){
  long_run_2[i+1] = sample(corpus[which(corpus == long_run_2[i])+1],1)
}

sort(table(long_run_2),decreasing = T)[1:20]/1000



song3 = NULL
song3[1] = sample(corpus, 1)
song3[2] = sample(corpus[which(corpus == song3[1])+1],1)


for (i in 1:100){
  m = which(corpus == song3[i]) +1
  n = which(corpus == song3[i+1])
  song3[i+2] = sample(corpus[m[m %in% n]+1], 1)
}


final_song3 = paste(song3, collapse = " ")
final_song3


long_run_3 = NULL
long_run_3[1] = sample(corpus, 1)
long_run_3[2] = sample(corpus[which(corpus == long_run_3[1])+1],1)


for (i in 1:1000){
  m = which(corpus == long_run_3[i]) +1
  n = which(corpus == long_run_3[i+1])
  long_run_3[i+2] = sample(corpus[m[m %in% n]+1], 1)
}

sort(table(long_run_3),decreasing = T)[1:20]/1000

