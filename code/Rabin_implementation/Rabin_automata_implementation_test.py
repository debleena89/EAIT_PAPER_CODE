


#import numpy as NP
#from scipy import linalg as LA
#p_final_state = 'p1'
#q_final_state = 'q1'
#accepting_states = ['p0_q0_3','p2_q1_3']
#accepting_states = ['f','g']
target_top = -1
source_top = 0
source = [] #0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
position_matrix = [[]]
matched = 0
omega_regular_expression = ''
number_of_state = 0
number_of_accepting_states = 0
states = []
acceptance_states = []
String_Found = 0

def generate_omega_regular_expression():
    global target_top
    global String_Found
    global number_of_accepting_states
    global accepting_states
    repeat_string_length = source_top
    repeat_value = source[source_top]
    run = 0
    global omega_regular_expression
    #print ("repeat_string_length",repeat_string_length)
    while run == 0:
          previous_state = source[repeat_string_length]
          repeat_string_length = repeat_string_length - 1
          if repeat_string_length < 0:
             break
          next_state = source[repeat_string_length] 
          #print("the next_state is", next_state)
          #visit[next_state] = 0  
          global state_transition_matrix 
          for index in range(1,int(number_of_states) + 1):
              if state_transition_matrix[next_state + 1][index] == previous_state:
                 omega_regular_expression = state_transition_matrix[0][index]+'_' + omega_regular_expression
          
                       #print (omega_regular_expression)
          if repeat_value == next_state:
             list_of_string = omega_regular_expression.split('_')      
             count_state = 0
             #print("start checking", number_of_accepting_states)
             for index_state in range(0,int(number_of_accepting_states)):
                 for index_string in range(0,len(list_of_string)):                       
                       if acceptance_states[index_state] == list_of_string[index_string]:           
                          count_state = count_state + 1  
                          break
             if count_state == int(number_of_accepting_states) :
                print("The omega regular expression is:--------------->")
                print (omega_regular_expression)
                String_Found = 1
                break
       

#-------------------------------------------------------------------------------------

def is_cycle_accepting():
    global matched
    matched = 0
    global accepting_states
    for source_index in range(len(source)):
        for accepting_state_index in range(len(accepting_states)):
           if source[source_index] == accepting_states[accepting_state_index]:
              #print("this accepting state",source)
              matched = 1
              break
        if matched == 1:
             break
      
def found_next_element():
    position_matrix_column = len(position_matrix[0])
    for col in range(0,position_matrix_column):
        if position_matrix[source_top][col] != 0:
           to_return = position_matrix[source_top][col]
           position_matrix[source_top][col] = 0
           #print(to_return)
           return to_return
    return 0


def check_cycle():
    global source
    global source_top
    global position_matrix
    global matched
    global String_Found
    position_matrix_column = len(position_matrix[0])
    current_state = source[source_top]
    source[source_top] = 0
    for index in range(len(source)):
        if source[index] == current_state :
           source[source_top] = current_state
           #print("cycle found", source)           
           generate_omega_regular_expression()
           if String_Found == 1:
              return
           #print("the matched value", matched)
           #is_cycle_accepting()
           matched = 1
           #if matched == 1:
              #print("the matched value", matched)
              #return
           source[source_top] = 0
           source_top = source_top - 1
           #print("the source is", source)
           loop_limit_nested = 1  
           while loop_limit_nested == 1:
                  position_matrix_elemenet = found_next_element()
                  if position_matrix_elemenet != 0 :                      
                          source[source_top + 1] = position_matrix_elemenet
                          #position_matrix[source_top][col] = 0
                          source_top = source_top + 1                            
                          #print("the source is ",source)
                          #print("")
                          #print("the position_matrix is ",position_matrix)
                          check_cycle()                       
                          break
                  elif source_top == 0:
                     break
                  else:
                     source[source_top] = 0
                     source_top = source_top - 1
           return 
    source[source_top] = current_state
   

def check_emptyness_of_Buchi_automata(state_transition_matrix):
    #intersection_matrix_for_buchi_automata = (['00','A','B','C'],['a','b','c',' s'],['b','d','e','s'],['c','b','c',''],['d','d','e',''],['e','f','g',''],['f','b','c','s'],['g','a','h',''],['h','a','h',''],['s','a','b','c'])
    global position_matrix
    global String_Found
    for row in range(1,len(state_transition_matrix)):
        for col in range(0,len(state_transition_matrix[0])):
            if state_transition_matrix[row][col] == 0:
               state_transition_matrix[row][col] = 0
    #state_transition_matrix.replace('0','00')
    #print("")
    #print("the state transition matrix is--->",state_transition_matrix )
    #print("")
    if len(state_transition_matrix) == 1:
       #print("only one state is stable...Empty automata")
       return
    position_matrix_length = len(state_transition_matrix)
    position_matrix_column = len(state_transition_matrix[0])
    position_matrix = [[[] for colindex in 
         range(position_matrix_column)] for rowindex in 
         range(position_matrix_length)]
    for row in  range(position_matrix_length):
        for col in range(position_matrix_column):
           position_matrix[row][col] = 0
    global source
    global source_top
    #for index in  range(position_matrix_length):
        #source[index] = 0
    for limit in range(1, len(state_transition_matrix)):
     source.append(state_transition_matrix[limit][0])
     loop_limit = 1
     position_matrix_row = -1
     while loop_limit <= 50:          
          current_state = source[source_top]          
          for row_index in range(0,len(state_transition_matrix)):
              if state_transition_matrix[row_index][0] == current_state :                
                    #position_matrix_row = position_matrix_row + 1 
                    colindex_p_m = 0  
                    for colindex_i_m in range(1,position_matrix_column):    
                        if state_transition_matrix[row_index][colindex_i_m] != -1 and state_transition_matrix[row_index][colindex_i_m] != current_state:   
                           source_top = source_top + 1
                           source.append(state_transition_matrix[row_index][colindex_i_m] )
                           save_index = colindex_i_m
                           #print("afetr insertion", source)
                           break
                    #print("")
                    #print("the valuee of save_index",save_index) 
                    for colindex_i_m_n in range(colindex_i_m + 1,position_matrix_column):    
                        if state_transition_matrix[row_index][colindex_i_m_n] != -1 and state_transition_matrix[row_index][colindex_i_m] != current_state:   
                           position_matrix[source_top - 1][colindex_p_m] = state_transition_matrix[row_index][colindex_i_m_n]
                           colindex_p_m = colindex_p_m + 1
          #print("")
          #print(position_matrix)
          #check_cycle()
          if String_Found == 1:
              return
          check_cycle()
          #if matched == 1:
             #print("Is the language of this NBA empty ?? : NO")
             #return
          if source_top == 0:
             break  
          loop_limit = loop_limit + 1
     
       

def get_omega_regular_expression(state_combination):
    no_of_elements = len(state_combination)
    global state_transition_matrix
    global states
    global number_of_states
    global String_Found
    state_transition_matrix = [[[] for colindex in range(int(number_of_states)+1)] for rowindex in range(no_of_elements + 1)]
    for row in range(no_of_elements + 1):
        for col in range(0,int(number_of_states)):
            state_transition_matrix[row][col] = -1
    for element in range(0,int(number_of_states)): 
        state_transition_matrix[0][element + 1] = states[element]
 
    
    for row in range(1,no_of_elements + 1):
        for col in range(0,1):
            state_transition_matrix[row][col] = row - 1
    
    for element_count in range(0,no_of_elements):
        state = state_combination[element_count]
        state = state.split("_")

        for state_index in range(0,int(number_of_states)): 
            next_transition = state[1]+'_'+state[2]+'_'+states[state_index] 
            for index in range(no_of_elements):
                if next_transition == state_combination[index]:
                   state_transition_matrix[element_count+1][state_index + 1] = index
    if state_transition_matrix == None:
       return    
    if String_Found == 1:
       return

    check_emptyness_of_Buchi_automata(state_transition_matrix)
    


#--------generate combination of given elements here 1 and 2---
#--------upto a certain depth,signifies the length of the control action combination

def print_combination(number_of_states, states):
    A1 = []
    A2 = []
    A3 = []
    A1 = states
    depth = 3
    itemlen = len(A1)
    term = 2
    A3 = A1
    depth = depth - 1
    for depth_index in range(depth):
       resultlen = itemlen * pow (itemlen, depth_index)
       if term == 2 : 
          for result_set_index in range(resultlen):
             for item_set_index in range(itemlen):                
                A2.append(str(A3[result_set_index])+'_'+str(A1[item_set_index]))         
       else : 
          for result_set_index in range(resultlen):
             for item_set_index in range(itemlen):                
                A3.append(str(A2[result_set_index])+'_'+str(A1[item_set_index]))        
       if term == 2:
            A3 = []
            term = 3
       else:
            A2 = []
            term = 2 
    if term == 3:
         return A2 
    else:
         return A3
      


if __name__ == "__main__":
#-----generates the combination tree and return the tree----
    global number_of_states
    global states
    global number_of_accepting_states
    global acceptance_states
    
    print("How many states are sharing the bus:")
    number_of_states = raw_input()

    for index in range(0,int(number_of_states)):
        states.append(raw_input('enter the state:'))

    print("Enter the number of acceptance states:")
    number_of_accepting_states = raw_input()

    for index in range(0,int(number_of_accepting_states)):
        acceptance_states.append(raw_input('enter the state:'))

    state_combination = print_combination(number_of_states, states) 
    
    #print(state_combination)    
#----checking exponential stability and generating the resulting set----
    #state_combination = check_exponential_stability(state_combination, A0, A1, A2)
    #print("Exponentially stable states lists are given below-->")
    #print("")
    #print (state_combination)
    #reliable_states_list = check_reliable_states(state_combination)
       #=['0011', '0101', '0110', '0111', '1011', '1101', '1110']
#-----added constraint that First mode cannot appear more than two times----
    #final_result_set = result_set_based_on_constraint(state_combination)
#-----------------showing the final result set---------------
    #print (reliable_states_list)
    omega_regular_expression = get_omega_regular_expression(state_combination)
    


    
