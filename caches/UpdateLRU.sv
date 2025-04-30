//Little context
//We have a n-way set associative cache & we are trying to determine LRU cache line/set(way)
//For a n-way set associative cache, number of counters required will be = log(n)-bit counters/way(set)
//According to the algorithm, 0->MRU & n-1->LRU
module update_lru;

function void UpdateLRU(int set, int accessed_way);
  int i=0;
  for(int i=0;i<n;i++) begin
	//for rest lines in the set, if their resp counter values are less than 	the counter value of the accessed line/way,
	//counter for them should increment (by 1 from their prev value) to 		indicate each of them is LRU.
    if(LRU[set][i] < LRU[set][accessed_way]) begin
      LRU[set][i] = LRU[set][i] + 1'b1;
    end
    end
  LRU[set][accessed_way] = 0; //This accessed way becomes MRU & hence it counter sets to 0 indicating the same

endfunction
endmodule