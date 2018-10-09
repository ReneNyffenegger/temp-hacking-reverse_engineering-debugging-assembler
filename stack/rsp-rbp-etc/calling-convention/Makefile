callConventions = cdecl stdcall fastcall naked
cFiles          = $(wildCard *.c)

$(info cFiles: $cFiles)

i_targets = $(foreach c, $(callConventions), ret_func_2-$(c).i)
o_targets = $(foreach c, $(callConventions), ret_func_2-$(c).o)

all: $(o_targets)


$(i_targets) : ret_func_2.c
	gcc -DTYPE=uint64_t -DCALLING_CONVENTION=$(patsubst ret_func_2-%.i,%,$@) -E -P $< -o $@

# %i: %c
#  	gcc -DTYPE=uint_64 -DCALLING_CONVENTION=$(subst ret_func_2,,$@) -E -P $< -o $@

# $(o_targets) : $(subst .o, .i, $@)
%o : %i
	gcc -c $< -o $@
