class Lab9Controller < ApplicationController
  def input
  end

  def view
    n_r = params[:n_s]
    if n_r != nil then
      if n_r.match?(/^\d+$/) then
        n_r = params[:n_s].chomp.to_i
        @res_x = []
        @k = 0
        (1..n_r).each { |x|
          if (x**2).to_s == (x**2).to_s.reverse
            @res_x.push(x)
            @k += 1
          end
        }
      else
        @res_x = 'Введите число правильно: только целое число без пробелов'
        @k = -1
      end
    else
      @res_x = 'Введите число правильно: только целое число без пробелов'
      @k = -1
    end
  end
end
