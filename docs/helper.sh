function sum {
  echo $(( $1 + $2 ))
}

function tutorial::setup {
  TT_START_TIME=$SECONDS
}

function tutorial::teardown {
  if [[ $TT_PRINT_TIME_ELAPSED == 1 ]]; then
    elapsed_time=$(($SECONDS - $TT_START_TIME))
    log::info "Total elapsed time: $elapsed_time seconds"
  fi
}

function tutorial::features-setup-and-teardown-setup {
  # check dependancy
  tutorial::depends features/basics features/implicit-code
  # create temp file
  temp_file=$(mktemp)
  log::info "The temp file $temp_file has been created."
}

function tutorial::features-setup-and-teardown-teardown {
  # delete temp file
  rm -f $temp_file
  log::info "The temp file $temp_file has been deleted."
}
