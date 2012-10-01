hs-compiler-str = ghc -O3 -o
all: haskell vhdl

haskell:
	$(hs-compiler-str) problem1/hs/problem1	  problem1/hs/problem1.hs
	$(hs-compiler-str) problem2/hs/problem2	  problem2/hs/problem2.hs
	$(hs-compiler-str) problem3/hs/problem3   problem3/hs/problem3.hs
	$(hs-compiler-str) problem5/hs/problem5   problem5/hs/problem5.hs
	$(hs-compiler-str) problem6/hs/problem6	  problem6/hs/problem6.hs
	$(hs-compiler-str) problem8/hs/problem8   problem8/hs/problem8.hs
	$(hs-compiler-str) problem9/hs/problem9   problem9/hs/problem9.hs
	$(hs-compiler-str) problem16/hs/problem16 problem16/hs/problem16.hs
	$(hs-compiler-str) problem20/hs/problem20 problem20/hs/problem20.hs
	$(hs-compiler-str) problem24/hs/problem24 problem24/hs/problem24.hs
	$(hs-compiler-str) problem25/hs/problem25 problem25/hs/problem25.hs
	$(hs-compiler-str) problem29/hs/problem29 problem29/hs/problem29.hs
	$(hs-compiler-str) problem30/hs/problem30 problem30/hs/problem30.hs
	$(hs-compiler-str) problem36/hs/problem36 problem36/hs/problem36.hs
	$(hs-compiler-str) problem40/hs/problem40 problem40/hs/problem40.hs
	$(hs-compiler-str) problem41/hs/problem41 problem41/hs/problem41.hs
	$(hs-compiler-str) problem48/hs/problem48 problem48/hs/problem48.hs
	$(hs-compiler-str) problem55/hs/problem52 problem52/hs/problem52.hs
	$(hs-compiler-str) problem55/hs/problem52 problem52/hs/problem53.hs
	$(hs-compiler-str) problem55/hs/problem55 problem55/hs/problem55.hs
	$(hs-compiler-str) problem56/hs/problem56 problem56/hs/problem56.hs

vhdl:
	cd problem1/vhdl; ghdl -a --ieee=synopsys -fexplicit *.vhd
	cd problem1/vhdl; ghdl -e --ieee=synopsys -fexplicit problem1

clean:
	rm -rf */*/*.o */*/*.hi */*/*.cf
