import pandas as pd
snowplows = pd.read_csv('./snowplows.csv')
snowplow_loc_avg = snowplows.groupby(['object_id'])[['X','Y']].mean()
snowplow_loc_avg.to_csv('./avg_location.csv')
