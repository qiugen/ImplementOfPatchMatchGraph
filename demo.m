%load data
path='C:\Users\HP\Documents\GitHub\ImplementOfPatchMatchGraph';
true_class_matrix=load([path '\data\label_image_ground_truth.txt']);
result_matrix=load([path '\data\label_image_result.txt']);
%call the accuracy statistical function
[class_name base_num_list  error_num_list accuracy_rate] = accuracy_test(true_class_matrix,result_matrix);
%output result
 for k=1:size(class_name)
     disp(['class_' int2str(class_name(k)) ' has number:' int2str(base_num_list(k)) ', error: ' int2str(error_num_list(k)) ', the accuracy rate: ' num2str(accuracy_rate(k))]);
 end