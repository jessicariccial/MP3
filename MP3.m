a = input('Enter a nx2 matrix: ');
x = a(:,1);
y = a(:,2);

if length(x)>=11
    n = 10;
else
    n = length(x)-1;
end
    values = a(n);

for i = 1:n
    A = polyfit(x,y,i);
    B = polyval(A,x);
    values(i) = norm(y-B);
end

[~,J] = min(values);
Fit = polyfit(x,y,J);

disp(Fit)
