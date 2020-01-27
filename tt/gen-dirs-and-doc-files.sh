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

        FOLDER=${outerFolderStr// /-};
        FILE_NAME_BASE=${subFolderBase// /-};
        FILE=${outerFolderStr// /-}/${subFolderStr// /-}.md
        TITLE=${outerFolderStr}
        
        echo "---";
        echo "ajay FOLDER" + $FOLDER;
        echo "ajay FILE_NAME_BASE" + $FILE_NAME_BASE;
        echo "ajay FILE" + $FILE;
    
        # Use Sub Folder
        # FOLDER=${OUTPUT_FOLDER}/${outerFolderStr}/${outerFolderStr}

        # Not use subfolder
#        FOLDER=${OUTPUT_FOLDER}/${outerFolderStr}

#        FILE_NAME_BASE=${subFolderBase// /-}
#        FILE=${FOLDER}/${outerFolderStr}.md

        mkdir -p ${FOLDER}
        touch ${FILE}

        # Create Front Mater
        # ---
        # id: about-me
        # title: About Me
        # sidebar_label: About Me
        # ---

        echo "---" >${FILE}
        echo "id: ${FILE_NAME_BASE}" >>${FILE}
        echo "title: ${subFolderBase}" >>${FILE}
        echo "sidebar_label: ${subFolderBase}" >>${FILE}
        echo "---" >>${FILE}
        echo "" >>${FILE}
        echo "" >>${FILE}
        echo "#" >>${FILE}

        # update Sidebar
        TEXT="${outerFolderStr}/${outerFolderStr}/${FILE_NAME_BASE}";
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
