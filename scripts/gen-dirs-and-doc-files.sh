# !/bin/sh

# How to use it
# Remove Front Matter
# Cleanup any Special Chars -,.?()[] etc
# ./script <Input File>

OUTPUT_FOLDER=docs
SIDEBAR_FILE=sidebar.json

# Toggle based on whether to use sub folder
USE_SUB_FOLDER=0

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

outerFolderCounter=0
subFolderCounter=0
#FILE_COUNTER=0;

# Read File line by Line
while read line; do

    echo $line;

    # Check first 2 chars in line
    case ${line:0:2} in
    '##')

        # Remove last char in ${SIDEBAR_FILE}, hack to remove extra ','
        if [ $outerFolderCounter -gt 0 ]; then
            sed -i '$ s/.$//' ${SIDEBAR_FILE}
        fi

        outerFolderCounter=$((${outerFolderCounter} + 2)) # Increent filer outerFolderCounter by 2
        outerFolderBase=${line:3} # line after three chracters
        # echo $outerFolderBase;

        if [ $outerFolderCounter -lt 10 ]; then
            outerFolderStr=0$outerFolderCounter-${outerFolderBase}
        else
            outerFolderStr=$outerFolderCounter-${outerFolderBase}
        fi

        outerFolderStr=${outerFolderStr// /-}

        # update Sidebar
        if [ $outerFolderCounter -gt 2 ]; then
            echo "        ]," >> ${SIDEBAR_FILE}
        fi

        TEXT="${outerFolderBase}";
        echo '        "'${TEXT}'"' ': [' >> ${SIDEBAR_FILE}

        # Reset subFolderCounter
        subFolderCounter=0
        ;;
    esac

    case ${line:0:1} in
    '-')
        subFolderCounter=$((${subFolderCounter} + 2))

        subFolderBase=${line:2}

        if [ $subFolderCounter -lt 10 ]; then
            subFolderStr=0$subFolderCounter-${subFolderBase}
        else
            subFolderStr=$subFolderCounter-${subFolderBase}
        fi

        if [ $USE_SUB_FOLDER -eq 1 ]; then

            FOLDER=${OUTPUT_FOLDER}/${outerFolderStr// /-}/${subFolderStr// /-};

            MD_FILE=${OUTPUT_FOLDER}/${outerFolderStr// /-}/${subFolderStr// /-}/${subFolderStr// /-}.md
            MD_ID=${subFolderBase// /-}
            MD_TITLE=${subFolderBase}

            SIDEBAR_ENTRY=${outerFolderStr// /-}/${subFolderStr// /-}/${MD_ID}
        else 

            FOLDER=${OUTPUT_FOLDER}/${outerFolderStr// /-};

            MD_FILE=${OUTPUT_FOLDER}/${outerFolderStr// /-}/${subFolderStr// /-}.md
            MD_ID=${subFolderBase// /-}
            MD_TITLE=${subFolderBase}

            SIDEBAR_ENTRY=${outerFolderStr// /-}/${MD_ID}
        fi


        
        echo "---";
        echo "ajay FOLDER" + $FOLDER;

        echo "ajay MD_FILE" + $MD_FILE;
        echo "ajay MD_ID" + $MD_ID;
        echo "ajay MD_TITLE" + $MD_TITLE;

        echo "ajay SIDEBAR_ENTRY" + $SIDEBAR_ENTRY;
    
        mkdir -p ${FOLDER}
        touch ${MD_FILE}

        # Create Front Mater
        # ---
        # id: about-me
        # title: About Me
        # sidebar_label: About Me
        # ---

        echo "---" >${MD_FILE}
        echo "id: ${MD_ID}" >>${MD_FILE}
        echo "title: ${MD_TITLE}" >>${MD_FILE}
        echo "sidebar_label: ${MD_TITLE}" >>${MD_FILE}
        echo "---" >>${MD_FILE}
        echo "" >>${MD_FILE}
        echo "" >>${MD_FILE}
        echo "##" >>${MD_FILE}

        # update Sidebar
        TEXT="${SIDEBAR_ENTRY}";
        echo '            "'${TEXT}'"'','>> ${SIDEBAR_FILE}

        ;;

    esac

done \
    <$1

# Update sidebar.json

# Remove last char in ${SIDEBAR_FILE}, hack to remove extra ','
sed -i '$ s/.$//' ${SIDEBAR_FILE}

echo '        ]' >> ${SIDEBAR_FILE}
echo '    }' >> ${SIDEBAR_FILE}
echo '}' >> ${SIDEBAR_FILE}
