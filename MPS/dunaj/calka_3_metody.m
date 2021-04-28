function c_output = calka_3_metody(c_input, ii, dt, tt, lambda,Pe, method_id)
    c_output = 0;
    t=ii*dt;
    for i=1:ii-1
        
        tau=i*dt;

        if(method_id == 1)
            sub_sum = ...
                c_input(i)*(dirac((t-tau)-tt)==inf)*exp(-lambda*(t-tau));
        end

        if(method_id == 2)
           sub_sum = ...
                c_input(i)*1/tt*exp(-(t-tau)/tt)*exp(-lambda*(t-tau));
        end

        if(method_id == 3)
            sub_sum = ...
                c_input(i)*1/sqrt(4*pi*Pe*(t-tau)/tt)*1/(t-tau)*...
                exp(-(1-(t-tau)/tt)^2/(4*Pe*(t-tau)/tt))*exp(-lambda*(t-tau));
        end
        
        c_output = c_output + sub_sum;
    end
    c_output = c_output * dt;
end

