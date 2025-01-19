[fwBasic]
status = enabled
incoming = reject
outgoing = allow
routed = disabled

[Rule0]
ufw_rule = 53 ALLOW IN Anywhere
description = DNS
command = /usr/sbin/ufw allow in from any to any port 53
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 53
iface = 
routed = 
logging = 

[Rule1]
ufw_rule = 53 ALLOW OUT Anywhere (out)
description = DNS
command = /usr/sbin/ufw allow out from any to any port 53
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 53
iface = 
routed = 
logging = 

[Rule2]
ufw_rule = 137,138/udp ALLOW IN Anywhere
description = SAMBA
command = /usr/sbin/ufw allow in proto udp from any to any port 137,138
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 137,138/udp
iface = 
routed = 
logging = 

[Rule3]
ufw_rule = 137,138/udp ALLOW OUT Anywhere (out)
description = SAMBA
command = /usr/sbin/ufw allow out proto udp from any to any port 137,138
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 137,138/udp
iface = 
routed = 
logging = 

[Rule4]
ufw_rule = 139,445/tcp ALLOW IN Anywhere
description = SAMBA
command = /usr/sbin/ufw allow in proto tcp from any to any port 139,445
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 139,445/tcp
iface = 
routed = 
logging = 

[Rule5]
ufw_rule = 139,445/tcp ALLOW OUT Anywhere (out)
description = SAMBA
command = /usr/sbin/ufw allow out proto tcp from any to any port 139,445
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 139,445/tcp
iface = 
routed = 
logging = 

[Rule6]
ufw_rule = 161 ALLOW IN Anywhere
description = HPLIP
command = /usr/sbin/ufw allow in from any to any port 161
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 161
iface = 
routed = 
logging = 

[Rule7]
ufw_rule = 161 ALLOW OUT Anywhere (out)
description = HPLIP
command = /usr/sbin/ufw allow out from any to any port 161
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 161
iface = 
routed = 
logging = 

[Rule8]
ufw_rule = 162 ALLOW IN Anywhere
description = HPLIP
command = /usr/sbin/ufw allow in from any to any port 162
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 162
iface = 
routed = 
logging = 

[Rule9]
ufw_rule = 162 ALLOW OUT Anywhere (out)
description = HPLIP
command = /usr/sbin/ufw allow out from any to any port 162
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 162
iface = 
routed = 
logging = 

[Rule10]
ufw_rule = 9100 ALLOW IN Anywhere
description = HPLIP
command = /usr/sbin/ufw allow in from any to any port 9100
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9100
iface = 
routed = 
logging = 

[Rule11]
ufw_rule = 9100 ALLOW OUT Anywhere (out)
description = HPLIP
command = /usr/sbin/ufw allow out from any to any port 9100
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9100
iface = 
routed = 
logging = 

[Rule12]
ufw_rule = 443/tcp ALLOW IN Anywhere
description = HTTPS
command = /usr/sbin/ufw allow in proto tcp from any to any port 443
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 443/tcp
iface = 
routed = 
logging = 

[Rule13]
ufw_rule = 443/tcp ALLOW OUT Anywhere (out)
description = HTTPS
command = /usr/sbin/ufw allow out proto tcp from any to any port 443
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 443/tcp
iface = 
routed = 
logging = 

[Rule14]
ufw_rule = 515/tcp ALLOW IN Anywhere
description = LPD
command = /usr/sbin/ufw allow in proto tcp from any to any port 515
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 515/tcp
iface = 
routed = 
logging = 

[Rule15]
ufw_rule = 515/tcp ALLOW OUT Anywhere (out)
description = LPD
command = /usr/sbin/ufw allow out proto tcp from any to any port 515
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 515/tcp
iface = 
routed = 
logging = 

[Rule16]
ufw_rule = 631 ALLOW IN Anywhere
description = IPP
command = /usr/sbin/ufw allow in from any to any port 631
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 631
iface = 
routed = 
logging = 

[Rule17]
ufw_rule = 631 ALLOW OUT Anywhere (out)
description = IPP
command = /usr/sbin/ufw allow out from any to any port 631
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 631
iface = 
routed = 
logging = 

[Rule18]
ufw_rule = 5353/udp ALLOW IN Anywhere
description = Multicast DNS
command = /usr/sbin/ufw allow in proto udp from any to any port 5353
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 5353/udp
iface = 
routed = 
logging = 

[Rule19]
ufw_rule = 5353/udp ALLOW OUT Anywhere (out)
description = Multicast DNS
command = /usr/sbin/ufw allow out proto udp from any to any port 5353
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 5353/udp
iface = 
routed = 
logging = 

[Rule20]
ufw_rule = 9101 ALLOW IN Anywhere
description = AppSocket / JetDirect
command = /usr/sbin/ufw allow in from any to any port 9101
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9101
iface = 
routed = 
logging = 

[Rule21]
ufw_rule = 9101 ALLOW OUT Anywhere (out)
description = AppSocket / JetDirect
command = /usr/sbin/ufw allow out from any to any port 9101
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9101
iface = 
routed = 
logging = 

[Rule22]
ufw_rule = 9102 ALLOW IN Anywhere
description = AppSocket / JetDirect
command = /usr/sbin/ufw allow in from any to any port 9102
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9102
iface = 
routed = 
logging = 

[Rule23]
ufw_rule = 9102 ALLOW OUT Anywhere (out)
description = AppSocket / JetDirect
command = /usr/sbin/ufw allow out from any to any port 9102
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9102
iface = 
routed = 
logging = 

[Rule24]
ufw_rule = 1714:1764/tcp ALLOW IN Anywhere
description = KDE Connect
command = /usr/sbin/ufw allow in proto tcp from any to any port 1714:1764
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/tcp
iface = 
routed = 
logging = 

[Rule25]
ufw_rule = 1714:1764/tcp ALLOW OUT Anywhere (out)
description = KDE Connect
command = /usr/sbin/ufw allow out proto tcp from any to any port 1714:1764
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/tcp
iface = 
routed = 
logging = 

[Rule26]
ufw_rule = 1714:1764/udp ALLOW IN Anywhere
description = KDE Connect
command = /usr/sbin/ufw allow in proto udp from any to any port 1714:1764
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/udp
iface = 
routed = 
logging = 

[Rule27]
ufw_rule = 1714:1764/udp ALLOW OUT Anywhere (out)
description = KDE Connect
command = /usr/sbin/ufw allow out proto udp from any to any port 1714:1764
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/udp
iface = 
routed = 
logging = 

[Rule28]
ufw_rule = 53 (v6) ALLOW IN Anywhere (v6)
description = DNS
command = /usr/sbin/ufw allow in from any to any port 53
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 53
iface = 
routed = 
logging = 

[Rule29]
ufw_rule = 53 (v6) ALLOW OUT Anywhere (v6) (out)
description = DNS
command = /usr/sbin/ufw allow out from any to any port 53
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 53
iface = 
routed = 
logging = 

[Rule30]
ufw_rule = 137,138/udp (v6) ALLOW IN Anywhere (v6)
description = SAMBA
command = /usr/sbin/ufw allow in proto udp from any to any port 137,138
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 137,138/udp
iface = 
routed = 
logging = 

[Rule31]
ufw_rule = 137,138/udp (v6) ALLOW OUT Anywhere (v6) (out)
description = SAMBA
command = /usr/sbin/ufw allow out proto udp from any to any port 137,138
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 137,138/udp
iface = 
routed = 
logging = 

[Rule32]
ufw_rule = 139,445/tcp (v6) ALLOW IN Anywhere (v6)
description = SAMBA
command = /usr/sbin/ufw allow in proto tcp from any to any port 139,445
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 139,445/tcp
iface = 
routed = 
logging = 

[Rule33]
ufw_rule = 139,445/tcp (v6) ALLOW OUT Anywhere (v6) (out)
description = SAMBA
command = /usr/sbin/ufw allow out proto tcp from any to any port 139,445
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 139,445/tcp
iface = 
routed = 
logging = 

[Rule34]
ufw_rule = 161 (v6) ALLOW IN Anywhere (v6)
description = HPLIP
command = /usr/sbin/ufw allow in from any to any port 161
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 161
iface = 
routed = 
logging = 

[Rule35]
ufw_rule = 161 (v6) ALLOW OUT Anywhere (v6) (out)
description = HPLIP
command = /usr/sbin/ufw allow out from any to any port 161
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 161
iface = 
routed = 
logging = 

[Rule36]
ufw_rule = 162 (v6) ALLOW IN Anywhere (v6)
description = HPLIP
command = /usr/sbin/ufw allow in from any to any port 162
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 162
iface = 
routed = 
logging = 

[Rule37]
ufw_rule = 162 (v6) ALLOW OUT Anywhere (v6) (out)
description = HPLIP
command = /usr/sbin/ufw allow out from any to any port 162
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 162
iface = 
routed = 
logging = 

[Rule38]
ufw_rule = 9100 (v6) ALLOW IN Anywhere (v6)
description = HPLIP
command = /usr/sbin/ufw allow in from any to any port 9100
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9100
iface = 
routed = 
logging = 

[Rule39]
ufw_rule = 9100 (v6) ALLOW OUT Anywhere (v6) (out)
description = HPLIP
command = /usr/sbin/ufw allow out from any to any port 9100
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9100
iface = 
routed = 
logging = 

[Rule40]
ufw_rule = 443/tcp (v6) ALLOW IN Anywhere (v6)
description = HTTPS
command = /usr/sbin/ufw allow in proto tcp from any to any port 443
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 443/tcp
iface = 
routed = 
logging = 

[Rule41]
ufw_rule = 443/tcp (v6) ALLOW OUT Anywhere (v6) (out)
description = HTTPS
command = /usr/sbin/ufw allow out proto tcp from any to any port 443
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 443/tcp
iface = 
routed = 
logging = 

[Rule42]
ufw_rule = 515/tcp (v6) ALLOW IN Anywhere (v6)
description = LPD
command = /usr/sbin/ufw allow in proto tcp from any to any port 515
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 515/tcp
iface = 
routed = 
logging = 

[Rule43]
ufw_rule = 515/tcp (v6) ALLOW OUT Anywhere (v6) (out)
description = LPD
command = /usr/sbin/ufw allow out proto tcp from any to any port 515
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 515/tcp
iface = 
routed = 
logging = 

[Rule44]
ufw_rule = 631 (v6) ALLOW IN Anywhere (v6)
description = IPP
command = /usr/sbin/ufw allow in from any to any port 631
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 631
iface = 
routed = 
logging = 

[Rule45]
ufw_rule = 631 (v6) ALLOW OUT Anywhere (v6) (out)
description = IPP
command = /usr/sbin/ufw allow out from any to any port 631
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 631
iface = 
routed = 
logging = 

[Rule46]
ufw_rule = 5353/udp (v6) ALLOW IN Anywhere (v6)
description = Multicast DNS
command = /usr/sbin/ufw allow in proto udp from any to any port 5353
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 5353/udp
iface = 
routed = 
logging = 

[Rule47]
ufw_rule = 5353/udp (v6) ALLOW OUT Anywhere (v6) (out)
description = Multicast DNS
command = /usr/sbin/ufw allow out proto udp from any to any port 5353
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 5353/udp
iface = 
routed = 
logging = 

[Rule48]
ufw_rule = 9101 (v6) ALLOW IN Anywhere (v6)
description = AppSocket / JetDirect
command = /usr/sbin/ufw allow in from any to any port 9101
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9101
iface = 
routed = 
logging = 

[Rule49]
ufw_rule = 9101 (v6) ALLOW OUT Anywhere (v6) (out)
description = AppSocket / JetDirect
command = /usr/sbin/ufw allow out from any to any port 9101
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9101
iface = 
routed = 
logging = 

[Rule50]
ufw_rule = 9102 (v6) ALLOW IN Anywhere (v6)
description = AppSocket / JetDirect
command = /usr/sbin/ufw allow in from any to any port 9102
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9102
iface = 
routed = 
logging = 

[Rule51]
ufw_rule = 9102 (v6) ALLOW OUT Anywhere (v6) (out)
description = AppSocket / JetDirect
command = /usr/sbin/ufw allow out from any to any port 9102
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9102
iface = 
routed = 
logging = 

[Rule52]
ufw_rule = 1714:1764/tcp (v6) ALLOW IN Anywhere (v6)
description = KDE Connect
command = /usr/sbin/ufw allow in proto tcp from any to any port 1714:1764
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/tcp
iface = 
routed = 
logging = 

[Rule53]
ufw_rule = 1714:1764/tcp (v6) ALLOW OUT Anywhere (v6) (out)
description = KDE Connect
command = /usr/sbin/ufw allow out proto tcp from any to any port 1714:1764
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/tcp
iface = 
routed = 
logging = 

[Rule54]
ufw_rule = 1714:1764/udp (v6) ALLOW IN Anywhere (v6)
description = KDE Connect
command = /usr/sbin/ufw allow in proto udp from any to any port 1714:1764
policy = allow
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/udp
iface = 
routed = 
logging = 

[Rule55]
ufw_rule = 1714:1764/udp (v6) ALLOW OUT Anywhere (v6) (out)
description = KDE Connect
command = /usr/sbin/ufw allow out proto udp from any to any port 1714:1764
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/udp
iface = 
routed = 
logging = 

