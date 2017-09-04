import digitalocean
import os

Token="69d9f9845e01ac95103c4f8e88771f1722b9d2f3fb7dbf834928c2199b98f27a"

def droplet_create(*name):
    
    manager = digitalocean.Manager(token="69d9f9845e01ac95103c4f8e88771f1722b9d2f3fb7dbf834928c2199b98f27a")

    keys = manager.get_all_sshkeys()
    j=0
    for i in name:
        j=j+1

        droplet = digitalocean.Droplet(token=Token,
                               name='{}'.format(i),
                                region='blr1', # Amster
                                image='ubuntu-16-04-x64', # Ubuntu 14.04 x64
                                size_slug='512mb',  # 512MB
                                ssh_keys=[keys[len(keys)-1]], #Automatic conversion
                               backups=False)
        droplet.create()
    return j

def get_ip(n):
	Token="69d9f9845e01ac95103c4f8e88771f1722b9d2f3fb7dbf834928c2199b98f27a"
	manager = digitalocean.Manager(token=Token)
	my_droplets = manager.get_all_droplets()
	l=[]
	for i in range(n):
		l.append((my_droplets)[-n:][i].networks['v4'][0]['ip_address'])
	return l

# droplet_create("pythondroplet1","pythondroplet2")
# print(get_ip(1)[0])
#cmd = "sh alpha_and_the_omega.sh " + str(get_ip(1)[0]) + " " + "loginofdeath" + " " + "1234" + " " + "1024"
#print(cmd)
#os.system(cmd)


def droplet_create_n_setup(*name):
    n=droplet_create(*name)
    lst=get_ip(n)
    print(lst)
    for i in range(n):
        cmd = "sh alpha_and_the_omega.sh " + str(lst[i]) + " " + "loginofdeath" + " " + "1234" + " " + "1024"
        os.system(cmd)
        
droplet_create_n_setup("master","slave1","slave2")

