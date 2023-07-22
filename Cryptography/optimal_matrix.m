%reading the audio file
[a fs]=audioread("C:\Users\pooja\Desktop\Cryptography\sig100.wav")

%extracting the first 10 seconds of the audio file
a_cut = a((fs * (10- 1)) + 1 : fs * ( 20- 1), :)

%changing the stereo wav file into a mono stream
a_cut_mono=reshape(a_cut,[],1)


%padding zeros to make a square matrix

sq_wave = [a_cut_mono,zeros(7200,7199)]

%generating a random key
key=rand(size(sq_wave))

%encryption
enc=sq_wave*key
enc_col=enc(:,1)

%decryption
dec=enc*inv(key)
dec=dec(:,1)


%converting it back into a 2 channel file
orig=reshape(dec,[],2);

%comparison of original file and decrypted file
a_cut
orig


%plotting the original, encrypted and decrypted waves

%original 2 channel waveform

t_og=(0:length(a_cut)-1)/fs
plot(t_og,a_cut)
xlabel("Time")
ylabel("Amplitude")

%encrypted mono channel waveform
t_enc=(0:length(enc_col)-1)/fs
plot(t_enc,enc_col,'g')
xlabel("Time")
ylabel("Amplitude")

%decrypted 2 channel waveform
t_dec=(0:length(orig)-1)/fs
plot(t_dec,orig)
xlabel("Time")
ylabel("Amplitude")
