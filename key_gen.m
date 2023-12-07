a = 7; 
b = 35;
p = primes(b);
p = p(p >= a);
p_num = p(randperm(numel(p),1));
disp('THE PRIME NUMBER IS')
disp(p_num);
G=1:p_num;
primitive_root = isPrimitiveRoot(G,p_num);
z=G(primitive_root);
disp('THE PRIMITIVE ROOTS OF THE PRIME NUMBER ARE:')
disp(z)

% Public Key of user A

alpha = input('Selct one of the primitive roots');

% Private Key of user A 
error = 1;
for i = z
    if alpha==i
        error=0;
        break
    else
        error=1;
    end
end

while error == 1
    disp('Please select a number from primitive roots only')
    alpha = input('Select one of the primitive roots');
    for i = z
        if alpha==i
        error=0;
        break
    else
        error=1;
        end
    end
end
disp('Private key of A is')
X_a = input('Select a number less than the chosen prime number');
%public key generation of user A
disp('Public key of A is')
Y_a =  mod( (alpha)^X_a,p_num);
disp(Y_a)
 % USER B

% Private Key of user B
disp('Private key of B is')
X_b = input('Slect a number less than the chosen prime number');
%public key generation of user B
disp('Public key of B is')
Y_b =  mod((alpha)^X_b,p_num);
disp(Y_b)
%SECRET KEY 
k = mod( (Y_a)^ X_b, p_num);
q = mod((Y_b)^ X_a,p_num);

disp('Keys with person A')
keys_A = [Y_a,X_b,k];
disp(keys_A)
disp('Keys with person B')
keys_B = [Y_b,X_a,q];
disp(keys_B)


