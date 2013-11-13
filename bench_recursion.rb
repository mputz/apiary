require 'benchmark'

def rec_fibonacci(postion)
	case postion
	when 0
		return 0
	when 1
		return 1
	else
		return rec_fibonacci(postion - 1) + rec_fibonacci(postion - 2)
	end

end

def ar2_fib(position)
	
end

def ar_fibonacci(postion)
	args = [0, 1]
	while args.length <= postion
		fib = args[-1] + args[-2]
		args.push(fib)
	end
	puts args[-1]
end


Benchmark.bmbm do |bm|
	number = 10000
	bm.report("Recursiv") do	
		rec_fibonacci(number)
	end

	bm.report("iterativ") do
		ar_fibonacci(number)
	end
end