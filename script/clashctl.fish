set fn_arr \
clashon \
clashoff \
clashui \
clashstatus \
clashsecret \
clashtun \
clashmixin \
clashupdate \
demo

export fish_version=$FISH_VERSION

clashon() {
    clashctl on
}

for fn in $fn_arr
    eval "function $fn
        bash -i -c '$fn \"\$@\"' -- \$argv
    end"
end

