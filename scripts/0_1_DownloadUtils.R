
add_id_column <- function(df,response, id) {
  df %>% mutate(List_ID = response[id,2])
}

request_logs_str <- '{
    reportData {
        reports(zoneID:%i
                page:%i
                ){
                data {
                    code
                    startTime
                    endTime
                    }
                  }
                }
                        }
    '

request_encounter_str <- '{
    reportData {
        report(code: "%s") {
            fights(killType: Encounters){
            encounterID
            difficulty
            hardModeLevel
            averageItemLevel
            size
            kill
            lastPhase
            startTime
            endTime
            fightPercentage
            bossPercentage
            completeRaid
            inProgress
            lastPhase
            id
            }
        }
        }
    }'




request_twins_str <- '{
    reportData {
        report(code: "%s") {
            events(dataType:All
                  killType:Encounters
                  hostilityType:Enemies
                  fightIDs:%i
                  startTime: 0
                  endTime: 999999999999
                  includeResources: true
                  filterExpression:"%s"){
              data
              nextPageTimestamp
              }
            }
        }
        }'



request_twins_cast_str <- '{
    reportData {
        report(code: "%s") {
            events(dataType:Casts
                  killType:Encounters
                  hostilityType:Enemies
                  fightIDs:%i
                  startTime: 0
                  endTime: 999999999999
                  includeResources: true
                  filterExpression:"%s"){
              data
              nextPageTimestamp
              }
            }
        }
        }'





request_twins_essence_str <- '{
    reportData {
        report(code: "%s") {
            events(dataType:Healing
                  killType:Encounters
                  hostilityType:Friendlies
                  fightIDs:%i
                  startTime: 0
                  endTime: 999999999999
                  includeResources: true
                  filterExpression:"%s"){
              data
              nextPageTimestamp
              }
            }
        }
        }'
