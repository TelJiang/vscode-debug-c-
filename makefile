#a saimple makefile text to have a practice
# step1:complete basic compilation functions


VPATH :=./include
incDir:=./include  #header files path

src_dir :=./src
object_dir :=./output
result_dir :=./output/bin

src :=$(wildcard $(src_dir)/*.cpp)
object :=$(subst src,output,$(subst .cpp,.o,${src}))

result_name :=result

all:${object}
	${CXX} $^ -o ${result_dir}/${result_name}

$(object_dir)/%.o:$(src_dir)/%.cpp
	${CXX} -c $< -o $@ -I ${incDir}

#clear intermediate files
.PHONY:clean
clean:
	cd output;rm -rf *.o

.PHONY:run
run:
	${result_dir}/${result_name}
