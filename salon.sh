Last login: Wed Jun  8 22:35:04 on ttys000
vim
(base) murillo@MacBook-Air-de-Murillo ~ % vim





















                read SERVICE_TIME
                CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

                if [[ $SERVICE_TIME ]]
                then
                  INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
                  if [[ $INSERT_APPOINTMENT ]]
                    then 
                      echo -e "\nI have put you down for a $SERVICE_NAME_SELECTED at $SERVICE_TIME, $(echo $CUSTOMER_NAME | sed -r  's/^ *| *$//g')."
                  fi
                fi
            fi
          fi
      fi
}

MAIN_MENU

~                                                                               

