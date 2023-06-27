import enterpriseattack, json

attack = enterpriseattack.Attack()

software = attack.software
groupsss=[]
for software in software:
    groups=[]
    tech=[]
    soft=software.to_json()
    for group in software.groups:
        groups.append({"id":group.id,"name":group.name,"description":group.description})
        # print(({"id":group.id,"name":group.name,"description":group.description}))
    for index,technique in enumerate(software.techniques):
        tac=str(software.tactics[index]).replace(" Mitre Att&ck Tactic","")
        tech.append({"id":technique.id,"name":technique.name,"tactic":tac,"description":technique.description})
        # print(({"id":technique.id,"name":technique.name,"description":technique.description}))
        for sub_technique in technique.sub_techniques:
            # print(index,software.tactics[index],technique.id,"-",sub_technique.id)
            tech.append({"id":sub_technique.id,"name":sub_technique.name,"tactic":tac,"description":sub_technique.description})
            
            # print(({"id":sub_technique.id,"name":sub_technique.name,"description":sub_technique.description}))
        # print(eachtech,"\n")
    soft['techniques']=tech
    soft['groups']=groups
    # print(soft)
    groupsss.append(soft)
#     # break
filename = f"./groups/group.json"
with open(filename, "w") as f:
    json.dump(groupsss, f)