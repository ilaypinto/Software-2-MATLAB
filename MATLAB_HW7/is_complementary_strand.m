function result = is_complementary_strand(head_strand_1_dll,head_strand_2_dll)
array=[head_strand_2_dll.Data];
while ~isempty(head_strand_2_dll.Next)
    array=[head_strand_2_dll.Next.Data,array];
    head_strand_2_dll = head_strand_2_dll.Next;
end
array=flip(array);
array2=[head_strand_1_dll.Data];
while ~isempty(head_strand_1_dll.Next)
    array2=[head_strand_1_dll.Next.Data,array2];
    head_strand_1_dll = head_strand_1_dll.Next;
end
head_strand_1_dll=head_strand_1_dll.dlnode_head;
head_strand_2_dll=head_strand_1_dll.dlnode_head;
for i=1:length(array)
    array(i)=get_complementary_nuc(array(i));
end
if strcmp(array2,array)==1
    result=1;
else
    result=0;   
end
