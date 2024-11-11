result:
	gcc dberror.c storage_mgr.c test_assign1_1.c -o test1_assign1
	./test1_assign1

clean:
	$(RM) test1_assign1
	


	
