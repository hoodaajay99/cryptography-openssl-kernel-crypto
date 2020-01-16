# !/bin/sh

# How to use it
# Remove Front Matter
# Cleanup any Special Chars -,.?()[] etc
# ./script <Input File>

OUTPUT_FOLDER=docs
SIDEBAR_FILE=sidebar.json

# sidebar.json
# {
#     "docs": {
#         "Course Introduction": [
#             "00-Course-Introduction/course-introduction"
#         ],
#         "Welcome": [
#             "02-Welcome/about-me",
#         ]
#     }
# }

if [ $# -lt 1 ]; then
    echo "ERROR: Usage: ./script <Input File>"
    exit 1
fi

# Create SIDEBAR_FILE
echo '{' > ${SIDEBAR_FILE}
echo '    "docs":' >> ${SIDEBAR_FILE}
echo '    {' >> ${SIDEBAR_FILE}

FC=0
SFC=0
#FILE_COUNTER=0;

while read f; do

    case ${f:0:2} in
    '##')
        FC=$((${FC} + 2))
        F_BASE=${f:3}

        if [ $FC -lt 10 ]; then
            F_STR=0$FC-${F_BASE}
        else
            F_STR=$FC-${F_BASE}
        fi
        F_STR1=${F_STR// /-}
        echo $F_STR1

        # update Sidebar
        echo "        ]," >> ${SIDEBAR_FILE}
        TEXT="${F_BASE}";
        echo '        "'${TEXT}'"' ': [' >> ${SIDEBAR_FILE}

        # Reset SFC
        SFC=0
        ;;
    esac

    case ${f:0:1} in
    '-')
        SFC=$((${SFC} + 2))
        SF_BASE=${f:2}

        if [ $SFC -lt 10 ]; then
            SF_STR=0$SFC-${SF_BASE}
        else
            SF_STR=$SFC-${SF_BASE}
        fi
        SF_STR1=${SF_STR// /-}
        echo $SF_STR1

        # Create Files
        mkdir -p ${OUTPUT_FOLDER}/$F_STR1/$SF_STR1

        FILEPATH=${OUTPUT_FOLDER}/${F_STR1}/${SF_STR1}
        FILEBASENAME=${SF_BASE// /-}
        FILE=${FILEPATH}/${FILEBASENAME}.md

        echo "${FILE}"
        # Create Front Mater
        # ---
        # id: about-me
        # title: About Me
        # sidebar_label: About Me
        # ---

        echo "---" >${FILE}
        echo "id: ${FILEBASENAME}" >>${FILE}
        echo "title: ${SF_BASE}" >>${FILE}
        echo "sidebar_label: ${SF_BASE}" >>${FILE}
        echo "---" >>${FILE}
        echo "" >>${FILE}
        echo "" >>${FILE}
        echo "#" >>${FILE}

        # update Sidebar
        TEXT="${F_STR1}/${SF_STR1}/${FILEBASENAME}";
        echo '            "'${TEXT}'"'','>> ${SIDEBAR_FILE}

        ;;

    esac

done \
    <$1

# Update sidebar.json
echo '    }' >> ${SIDEBAR_FILE}
echo '}' >> ${SIDEBAR_FILE}
