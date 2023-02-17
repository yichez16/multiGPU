for i in $(seq 1 10);
do
    nvprof --profile-from-start off --aggregate-mode off --csv --event-collection-mode continuous -m nvlink_total_data_transmitted,nvlink_total_data_received,nvlink_transmit_throughput,nvlink_receive_throughput ./p2p
    nvprof --profile-from-start off --aggregate-mode off --csv --event-collection-mode continuous -m nvlink_overhead_data_transmitted,nvlink_overhead_data_received ./p2p
    nvprof --profile-from-start off --aggregate-mode off --csv --event-collection-mode continuous -m nvlink_total_response_data_received,nvlink_user_response_data_received ./p2p
    nvprof --profile-from-start off --aggregate-mode off --csv --event-collection-mode continuous -m nvlink_user_data_transmitted,nvlink_user_data_received ./p2p
    nvprof --profile-from-start off --aggregate-mode off --csv --event-collection-mode continuous -m nvlink_total_write_data_transmitted, nvlink_user_write_data_transmitted ./p2p


done


# for i in $(seq 1 10);
# do
#     nvprof --profile-from-start off --aggregate-mode off --csv --event-collection-mode kernel -m nvlink_total_data_transmitted,nvlink_total_data_received,nvlink_transmit_throughput,nvlink_receive_throughput,nvlink_overhead_data_transmitted,nvlink_overhead_data_received,nvlink_total_response_data_received,nvlink_user_response_data_received,nvlink_total_write_data_transmitted,nvlink_user_data_transmitted,nvlink_user_data_received,nvlink_user_write_data_transmitted ./p2p
    

    
# done


