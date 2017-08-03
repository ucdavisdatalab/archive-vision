#
EXT=.exe
NAME1=processImages
NAME2=scanDatabase
NAME3=drawMatches
NAME4=showKeypoints
NAME5=indexDatabase
NAME6=scanDatabaseImage
DIR=.
NAMEFUL1=$(DIR)/$(NAME1)$(EXT)
NAMEFUL2=$(DIR)/$(NAME2)$(EXT)
NAMEFUL3=$(DIR)/$(NAME3)$(EXT)
NAMEFUL4=$(DIR)/$(NAME4)$(EXT)
NAMEFUL5=$(DIR)/$(NAME5)$(EXT)
NAMEFUL6=$(DIR)/$(NAME6)$(EXT)

CC = g++
CFLAGS = -c -O
LDFLAGS = -O 
LIBS=-L/usr/local/lib
LIBRARIES=-lopencv_core -lopencv_nonfree -lopencv_imgproc -lopencv_highgui -lopencv_features2d -lopencv_flann -lopencv_contrib -lopencv_ml -lopencv_objdetect -lopencv_video -lopencv_videostab -lopencv_calib3d -lopencv_ocl -lopencv_photo -lopencv_stitching

.cpp.o :
	$(CC) $(CFLAGS) $<

OBJECTS1 = \
$(NAME1).o 

OBJECTS2 = \
$(NAME2).o 

OBJECTS3 = \
$(NAME3).o 

OBJECTS4 = \
$(NAME4).o 

OBJECTS5 = \
$(NAME5).o 

OBJECTS6 = \
$(NAME6).o 

$(NAMEFUL1) : $(OBJECTS1)
	$(CC) -o $(NAMEFUL1) $(LDFLAGS) $(OBJECTS1) $(LIBS) $(LIBRARIES)

$(NAMEFUL2) : $(OBJECTS2)
	$(CC) -o $(NAMEFUL2) $(LDFLAGS) $(OBJECTS2) $(LIBS) $(LIBRARIES)

$(NAMEFUL3) : $(OBJECTS3)
	$(CC) -o $(NAMEFUL3) $(LDFLAGS) $(OBJECTS3) $(LIBS) $(LIBRARIES)

$(NAMEFUL4) : $(OBJECTS4)
	$(CC) -o $(NAMEFUL4) $(LDFLAGS) $(OBJECTS4) $(LIBS) $(LIBRARIES)

$(NAMEFUL5) : $(OBJECTS5)
	$(CC) -o $(NAMEFUL5) $(LDFLAGS) $(OBJECTS5) $(LIBS) $(LIBRARIES)

$(NAMEFUL6) : $(OBJECTS6)
	$(CC) -o $(NAMEFUL6) $(LDFLAGS) $(OBJECTS6) $(LIBS) $(LIBRARIES)

all: $(OBJECTS1) $(OBJECTS2) $(OBJECTS3) $(OBJECTS4) $(OBJECTS5) $(OBJECTS6)
	$(CC) -o $(NAMEFUL1) $(LDFLAGS) $(OBJECTS1) $(LIBS) $(LIBRARIES)
	$(CC) -o $(NAMEFUL2) $(LDFLAGS) $(OBJECTS2) $(LIBS) $(LIBRARIES)
	$(CC) -o $(NAMEFUL3) $(LDFLAGS) $(OBJECTS3) $(LIBS) $(LIBRARIES)
	$(CC) -o $(NAMEFUL4) $(LDFLAGS) $(OBJECTS4) $(LIBS) $(LIBRARIES)
	$(CC) -o $(NAMEFUL5) $(LDFLAGS) $(OBJECTS5) $(LIBS) $(LIBRARIES)
	$(CC) -o $(NAMEFUL6) $(LDFLAGS) $(OBJECTS6) $(LIBS) $(LIBRARIES)

clean:
	touch junk.o; rm -f *.o $(NAMEFUL1) $(NAMEFUL2) $(NAMEFUL3) $(NAMEFUL4) $(NAMEFUL5) $(NAMEFUL6)

$(OBJECTS1) :
$(OBJECTS2) :
$(OBJECTS3) :
$(OBJECTS4) :
$(OBJECTS5) :
$(OBJECTS6) :
