%check the accuracy of result by compare the output labeled image matrix with
%the ground truth matrix.
function [class_name  base_num_list  error_num_list accuracy_rate] = accuracy_test(true_class_matrix,result_matrix)
    %求出类别名称
    class_name=unique(true_class_matrix);
    %开始统计
    base_num_list=zeros(numel(class_name),1);
    size_image=size(true_class_matrix);
    for i=1:size_image(1)
        for j=1:size_image(2)
            inx=find(class_name==true_class_matrix(i,j));
            base_num_list(inx)=base_num_list(inx)+1;
        end
    end

    error_image=result_matrix-true_class_matrix;
    error_num_list=zeros(numel(class_name),1);
    for i=1:size_image(1)
        for j=1:size_image(2)
            if error_image(i,j)~=0
                inx=find(class_name==true_class_matrix(i,j));
                error_num_list(inx)=error_num_list(inx)+1;
            end
        end
    end
    %输出结果
    accuracy_rate=1-error_num_list./base_num_list;
end