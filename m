Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 434FE9E0845
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Dec 2024 17:19:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37D0A81FA3;
	Mon,  2 Dec 2024 16:19:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YSCbWdja-P-1; Mon,  2 Dec 2024 16:19:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A909981FAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733156342;
	bh=rz/JthZ4COLWiTcJ7HtX3WnHYJbBl7TmqRQwvGrLmKk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=b3s+jAzYkhzz/x/4IRKrOyexaqZJxhDjMkVj+c824zmcv+Rbcc9pPcwUJbtD/n1+Q
	 GAay1IU/xTfyIMmeJS69blr976EZqd4wx6dm1QXEpd9ZBA4TFL8EwRGZP0fIN863xw
	 uG0gJk6nvtWo+bUiOkioJRQm8DXAkL8WT57WKvWIDQZaw8O/AcE2LJ+rQWUUMLp3K9
	 IJd9Uh3XVtvnKXcHZNtPM7Hbk0dEJKzt0tyakHqX+cfFDuy21y4SXrRk6GPx3f3oes
	 ACxWdHRTr0vFnKoJqw4b5bAKrXNCsb1/8vTHr44PRjP9pFiFWcOfH3uVrYvVntH7cu
	 Id5OgheSPNvew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A909981FAC;
	Mon,  2 Dec 2024 16:19:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 505746C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 00:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3DDBB41C32
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 00:01:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id twMuhGybNKVg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Nov 2024 00:01:07 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62a; helo=mail-pl1-x62a.google.com;
 envelope-from=andrew@andrewstrohman.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0568E41C13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0568E41C13
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0568E41C13
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 00:01:06 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-2128383b86eso22597725ad.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 16:01:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732924866; x=1733529666;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=rz/JthZ4COLWiTcJ7HtX3WnHYJbBl7TmqRQwvGrLmKk=;
 b=ZUZOsG1CMFCUx7blIq6qT9q/nIQqyW8iIo8pgh5gkn9xeOMVuQjNHoA5NjmB2YexfP
 WpRefAGyJFgLnJ++AL9LU1DFjlQs4nwO1KBlPoriLhgQdH6/9gI33RBM7Di+EMiw5nJT
 n0a3pbc5qr4KGCWw4F/o4cRLx4Ofmw4uDdzk0p99vOvSbmG+V18soed/fwdttSb2DsG9
 vxne8/3TjHBPWefdKEU7GxU/CYnrl1GRWBv8Yh5Otk1KoP2PAh9tMBtOJ+oP8XEWt2fi
 KByBrIPbztFtcMC1c4MevbboCndV/8XDrwdIZIuwOPudxuLCpzhzqPyN6GmE6JdirGRX
 eiRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWU34YEzSQQbt0sqJn0TeLq6dhbBvI+nTbOKJ814vg8bR0TwgbI8VHeq1Gl9HNudhfAB57T3Y40ajoNtyUam6U=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyLLKZc1FbeqCkwwF0StlYmDtGnBP876l3SvfmlN6Ll9fjUg8z2
 nWGphpHl4fk42diqotI84UoAAkBsKmrCnSEp1VDxSm3rf6vZXRaurzHx/ef6DSM=
X-Gm-Gg: ASbGncu6i1iDNoLNANuGEyXc2kYzQhUgYdfaiTLsOYgBfUY8VViGf3VJ6oVWMPYFq35
 d/lxG3OIoJPrexTR1FrOEBACf/sFaPCONiGqGrKu4L/DqLKc3qMr7f6Z0ELG7+C8kc6LBNdp8oS
 eS9RFKqi6lcF7fTV74ZbXtPQ0J92+5etiOo7YaSEJfL15Hiu1/SlMzGNldSUk6XrVPBdnbGGm9/
 RVa6FYDDVco97QHC7Ttdh1BsUq6Vhc7sG9r75CTjTh7Ogw5827OmbSM8npO5EaJs+RLBHiap/1A
 P0ZsygiGWFL16gBQx5zdydVALGoB6qRC
X-Google-Smtp-Source: AGHT+IFAeF2n49AJZzYkPZRsXXMicj/IqEmo1qIApPZ+2NmtuMtZII3LlfuxziyIdRJRQn8vUs4iow==
X-Received: by 2002:a17:902:e5c1:b0:211:6b21:2370 with SMTP id
 d9443c01a7336-2150128897fmr150118745ad.29.1732924865977; 
 Fri, 29 Nov 2024 16:01:05 -0800 (PST)
Received: from localhost.localdomain (c-71-197-149-76.hsd1.wa.comcast.net.
 [71.197.149.76]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-215218f56casm36515575ad.13.2024.11.29.16.01.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2024 16:01:05 -0800 (PST)
From: Andy Strohman <andrew@andrewstrohman.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 UNGLinuxDriver@microchip.com, Shahed Shaikh <shshaikh@marvell.com>,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Simon Horman <horms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
Cc: Andy Strohman <andrew@andrewstrohman.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 bridge@lists.linux.dev
Date: Sat, 30 Nov 2024 00:07:57 +0000
Message-Id: <20241130000802.2822146-1-andrew@andrewstrohman.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 02 Dec 2024 16:19:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=andrewstrohman-com.20230601.gappssmtp.com; s=20230601; t=1732924866;
 x=1733529666; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=rz/JthZ4COLWiTcJ7HtX3WnHYJbBl7TmqRQwvGrLmKk=;
 b=eiJESuzx9eAvJSslvWgQfpTtRGLC7jlHB/HP7dlwzRAxLHry+9olx3yjvfG4MDgi6e
 4hriKc4a9mQdI3VEVHfFUqceVORK37BdxP10I0ft0bN1etWbAuapuW8SD7+TV9zMxixu
 gQVWnDHuULsJTeqq8u0u84c5dksPwd1wqVCS2cytR+dkKsw00YOQ8vWi7MZwhxotDCXY
 2fkzXqRvNYbzfwZlcBqEucK9h/o+7q3sAdFoYYr1gRe0L74dhPfGvT9z8BN0RuNXIqYW
 4xVH1QwqMtTj4fd0m39QjQBZf59tukgOUWr2DvZctLzWjp0y6YDZNSCieNifjbNGqFC4
 d8wA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=andrewstrohman.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=andrewstrohman-com.20230601.gappssmtp.com
 header.i=@andrewstrohman-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=eiJESuzx
Subject: [Intel-wired-lan] [PATCH net-next] bridge: Make the FDB consider
 inner tag for Q-in-Q
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

802.1q networks with IVL (independent VLAN learning) can
tolerate duplicate MACs as long as the duplicates
reside in different VLANs. Similarly, IVL networks
allow for L2 hairpining where different VLANs are
used for each side of the hairpin in order to not
confuse the intermediate bridge's FDBs.

When these types of networks are inter-connected
using 802.1ad or Q-in-Q, only the outer VLAN tag is
considered by the 802.1ad bridge during FDB lookup.

While traffic segregation by inner and outer VID works as
expected, the inner VLAN's independent VLAN learning can
be defeated.

The following example describes the issue in terms of
duplicate MACS in different VLANs. But, the same concept
described in this example also applies L2 hairpining via
different VLANs.

                 _______________________
                |  .1ad bridge          |
	        |_______________________|
           PVID3|      PVID3|      PVID3|
                |           |           |
TAGGED:        7|          8|          8|
            ____|____  _____|___   _____|___
           | .1q br 1| |.1q br 2|  |.1q br 3|
           |_________| |________|  |________|
         PVID7 |      PVID8 |      PVID8|
             HOST A       HOST B      HOST C

The above diagram depicts a .1ad bridge that has "pvid 3
untagged" configured for every member port. These member ports are
connected to .1q bridges, named 1, 2 and 3. .1q br 1 allows VID 7 tagged
on its port facing the .1ad bridge. .1q bridge 2 and 3 allow
VID 8 tagged on their ports that face the .1ad bridge. Host A
is connected to .1q br 1 via a port that is configured as "pvid 7
untagged". Host B and C are connected to bridges via ports
configured as "pvid 8 untagged".

Prior to this change, if host A has the same (duplicate) MAC
address as host B, this can disrupt communication between
host B and host C. This happens because the .1ad bridge
will see the duplicate MAC behind two of its ports
within the same VID (3). It's not examining the inner VLAN to
know that the hosts are actually reside within in different
L2 segments.

With this change, the .1ad bridge uses both the inner and outer VID
when looking up the FDB. With this technique, host B and C are
able to communicate without disruptions due to the duplicate MAC
assigned to host A.

Here is an example FDB dump on a .1ad bridge that is configured like
the above diagram:

root@OpenWrt:~# bridge fdb show dynamic
f4:a4:54:80:93:2f dev lan3 vlan 3 inner vlan 8 master br-lan
f4:a4:54:81:7a:90 dev lan1 vlan 3 inner vlan 7 master br-lan
f4:a4:54:81:7a:90 dev lan2 vlan 3 inner vlan 8 master br-lan

Note how duplicate MAC f4:a4:54:81:7a:90 is behind both lan1 and
lan2. This FDB dump shows two entries with the same MAC and
the same 802.1ad VLAN, 3. Prior to this change, only one fdb entry
per MAC/VID would be possible. As such, the bridge would have
issues forwarding. After this change, these entries are understood
to be distinct as they pertain to different inner vlans, and
therefore separate L2 segments.

Signed-off-by: Andy Strohman <andrew@andrewstrohman.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 drivers/net/ethernet/intel/igb/igb_main.c     |   4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   4 +-
 .../ethernet/mellanox/mlxsw/spectrum_router.c |   4 +-
 .../ethernet/mellanox/mlxsw/spectrum_span.c   |   4 +-
 .../mellanox/mlxsw/spectrum_switchdev.c       |   2 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |   4 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |   8 +-
 drivers/net/macvlan.c                         |   4 +-
 drivers/net/vxlan/vxlan_core.c                |   6 +-
 include/linux/if_bridge.h                     |   4 +-
 include/linux/netdevice.h                     |   6 +-
 include/linux/rtnetlink.h                     |   4 +-
 include/trace/events/bridge.h                 |  20 ++--
 include/uapi/linux/if_link.h                  |   1 +
 include/uapi/linux/neighbour.h                |   1 +
 net/bridge/br_arp_nd_proxy.c                  |   8 +-
 net/bridge/br_device.c                        |  11 +-
 net/bridge/br_fdb.c                           | 107 ++++++++++--------
 net/bridge/br_input.c                         |  22 ++--
 net/bridge/br_netlink.c                       |  18 ++-
 net/bridge/br_private.h                       |  25 ++--
 net/bridge/br_vlan.c                          |  34 +++++-
 net/core/neighbour.c                          |   1 +
 net/core/rtnetlink.c                          |  58 ++++++----
 26 files changed, 227 insertions(+), 143 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index ab5febf83ec3..9f0a00a0f1d5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13100,7 +13100,7 @@ static int i40e_get_phys_port_id(struct net_device *netdev,
  */
 static int i40e_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			    struct net_device *dev,
-			    const unsigned char *addr, u16 vid,
+			    const unsigned char *addr, u16 vid, u16 inner_vid,
 			    u16 flags, bool *notified,
 			    struct netlink_ext_ack *extack)
 {
@@ -13111,7 +13111,7 @@ static int i40e_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 	if (!test_bit(I40E_FLAG_SRIOV_ENA, pf->flags))
 		return -EOPNOTSUPP;
 
-	if (vid) {
+	if (vid || inner_vid) {
 		pr_info("%s: vlans aren't supported yet for dev_uc|mc_add()\n", dev->name);
 		return -EINVAL;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1eaa4428fd24..cc96b220b86c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6161,13 +6161,13 @@ ice_set_tx_maxrate(struct net_device *netdev, int queue_index, u32 maxrate)
  */
 static int
 ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
-	    struct net_device *dev, const unsigned char *addr, u16 vid,
+	    struct net_device *dev, const unsigned char *addr, u16 vid, u16 inner_vid,
 	    u16 flags, bool *notified,
 	    struct netlink_ext_ack __always_unused *extack)
 {
 	int err;
 
-	if (vid) {
+	if (vid || inner_vid) {
 		netdev_err(dev, "VLANs aren't supported yet for dev_uc|mc_add()\n");
 		return -EINVAL;
 	}
@@ -6203,7 +6203,7 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
 static int
 ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
 	    struct net_device *dev, const unsigned char *addr,
-	    __always_unused u16 vid, bool *notified,
+	    __always_unused u16 vid, __always_unused u16 inner_vid, bool *notified,
 	    struct netlink_ext_ack *extack)
 {
 	int err;
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 08578980b651..312b6d760450 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2485,7 +2485,7 @@ static int igb_set_features(struct net_device *netdev,
 
 static int igb_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			   struct net_device *dev,
-			   const unsigned char *addr, u16 vid,
+			   const unsigned char *addr, u16 vid, u16 inner_vid,
 			   u16 flags, bool *notified,
 			   struct netlink_ext_ack *extack)
 {
@@ -2498,7 +2498,7 @@ static int igb_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			return -ENOMEM;
 	}
 
-	return ndo_dflt_fdb_add(ndm, tb, dev, addr, vid, flags);
+	return ndo_dflt_fdb_add(ndm, tb, dev, addr, vid, inner_vid, flags);
 }
 
 #define IGB_MAX_MAC_HDR_LEN	127
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 2e38e8f6fac1..293798e02802 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9954,7 +9954,7 @@ static int ixgbe_set_features(struct net_device *netdev,
 
 static int ixgbe_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			     struct net_device *dev,
-			     const unsigned char *addr, u16 vid,
+			     const unsigned char *addr, u16 vid, u16 inner_vid,
 			     u16 flags, bool *notified,
 			     struct netlink_ext_ack *extack)
 {
@@ -9967,7 +9967,7 @@ static int ixgbe_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			return -ENOMEM;
 	}
 
-	return ndo_dflt_fdb_add(ndm, tb, dev, addr, vid, flags);
+	return ndo_dflt_fdb_add(ndm, tb, dev, addr, vid, inner_vid, flags);
 }
 
 /**
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_router.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_router.c
index 7d6d859cef3f..adaf2199c6ac 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_router.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_router.c
@@ -10609,7 +10609,7 @@ static void mlxsw_sp_rif_fid_fdb_del(struct mlxsw_sp_rif *rif, const char *mac)
 	struct switchdev_notifier_fdb_info info = {};
 	struct net_device *dev;
 
-	dev = br_fdb_find_port(mlxsw_sp_rif_dev(rif), mac, 0);
+	dev = br_fdb_find_port(mlxsw_sp_rif_dev(rif), mac, 0, 0);
 	if (!dev)
 		return;
 
@@ -10657,7 +10657,7 @@ static void mlxsw_sp_rif_vlan_fdb_del(struct mlxsw_sp_rif *rif, const char *mac)
 	struct net_device *dev;
 
 	br_dev = is_vlan_dev(rif_dev) ? vlan_dev_real_dev(rif_dev) : rif_dev;
-	dev = br_fdb_find_port(br_dev, mac, vid);
+	dev = br_fdb_find_port(br_dev, mac, vid, 0);
 	if (!dev)
 		return;
 
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c
index 4b5fd71c897d..d7d52f291f72 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c
@@ -273,7 +273,7 @@ mlxsw_sp_span_entry_bridge_8021q(const struct net_device *br_dev,
 	    !(vinfo.flags & BRIDGE_VLAN_INFO_BRENTRY))
 		return NULL;
 
-	edev = br_fdb_find_port(br_dev, dmac, vid);
+	edev = br_fdb_find_port(br_dev, dmac, vid, 0);
 	if (!edev)
 		return NULL;
 
@@ -290,7 +290,7 @@ static struct net_device *
 mlxsw_sp_span_entry_bridge_8021d(const struct net_device *br_dev,
 				 unsigned char *dmac)
 {
-	return br_fdb_find_port(br_dev, dmac, 0);
+	return br_fdb_find_port(br_dev, dmac, 0, 0);
 }
 
 static struct net_device *
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index 6397ff0dc951..324fe6f5d275 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -3583,7 +3583,7 @@ mlxsw_sp_switchdev_vxlan_fdb_add(struct mlxsw_sp *mlxsw_sp,
 	 * device in the bridge's FDB table
 	 */
 	vid = bridge_device->ops->fid_vid(bridge_device, fid);
-	if (br_fdb_find_port(br_dev, vxlan_fdb_info->eth_addr, vid) != dev)
+	if (br_fdb_find_port(br_dev, vxlan_fdb_info->eth_addr, vid, 0) != dev)
 		goto err_br_fdb_find;
 
 	err = mlxsw_sp_port_fdb_tunnel_uc_op(mlxsw_sp, vxlan_fdb_info->eth_addr,
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index 558e03301aa8..e8ca7cbe6446 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -730,7 +730,7 @@ static void ocelot_get_stats64(struct net_device *dev,
 static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			       struct net_device *dev,
 			       const unsigned char *addr,
-			       u16 vid, u16 flags, bool *notified,
+			       u16 vid, u16 inner_vid, u16 flags, bool *notified,
 			       struct netlink_ext_ack *extack)
 {
 	struct ocelot_port_private *priv = netdev_priv(dev);
@@ -743,7 +743,7 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 
 static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			       struct net_device *dev,
-			       const unsigned char *addr, u16 vid,
+			       const unsigned char *addr, u16 vid, u16 inner_vid,
 			       bool *notified, struct netlink_ext_ack *extack)
 {
 	struct ocelot_port_private *priv = netdev_priv(dev);
diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
index eb69121df726..ff975d4acacc 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
@@ -367,14 +367,14 @@ static int qlcnic_set_mac(struct net_device *netdev, void *p)
 
 static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			struct net_device *netdev,
-			const unsigned char *addr, u16 vid, bool *notified,
+			const unsigned char *addr, u16 vid, u16 inner_vid, bool *notified,
 			struct netlink_ext_ack *extack)
 {
 	struct qlcnic_adapter *adapter = netdev_priv(netdev);
 	int err = -EOPNOTSUPP;
 
 	if (!adapter->fdb_mac_learn)
-		return ndo_dflt_fdb_del(ndm, tb, netdev, addr, vid);
+		return ndo_dflt_fdb_del(ndm, tb, netdev, addr, vid, inner_vid);
 
 	if ((adapter->flags & QLCNIC_ESWITCH_ENABLED) ||
 	    qlcnic_sriov_check(adapter)) {
@@ -393,14 +393,14 @@ static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 
 static int qlcnic_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			struct net_device *netdev,
-			const unsigned char *addr, u16 vid, u16 flags,
+			const unsigned char *addr, u16 vid, u16 inner_vid, u16 flags,
 			bool *notified, struct netlink_ext_ack *extack)
 {
 	struct qlcnic_adapter *adapter = netdev_priv(netdev);
 	int err = 0;
 
 	if (!adapter->fdb_mac_learn)
-		return ndo_dflt_fdb_add(ndm, tb, netdev, addr, vid, flags);
+		return ndo_dflt_fdb_add(ndm, tb, netdev, addr, vid, inner_vid, flags);
 
 	if (!(adapter->flags & QLCNIC_ESWITCH_ENABLED) &&
 	    !qlcnic_sriov_check(adapter)) {
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index fed4fe2a4748..f5214f80a2c1 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1023,7 +1023,7 @@ static int macvlan_vlan_rx_kill_vid(struct net_device *dev,
 
 static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			   struct net_device *dev,
-			   const unsigned char *addr, u16 vid,
+			   const unsigned char *addr, u16 vid, u16 inner_vid,
 			   u16 flags, bool *notified,
 			   struct netlink_ext_ack *extack)
 {
@@ -1049,7 +1049,7 @@ static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 
 static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			   struct net_device *dev,
-			   const unsigned char *addr, u16 vid, bool *notified,
+			   const unsigned char *addr, u16 vid, u16 inner_vid, bool *notified,
 			   struct netlink_ext_ack *extack)
 {
 	struct macvlan_dev *vlan = netdev_priv(dev);
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 9ea63059d52d..32dd9cbb84e1 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1240,7 +1240,7 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 /* Add static entry (via netlink) */
 static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			 struct net_device *dev,
-			 const unsigned char *addr, u16 vid, u16 flags,
+			 const unsigned char *addr, u16 vid, u16 inner_vid, u16 flags,
 			 bool *notified, struct netlink_ext_ack *extack)
 {
 	struct vxlan_dev *vxlan = netdev_priv(dev);
@@ -1319,7 +1319,7 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
 /* Delete entry (via netlink) */
 static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 			    struct net_device *dev,
-			    const unsigned char *addr, u16 vid, bool *notified,
+			    const unsigned char *addr, u16 vid, u16 inner_vid, bool *notified,
 			    struct netlink_ext_ack *extack)
 {
 	struct vxlan_dev *vxlan = netdev_priv(dev);
@@ -1407,7 +1407,7 @@ static int vxlan_fdb_get(struct sk_buff *skb,
 			 struct nlattr *tb[],
 			 struct net_device *dev,
 			 const unsigned char *addr,
-			 u16 vid, u32 portid, u32 seq,
+			 u16 vid, u16 inner_vid, u32 portid, u32 seq,
 			 struct netlink_ext_ack *extack)
 {
 	struct vxlan_dev *vxlan = netdev_priv(dev);
diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 3ff96ae31bf6..18eef1a9cb41 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -177,7 +177,7 @@ static inline int br_mst_get_state(const struct net_device *dev, u16 msti,
 #if IS_ENABLED(CONFIG_BRIDGE)
 struct net_device *br_fdb_find_port(const struct net_device *br_dev,
 				    const unsigned char *addr,
-				    __u16 vid);
+				    __u16 vid, __u16 inner_vid);
 void br_fdb_clear_offload(const struct net_device *dev, u16 vid);
 bool br_port_flag_is_set(const struct net_device *dev, unsigned long flag);
 u8 br_port_get_stp_state(const struct net_device *dev);
@@ -186,7 +186,7 @@ clock_t br_get_ageing_time(const struct net_device *br_dev);
 static inline struct net_device *
 br_fdb_find_port(const struct net_device *br_dev,
 		 const unsigned char *addr,
-		 __u16 vid)
+		 __u16 vid, __u16 inner_vid)
 {
 	return NULL;
 }
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index ecc686409161..9cd80d866cf3 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1528,7 +1528,7 @@ struct net_device_ops {
 					       struct nlattr *tb[],
 					       struct net_device *dev,
 					       const unsigned char *addr,
-					       u16 vid,
+					       u16 vid, u16 inner_vid,
 					       u16 flags,
 					       bool *notified,
 					       struct netlink_ext_ack *extack);
@@ -1536,7 +1536,7 @@ struct net_device_ops {
 					       struct nlattr *tb[],
 					       struct net_device *dev,
 					       const unsigned char *addr,
-					       u16 vid,
+					       u16 vid, u16 inner_vid,
 					       bool *notified,
 					       struct netlink_ext_ack *extack);
 	int			(*ndo_fdb_del_bulk)(struct nlmsghdr *nlh,
@@ -1551,7 +1551,7 @@ struct net_device_ops {
 					       struct nlattr *tb[],
 					       struct net_device *dev,
 					       const unsigned char *addr,
-					       u16 vid, u32 portid, u32 seq,
+					       u16 vid, u16 inner_vid, u32 portid, u32 seq,
 					       struct netlink_ext_ack *extack);
 	int			(*ndo_mdb_add)(struct net_device *dev,
 					       struct nlattr *tb[],
diff --git a/include/linux/rtnetlink.h b/include/linux/rtnetlink.h
index 14b88f551920..2b0a20da791e 100644
--- a/include/linux/rtnetlink.h
+++ b/include/linux/rtnetlink.h
@@ -188,12 +188,14 @@ extern int ndo_dflt_fdb_add(struct ndmsg *ndm,
 			    struct net_device *dev,
 			    const unsigned char *addr,
 			    u16 vid,
+			    u16 inner_vid,
 			    u16 flags);
 extern int ndo_dflt_fdb_del(struct ndmsg *ndm,
 			    struct nlattr *tb[],
 			    struct net_device *dev,
 			    const unsigned char *addr,
-			    u16 vid);
+			    u16 vid,
+			    u16 inner_vid);
 
 extern int ndo_dflt_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
 				   struct net_device *dev, u16 mode,
diff --git a/include/trace/events/bridge.h b/include/trace/events/bridge.h
index 3fe4725c83ff..9683da388467 100644
--- a/include/trace/events/bridge.h
+++ b/include/trace/events/bridge.h
@@ -12,15 +12,16 @@
 TRACE_EVENT(br_fdb_add,
 
 	TP_PROTO(struct ndmsg *ndm, struct net_device *dev,
-		 const unsigned char *addr, u16 vid, u16 nlh_flags),
+		 const unsigned char *addr, u16 vid, u16 inner_vid, u16 nlh_flags),
 
-	TP_ARGS(ndm, dev, addr, vid, nlh_flags),
+	TP_ARGS(ndm, dev, addr, vid, inner_vid, nlh_flags),
 
 	TP_STRUCT__entry(
 		__field(u8, ndm_flags)
 		__string(dev, dev->name)
 		__array(unsigned char, addr, ETH_ALEN)
 		__field(u16, vid)
+		__field(u16, inner_vid)
 		__field(u16, nlh_flags)
 	),
 
@@ -28,14 +29,15 @@ TRACE_EVENT(br_fdb_add,
 		__assign_str(dev);
 		memcpy(__entry->addr, addr, ETH_ALEN);
 		__entry->vid = vid;
+		__entry->inner_vid = inner_vid;
 		__entry->nlh_flags = nlh_flags;
 		__entry->ndm_flags = ndm->ndm_flags;
 	),
 
-	TP_printk("dev %s addr %02x:%02x:%02x:%02x:%02x:%02x vid %u nlh_flags %04x ndm_flags %02x",
+	TP_printk("dev %s addr %02x:%02x:%02x:%02x:%02x:%02x vid %u inner_vid %u nlh_flags %04x ndm_flags %02x",
 		  __get_str(dev), __entry->addr[0], __entry->addr[1],
 		  __entry->addr[2], __entry->addr[3], __entry->addr[4],
-		  __entry->addr[5], __entry->vid,
+		  __entry->addr[5], __entry->vid, __entry->inner_vid,
 		  __entry->nlh_flags, __entry->ndm_flags)
 );
 
@@ -95,15 +97,16 @@ TRACE_EVENT(fdb_delete,
 TRACE_EVENT(br_fdb_update,
 
 	TP_PROTO(struct net_bridge *br, struct net_bridge_port *source,
-		 const unsigned char *addr, u16 vid, unsigned long flags),
+		 const unsigned char *addr, u16 vid, u16 inner_vid, unsigned long flags),
 
-	TP_ARGS(br, source, addr, vid, flags),
+	TP_ARGS(br, source, addr, vid, inner_vid, flags),
 
 	TP_STRUCT__entry(
 		__string(br_dev, br->dev->name)
 		__string(dev, source->dev->name)
 		__array(unsigned char, addr, ETH_ALEN)
 		__field(u16, vid)
+		__field(u16, inner_vid)
 		__field(unsigned long, flags)
 	),
 
@@ -112,13 +115,14 @@ TRACE_EVENT(br_fdb_update,
 		__assign_str(dev);
 		memcpy(__entry->addr, addr, ETH_ALEN);
 		__entry->vid = vid;
+		__entry->inner_vid = inner_vid;
 		__entry->flags = flags;
 	),
 
-	TP_printk("br_dev %s source %s addr %02x:%02x:%02x:%02x:%02x:%02x vid %u flags 0x%lx",
+	TP_printk("br_dev %s source %s addr %02x:%02x:%02x:%02x:%02x:%02x vid %u inner_vid %u flags 0x%lx",
 		  __get_str(br_dev), __get_str(dev), __entry->addr[0],
 		  __entry->addr[1], __entry->addr[2], __entry->addr[3],
-		  __entry->addr[4], __entry->addr[5], __entry->vid,
+		  __entry->addr[4], __entry->addr[5], __entry->vid, __entry->inner_vid,
 		  __entry->flags)
 );
 
diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index d711756f12cd..c5e89064d48c 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -793,6 +793,7 @@ enum {
 	IFLA_BR_MCAST_QUERIER_STATE,
 	IFLA_BR_FDB_N_LEARNED,
 	IFLA_BR_FDB_MAX_LEARNED,
+	IFLA_BR_FDB_INNER_VLAN_ENABLED,
 	__IFLA_BR_MAX,
 };
 
diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index 5e67a7eaf4a7..75d920a59950 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -34,6 +34,7 @@ enum {
 	NDA_FLAGS_EXT,
 	NDA_NDM_STATE_MASK,
 	NDA_NDM_FLAGS_MASK,
+	NDA_INNER_VLAN,
 	__NDA_MAX
 };
 
diff --git a/net/bridge/br_arp_nd_proxy.c b/net/bridge/br_arp_nd_proxy.c
index c7869a286df4..74eb60bb0f52 100644
--- a/net/bridge/br_arp_nd_proxy.c
+++ b/net/bridge/br_arp_nd_proxy.c
@@ -123,7 +123,7 @@ static bool br_is_local_ip(struct net_device *dev, __be32 ip)
 }
 
 void br_do_proxy_suppress_arp(struct sk_buff *skb, struct net_bridge *br,
-			      u16 vid, struct net_bridge_port *p)
+			      u16 vid, u16 inner_vid, struct net_bridge_port *p)
 {
 	struct net_device *dev = br->dev;
 	struct net_device *vlandev = dev;
@@ -197,7 +197,7 @@ void br_do_proxy_suppress_arp(struct sk_buff *skb, struct net_bridge *br,
 			return;
 		}
 
-		f = br_fdb_find_rcu(br, n->ha, vid);
+		f = br_fdb_find_rcu(br, n->ha, vid, inner_vid);
 		if (f) {
 			bool replied = false;
 
@@ -397,7 +397,7 @@ static bool br_is_local_ip6(struct net_device *dev, struct in6_addr *addr)
 }
 
 void br_do_suppress_nd(struct sk_buff *skb, struct net_bridge *br,
-		       u16 vid, struct net_bridge_port *p, struct nd_msg *msg)
+		       u16 vid, u16 inner_vid, struct net_bridge_port *p, struct nd_msg *msg)
 {
 	struct net_device *dev = br->dev;
 	struct net_device *vlandev = NULL;
@@ -457,7 +457,7 @@ void br_do_suppress_nd(struct sk_buff *skb, struct net_bridge *br,
 			return;
 		}
 
-		f = br_fdb_find_rcu(br, n->ha, vid);
+		f = br_fdb_find_rcu(br, n->ha, vid, inner_vid);
 		if (f) {
 			bool replied = false;
 
diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 0ab4613aa07a..69c5f9c839a3 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -38,6 +38,7 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	struct net_bridge_vlan *vlan;
 	const unsigned char *dest;
 	u16 vid = 0;
+	u16 inner_vid = 0;
 
 	if (unlikely(reason != SKB_NOT_DROPPED_YET)) {
 		kfree_skb_reason(skb, reason);
@@ -63,7 +64,7 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	skb_reset_mac_header(skb);
 	skb_pull(skb, ETH_HLEN);
 
-	if (!br_allowed_ingress(br, br_vlan_group_rcu(br), skb, &vid,
+	if (!br_allowed_ingress(br, br_vlan_group_rcu(br), skb, &vid, &inner_vid,
 				&state, &vlan))
 		goto out;
 
@@ -71,7 +72,7 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	    (eth_hdr(skb)->h_proto == htons(ETH_P_ARP) ||
 	     eth_hdr(skb)->h_proto == htons(ETH_P_RARP)) &&
 	    br_opt_get(br, BROPT_NEIGH_SUPPRESS_ENABLED)) {
-		br_do_proxy_suppress_arp(skb, br, vid, NULL);
+		br_do_proxy_suppress_arp(skb, br, vid, inner_vid, NULL);
 	} else if (IS_ENABLED(CONFIG_IPV6) &&
 		   skb->protocol == htons(ETH_P_IPV6) &&
 		   br_opt_get(br, BROPT_NEIGH_SUPPRESS_ENABLED) &&
@@ -82,7 +83,7 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 
 			msg = br_is_nd_neigh_msg(skb, &_msg);
 			if (msg)
-				br_do_suppress_nd(skb, br, vid, NULL, msg);
+				br_do_suppress_nd(skb, br, vid, inner_vid, NULL, msg);
 	}
 
 	dest = eth_hdr(skb)->h_dest;
@@ -104,7 +105,7 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 			br_multicast_flood(mdst, skb, brmctx, false, true);
 		else
 			br_flood(br, skb, BR_PKT_MULTICAST, false, true, vid);
-	} else if ((dst = br_fdb_find_rcu(br, dest, vid)) != NULL) {
+	} else if ((dst = br_fdb_find_rcu(br, dest, vid, inner_vid)) != NULL) {
 		br_forward(dst->dst, skb, false, true);
 	} else {
 		br_flood(br, skb, BR_PKT_UNICAST, false, true, vid);
@@ -394,7 +395,7 @@ static int br_fill_forward_path(struct net_device_path_ctx *ctx,
 
 	br_vlan_fill_forward_path_pvid(br, ctx, path);
 
-	f = br_fdb_find_rcu(br, ctx->daddr, path->bridge.vlan_id);
+	f = br_fdb_find_rcu(br, ctx->daddr, path->bridge.vlan_id, 0);
 	if (!f)
 		return -1;
 
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 82bac2426631..ed8fdeef49d6 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -137,6 +137,10 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
 					&fdb->key.vlan_id))
 		goto nla_put_failure;
 
+	if (fdb->key.inner_vlan_id && nla_put(skb, NDA_INNER_VLAN, sizeof(u16),
+					      &fdb->key.inner_vlan_id))
+		goto nla_put_failure;
+
 	if (test_bit(BR_FDB_NOTIFY, &fdb->flags)) {
 		struct nlattr *nest = nla_nest_start(skb, NDA_FDB_EXT_ATTRS);
 		u8 notify_bits = FDB_NOTIFY_BIT;
@@ -204,13 +208,14 @@ static void fdb_notify(struct net_bridge *br,
 
 static struct net_bridge_fdb_entry *fdb_find_rcu(struct rhashtable *tbl,
 						 const unsigned char *addr,
-						 __u16 vid)
+						 __u16 vid, __u16 inner_vid)
 {
 	struct net_bridge_fdb_key key;
 
 	WARN_ON_ONCE(!rcu_read_lock_held());
 
 	key.vlan_id = vid;
+	key.inner_vlan_id = inner_vid;
 	memcpy(key.addr.addr, addr, sizeof(key.addr.addr));
 
 	return rhashtable_lookup(tbl, &key, br_fdb_rht_params);
@@ -219,14 +224,14 @@ static struct net_bridge_fdb_entry *fdb_find_rcu(struct rhashtable *tbl,
 /* requires bridge hash_lock */
 static struct net_bridge_fdb_entry *br_fdb_find(struct net_bridge *br,
 						const unsigned char *addr,
-						__u16 vid)
+						__u16 vid, __u16 inner_vid)
 {
 	struct net_bridge_fdb_entry *fdb;
 
 	lockdep_assert_held_once(&br->hash_lock);
 
 	rcu_read_lock();
-	fdb = fdb_find_rcu(&br->fdb_hash_tbl, addr, vid);
+	fdb = fdb_find_rcu(&br->fdb_hash_tbl, addr, vid, inner_vid);
 	rcu_read_unlock();
 
 	return fdb;
@@ -234,7 +239,7 @@ static struct net_bridge_fdb_entry *br_fdb_find(struct net_bridge *br,
 
 struct net_device *br_fdb_find_port(const struct net_device *br_dev,
 				    const unsigned char *addr,
-				    __u16 vid)
+				    __u16 vid, __u16 inner_vid)
 {
 	struct net_bridge_fdb_entry *f;
 	struct net_device *dev = NULL;
@@ -247,7 +252,7 @@ struct net_device *br_fdb_find_port(const struct net_device *br_dev,
 
 	br = netdev_priv(br_dev);
 	rcu_read_lock();
-	f = br_fdb_find_rcu(br, addr, vid);
+	f = br_fdb_find_rcu(br, addr, vid, inner_vid);
 	if (f && f->dst)
 		dev = f->dst->dev;
 	rcu_read_unlock();
@@ -258,9 +263,9 @@ EXPORT_SYMBOL_GPL(br_fdb_find_port);
 
 struct net_bridge_fdb_entry *br_fdb_find_rcu(struct net_bridge *br,
 					     const unsigned char *addr,
-					     __u16 vid)
+					     __u16 vid, __u16 inner_vid)
 {
-	return fdb_find_rcu(&br->fdb_hash_tbl, addr, vid);
+	return fdb_find_rcu(&br->fdb_hash_tbl, addr, vid, inner_vid);
 }
 
 /* When a static FDB entry is added, the mac address from the entry is
@@ -372,7 +377,7 @@ void br_fdb_find_delete_local(struct net_bridge *br,
 	struct net_bridge_fdb_entry *f;
 
 	spin_lock_bh(&br->hash_lock);
-	f = br_fdb_find(br, addr, vid);
+	f = br_fdb_find(br, addr, vid, 0);
 	if (f && test_bit(BR_FDB_LOCAL, &f->flags) &&
 	    !test_bit(BR_FDB_ADDED_BY_USER, &f->flags) && f->dst == p)
 		fdb_delete_local(br, p, f);
@@ -383,6 +388,7 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 					       struct net_bridge_port *source,
 					       const unsigned char *addr,
 					       __u16 vid,
+					       __u16 inner_vid,
 					       unsigned long flags)
 {
 	bool learned = !test_bit(BR_FDB_ADDED_BY_USER, &flags) &&
@@ -406,6 +412,7 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 	memcpy(fdb->key.addr.addr, addr, ETH_ALEN);
 	WRITE_ONCE(fdb->dst, source);
 	fdb->key.vlan_id = vid;
+	fdb->key.inner_vlan_id = inner_vid;
 	fdb->flags = flags;
 	fdb->updated = fdb->used = jiffies;
 	err = rhashtable_lookup_insert_fast(&br->fdb_hash_tbl, &fdb->rhnode,
@@ -431,7 +438,7 @@ static int fdb_add_local(struct net_bridge *br, struct net_bridge_port *source,
 	if (!is_valid_ether_addr(addr))
 		return -EINVAL;
 
-	fdb = br_fdb_find(br, addr, vid);
+	fdb = br_fdb_find(br, addr, vid, 0);
 	if (fdb) {
 		/* it is okay to have multiple ports with same
 		 * address, just use the first one.
@@ -443,7 +450,7 @@ static int fdb_add_local(struct net_bridge *br, struct net_bridge_port *source,
 		fdb_delete(br, fdb, true);
 	}
 
-	fdb = fdb_create(br, source, addr, vid,
+	fdb = fdb_create(br, source, addr, vid, 0,
 			 BIT(BR_FDB_LOCAL) | BIT(BR_FDB_STATIC));
 	if (!fdb)
 		return -ENOMEM;
@@ -504,7 +511,7 @@ void br_fdb_change_mac_address(struct net_bridge *br, const u8 *newaddr)
 	spin_lock_bh(&br->hash_lock);
 
 	/* If old entry was unassociated with any port, then delete it. */
-	f = br_fdb_find(br, br->dev->dev_addr, 0);
+	f = br_fdb_find(br, br->dev->dev_addr, 0, 0);
 	if (f && test_bit(BR_FDB_LOCAL, &f->flags) &&
 	    !f->dst && !test_bit(BR_FDB_ADDED_BY_USER, &f->flags))
 		fdb_delete_local(br, NULL, f);
@@ -520,7 +527,7 @@ void br_fdb_change_mac_address(struct net_bridge *br, const u8 *newaddr)
 	list_for_each_entry(v, &vg->vlan_list, vlist) {
 		if (!br_vlan_should_use(v))
 			continue;
-		f = br_fdb_find(br, br->dev->dev_addr, v->vid);
+		f = br_fdb_find(br, br->dev->dev_addr, v->vid, 0);
 		if (f && test_bit(BR_FDB_LOCAL, &f->flags) &&
 		    !f->dst && !test_bit(BR_FDB_ADDED_BY_USER, &f->flags))
 			fdb_delete_local(br, NULL, f);
@@ -585,6 +592,8 @@ static bool __fdb_flush_matches(const struct net_bridge *br,
 
 	if (desc->vlan_id && desc->vlan_id != f->key.vlan_id)
 		return false;
+	if (desc->inner_vlan_id && desc->inner_vlan_id != f->key.inner_vlan_id)
+		return false;
 	if (desc->port_ifindex && desc->port_ifindex != port_ifidx)
 		return false;
 	if (desc->flags_mask && (f->flags & desc->flags_mask) != desc->flags)
@@ -677,6 +686,7 @@ static const struct nla_policy br_fdb_del_bulk_policy[NDA_MAX + 1] = {
 	[NDA_IFINDEX]	= NLA_POLICY_MIN(NLA_S32, 1),
 	[NDA_NDM_STATE_MASK]	= { .type = NLA_U16 },
 	[NDA_NDM_FLAGS_MASK]	= { .type = NLA_U8 },
+	[NDA_INNER_VLAN]	= NLA_POLICY_RANGE(NLA_U16, 1, VLAN_N_VID - 2),
 };
 
 int br_fdb_delete_bulk(struct nlmsghdr *nlh, struct net_device *dev,
@@ -711,6 +721,9 @@ int br_fdb_delete_bulk(struct nlmsghdr *nlh, struct net_device *dev,
 	if (tb[NDA_VLAN])
 		desc.vlan_id = nla_get_u16(tb[NDA_VLAN]);
 
+	if (tb[NDA_INNER_VLAN])
+		desc.inner_vlan_id = nla_get_u16(tb[NDA_INNER_VLAN]);
+
 	if (ndm_flags & ~FDB_FLUSH_ALLOWED_NDM_FLAGS) {
 		NL_SET_ERR_MSG(extack, "Unsupported fdb flush ndm flag bits set");
 		return -EINVAL;
@@ -744,8 +757,8 @@ int br_fdb_delete_bulk(struct nlmsghdr *nlh, struct net_device *dev,
 		desc.port_ifindex = p->dev->ifindex;
 	}
 
-	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
-		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
+	br_debug(br, "flushing port ifindex: %d vlan id: %u inner vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
+		 desc.port_ifindex, desc.vlan_id, desc.inner_vlan_id, desc.flags, desc.flags_mask);
 
 	br_fdb_flush(br, &desc);
 
@@ -800,7 +813,7 @@ int br_fdb_test_addr(struct net_device *dev, unsigned char *addr)
 	else {
 		const struct net_bridge_port *dst = NULL;
 
-		fdb = br_fdb_find_rcu(port->br, addr, 0);
+		fdb = br_fdb_find_rcu(port->br, addr, 0, 0);
 		if (fdb)
 			dst = READ_ONCE(fdb->dst);
 
@@ -881,7 +894,7 @@ static bool __fdb_mark_active(struct net_bridge_fdb_entry *fdb)
 }
 
 void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
-		   const unsigned char *addr, u16 vid, unsigned long flags)
+		   const unsigned char *addr, u16 vid, u16 inner_vid, unsigned long flags)
 {
 	struct net_bridge_fdb_entry *fdb;
 
@@ -889,13 +902,13 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 	if (hold_time(br) == 0)
 		return;
 
-	fdb = fdb_find_rcu(&br->fdb_hash_tbl, addr, vid);
+	fdb = fdb_find_rcu(&br->fdb_hash_tbl, addr, vid, inner_vid);
 	if (likely(fdb)) {
 		/* attempt to update an entry for a local interface */
 		if (unlikely(test_bit(BR_FDB_LOCAL, &fdb->flags))) {
 			if (net_ratelimit())
-				br_warn(br, "received packet on %s with own address as source address (addr:%pM, vlan:%u)\n",
-					source->dev->name, addr, vid);
+				br_warn(br, "received packet on %s with own address as source address (addr:%pM, vlan:%u inner vlan:%u)\n",
+					source->dev->name, addr, vid, inner_vid);
 		} else {
 			unsigned long now = jiffies;
 			bool fdb_modified = false;
@@ -930,15 +943,15 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 					atomic_dec(&br->fdb_n_learned);
 			}
 			if (unlikely(fdb_modified)) {
-				trace_br_fdb_update(br, source, addr, vid, flags);
+				trace_br_fdb_update(br, source, addr, vid, inner_vid, flags);
 				fdb_notify(br, fdb, RTM_NEWNEIGH, true);
 			}
 		}
 	} else {
 		spin_lock(&br->hash_lock);
-		fdb = fdb_create(br, source, addr, vid, flags);
+		fdb = fdb_create(br, source, addr, vid, inner_vid, flags);
 		if (fdb) {
-			trace_br_fdb_update(br, source, addr, vid, flags);
+			trace_br_fdb_update(br, source, addr, vid, inner_vid, flags);
 			fdb_notify(br, fdb, RTM_NEWNEIGH, true);
 		}
 		/* else  we lose race and someone else inserts
@@ -1005,7 +1018,7 @@ int br_fdb_get(struct sk_buff *skb,
 	       struct nlattr *tb[],
 	       struct net_device *dev,
 	       const unsigned char *addr,
-	       u16 vid, u32 portid, u32 seq,
+	       u16 vid, u16 inner_vid, u32 portid, u32 seq,
 	       struct netlink_ext_ack *extack)
 {
 	struct net_bridge *br = netdev_priv(dev);
@@ -1013,7 +1026,7 @@ int br_fdb_get(struct sk_buff *skb,
 	int err = 0;
 
 	rcu_read_lock();
-	f = br_fdb_find_rcu(br, addr, vid);
+	f = br_fdb_find_rcu(br, addr, vid, inner_vid);
 	if (!f) {
 		NL_SET_ERR_MSG(extack, "Fdb entry not found");
 		err = -ENOENT;
@@ -1053,7 +1066,7 @@ static bool fdb_handle_notify(struct net_bridge_fdb_entry *fdb, u8 notify)
 
 /* Update (create or replace) forwarding database entry */
 static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
-			 const u8 *addr, struct ndmsg *ndm, u16 flags, u16 vid,
+			 const u8 *addr, struct ndmsg *ndm, u16 flags, u16 vid, u16 inner_vid,
 			 struct nlattr *nfea_tb[])
 {
 	bool is_sticky = !!(ndm->ndm_flags & NTF_STICKY);
@@ -1085,12 +1098,12 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 			return -EINVAL;
 	}
 
-	fdb = br_fdb_find(br, addr, vid);
+	fdb = br_fdb_find(br, addr, vid, inner_vid);
 	if (fdb == NULL) {
 		if (!(flags & NLM_F_CREATE))
 			return -ENOENT;
 
-		fdb = fdb_create(br, source, addr, vid,
+		fdb = fdb_create(br, source, addr, vid, inner_vid,
 				 BIT(BR_FDB_ADDED_BY_USER));
 		if (!fdb)
 			return -ENOMEM;
@@ -1151,7 +1164,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 
 static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 			struct net_bridge_port *p, const unsigned char *addr,
-			u16 nlh_flags, u16 vid, struct nlattr *nfea_tb[],
+			u16 nlh_flags, u16 vid, u16 inner_vid, struct nlattr *nfea_tb[],
 			bool *notified, struct netlink_ext_ack *extack)
 {
 	int err = 0;
@@ -1167,7 +1180,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 
 		local_bh_disable();
 		rcu_read_lock();
-		br_fdb_update(br, p, addr, vid, BIT(BR_FDB_ADDED_BY_USER));
+		br_fdb_update(br, p, addr, vid, inner_vid, BIT(BR_FDB_ADDED_BY_USER));
 		rcu_read_unlock();
 		local_bh_enable();
 	} else if (ndm->ndm_flags & NTF_EXT_LEARNED) {
@@ -1179,7 +1192,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 		err = br_fdb_external_learn_add(br, p, addr, vid, false, true);
 	} else {
 		spin_lock_bh(&br->hash_lock);
-		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
+		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, inner_vid, nfea_tb);
 		spin_unlock_bh(&br->hash_lock);
 	}
 
@@ -1196,7 +1209,7 @@ static const struct nla_policy br_nda_fdb_pol[NFEA_MAX + 1] = {
 /* Add new permanent fdb entry with RTM_NEWNEIGH */
 int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 	       struct net_device *dev,
-	       const unsigned char *addr, u16 vid, u16 nlh_flags,
+	       const unsigned char *addr, u16 vid, u16 inner_vid, u16 nlh_flags,
 	       bool *notified, struct netlink_ext_ack *extack)
 {
 	struct nlattr *nfea_tb[NFEA_MAX + 1], *attr;
@@ -1207,7 +1220,7 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 	u32 ext_flags = 0;
 	int err = 0;
 
-	trace_br_fdb_add(ndm, dev, addr, vid, nlh_flags);
+	trace_br_fdb_add(ndm, dev, addr, vid, inner_vid, nlh_flags);
 
 	if (!(ndm->ndm_state & (NUD_PERMANENT|NUD_NOARP|NUD_REACHABLE))) {
 		pr_info("bridge: RTM_NEWNEIGH with invalid state %#x\n", ndm->ndm_state);
@@ -1259,10 +1272,10 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		}
 
 		/* VID was specified, so use it. */
-		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, vid, nfea_tb,
+		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, vid, inner_vid, nfea_tb,
 				   notified, extack);
 	} else {
-		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, 0, nfea_tb,
+		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, 0, 0, nfea_tb,
 				   notified, extack);
 		if (err || !vg || !vg->num_vlans)
 			goto out;
@@ -1274,7 +1287,7 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			if (!br_vlan_should_use(v))
 				continue;
-			err = __br_fdb_add(ndm, br, p, addr, nlh_flags, v->vid,
+			err = __br_fdb_add(ndm, br, p, addr, nlh_flags, v->vid, inner_vid,
 					   nfea_tb, notified, extack);
 			if (err)
 				goto out;
@@ -1287,11 +1300,11 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 
 static int fdb_delete_by_addr_and_port(struct net_bridge *br,
 				       const struct net_bridge_port *p,
-				       const u8 *addr, u16 vlan, bool *notified)
+				       const u8 *addr, u16 vlan, u16 inner_vlan, bool *notified)
 {
 	struct net_bridge_fdb_entry *fdb;
 
-	fdb = br_fdb_find(br, addr, vlan);
+	fdb = br_fdb_find(br, addr, vlan, inner_vlan);
 	if (!fdb || READ_ONCE(fdb->dst) != p)
 		return -ENOENT;
 
@@ -1303,12 +1316,12 @@ static int fdb_delete_by_addr_and_port(struct net_bridge *br,
 
 static int __br_fdb_delete(struct net_bridge *br,
 			   const struct net_bridge_port *p,
-			   const unsigned char *addr, u16 vid, bool *notified)
+			   const unsigned char *addr, u16 vid, u16 inner_vid, bool *notified)
 {
 	int err;
 
 	spin_lock_bh(&br->hash_lock);
-	err = fdb_delete_by_addr_and_port(br, p, addr, vid, notified);
+	err = fdb_delete_by_addr_and_port(br, p, addr, vid, inner_vid, notified);
 	spin_unlock_bh(&br->hash_lock);
 
 	return err;
@@ -1317,7 +1330,7 @@ static int __br_fdb_delete(struct net_bridge *br,
 /* Remove neighbor entry with RTM_DELNEIGH */
 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 		  struct net_device *dev,
-		  const unsigned char *addr, u16 vid, bool *notified,
+		  const unsigned char *addr, u16 vid, u16 inner_vid, bool *notified,
 		  struct netlink_ext_ack *extack)
 {
 	struct net_bridge_vlan_group *vg;
@@ -1340,19 +1353,19 @@ int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 	}
 
 	if (vid) {
-		err = __br_fdb_delete(br, p, addr, vid, notified);
+		err = __br_fdb_delete(br, p, addr, vid, inner_vid, notified);
 	} else {
 		struct net_bridge_vlan *v;
 
 		err = -ENOENT;
-		err &= __br_fdb_delete(br, p, addr, 0, notified);
+		err &= __br_fdb_delete(br, p, addr, 0, 0, notified);
 		if (!vg || !vg->num_vlans)
 			return err;
 
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			if (!br_vlan_should_use(v))
 				continue;
-			err &= __br_fdb_delete(br, p, addr, v->vid, notified);
+			err &= __br_fdb_delete(br, p, addr, v->vid, inner_vid, notified);
 		}
 	}
 
@@ -1426,7 +1439,7 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 
 	spin_lock_bh(&br->hash_lock);
 
-	fdb = br_fdb_find(br, addr, vid);
+	fdb = br_fdb_find(br, addr, vid, 0);
 	if (!fdb) {
 		unsigned long flags = BIT(BR_FDB_ADDED_BY_EXT_LEARN);
 
@@ -1439,7 +1452,7 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 		if (locked)
 			flags |= BIT(BR_FDB_LOCKED);
 
-		fdb = fdb_create(br, p, addr, vid, flags);
+		fdb = fdb_create(br, p, addr, vid, 0, flags);
 		if (!fdb) {
 			err = -ENOMEM;
 			goto err_unlock;
@@ -1501,7 +1514,7 @@ int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
 
 	spin_lock_bh(&br->hash_lock);
 
-	fdb = br_fdb_find(br, addr, vid);
+	fdb = br_fdb_find(br, addr, vid, 0);
 	if (fdb && test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags))
 		fdb_delete(br, fdb, swdev_notify);
 	else
@@ -1519,7 +1532,7 @@ void br_fdb_offloaded_set(struct net_bridge *br, struct net_bridge_port *p,
 
 	spin_lock_bh(&br->hash_lock);
 
-	fdb = br_fdb_find(br, addr, vid);
+	fdb = br_fdb_find(br, addr, vid, 0);
 	if (fdb && offloaded != test_bit(BR_FDB_OFFLOADED, &fdb->flags))
 		change_bit(BR_FDB_OFFLOADED, &fdb->flags);
 
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index ceaa5a89b947..9d02fb324bb1 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -86,6 +86,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 	struct net_bridge *br;
 	bool promisc;
 	u16 vid = 0;
+	u16 inner_vid = 0;
 	u8 state;
 
 	if (!p)
@@ -104,13 +105,13 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 
 	brmctx = &p->br->multicast_ctx;
 	pmctx = &p->multicast_ctx;
-	if (!br_allowed_ingress(p->br, nbp_vlan_group_rcu(p), skb, &vid,
+	if (!br_allowed_ingress(p->br, nbp_vlan_group_rcu(p), skb, &vid, &inner_vid,
 				&state, &vlan))
 		goto out;
 
 	if (p->flags & BR_PORT_LOCKED) {
 		struct net_bridge_fdb_entry *fdb_src =
-			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
+			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid, inner_vid);
 
 		if (!fdb_src) {
 			/* FDB miss. Create locked FDB entry if MAB is enabled
@@ -118,7 +119,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 			 */
 			if (p->flags & BR_PORT_MAB)
 				br_fdb_update(br, p, eth_hdr(skb)->h_source,
-					      vid, BIT(BR_FDB_LOCKED));
+					      vid, inner_vid, BIT(BR_FDB_LOCKED));
 			goto drop;
 		} else if (READ_ONCE(fdb_src->dst) != p ||
 			   test_bit(BR_FDB_LOCAL, &fdb_src->flags)) {
@@ -128,7 +129,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 			/* FDB match, but entry is locked. Refresh it and drop
 			 * the packet.
 			 */
-			br_fdb_update(br, p, eth_hdr(skb)->h_source, vid,
+			br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, inner_vid,
 				      BIT(BR_FDB_LOCKED));
 			goto drop;
 		}
@@ -138,7 +139,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 
 	/* insert into forwarding database after filtering to avoid spoofing */
 	if (p->flags & BR_LEARNING)
-		br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, 0);
+		br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, inner_vid, 0);
 
 	promisc = !!(br->dev->flags & IFF_PROMISC);
 	local_rcv = promisc;
@@ -164,7 +165,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 	if (IS_ENABLED(CONFIG_INET) &&
 	    (skb->protocol == htons(ETH_P_ARP) ||
 	     skb->protocol == htons(ETH_P_RARP))) {
-		br_do_proxy_suppress_arp(skb, br, vid, p);
+		br_do_proxy_suppress_arp(skb, br, vid, inner_vid, p);
 	} else if (IS_ENABLED(CONFIG_IPV6) &&
 		   skb->protocol == htons(ETH_P_IPV6) &&
 		   br_opt_get(br, BROPT_NEIGH_SUPPRESS_ENABLED) &&
@@ -175,7 +176,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 
 			msg = br_is_nd_neigh_msg(skb, &_msg);
 			if (msg)
-				br_do_suppress_nd(skb, br, vid, p, msg);
+				br_do_suppress_nd(skb, br, vid, inner_vid, p, msg);
 	}
 
 	switch (pkt_type) {
@@ -195,7 +196,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 		}
 		break;
 	case BR_PKT_UNICAST:
-		dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);
+		dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid, inner_vid);
 		break;
 	default:
 		break;
@@ -232,13 +233,14 @@ static void __br_handle_local_finish(struct sk_buff *skb)
 {
 	struct net_bridge_port *p = br_port_get_rcu(skb->dev);
 	u16 vid = 0;
+	u16 inner_vid = 0;
 
 	/* check if vlan is allowed, to avoid spoofing */
 	if ((p->flags & BR_LEARNING) &&
 	    nbp_state_should_learn(p) &&
 	    !br_opt_get(p->br, BROPT_NO_LL_LEARN) &&
-	    br_should_learn(p, skb, &vid))
-		br_fdb_update(p->br, p, eth_hdr(skb)->h_source, vid, 0);
+	    br_should_learn(p, skb, &vid, &inner_vid))
+		br_fdb_update(p->br, p, eth_hdr(skb)->h_source, vid, inner_vid, 0);
 }
 
 /* note: already called with rcu_read_lock */
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 3e0f47203f2a..670279a3625a 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1270,6 +1270,7 @@ static const struct nla_policy br_policy[IFLA_BR_MAX + 1] = {
 		NLA_POLICY_EXACT_LEN(sizeof(struct br_boolopt_multi)),
 	[IFLA_BR_FDB_N_LEARNED] = { .type = NLA_REJECT },
 	[IFLA_BR_FDB_MAX_LEARNED] = { .type = NLA_U32 },
+	[IFLA_BR_FDB_INNER_VLAN_ENABLED] = { .type = NLA_U8 },
 };
 
 static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
@@ -1326,9 +1327,22 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 		err = br_vlan_filter_toggle(br, vlan_filter, extack);
 		if (err)
 			return err;
+
+		if (!br_opt_get(br, BROPT_VLAN_ENABLED))
+			br_opt_toggle(br, BROPT_FDB_INNER_VLAN_ENABLED, false);
 	}
 
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING
+	if (data[IFLA_BR_FDB_INNER_VLAN_ENABLED]) {
+		u8 val;
+
+		if (!br_opt_get(br, BROPT_VLAN_ENABLED))
+			return -EINVAL;
+
+		val = nla_get_u8(data[IFLA_BR_FDB_INNER_VLAN_ENABLED]);
+		br_opt_toggle(br, BROPT_FDB_INNER_VLAN_ENABLED, !!val);
+	}
+
 	if (data[IFLA_BR_VLAN_PROTOCOL]) {
 		__be16 vlan_proto = nla_get_be16(data[IFLA_BR_VLAN_PROTOCOL]);
 
@@ -1693,7 +1707,9 @@ static int br_fill_info(struct sk_buff *skb, const struct net_device *brdev)
 	    nla_put_u8(skb, IFLA_BR_VLAN_STATS_ENABLED,
 		       br_opt_get(br, BROPT_VLAN_STATS_ENABLED)) ||
 	    nla_put_u8(skb, IFLA_BR_VLAN_STATS_PER_PORT,
-		       br_opt_get(br, BROPT_VLAN_STATS_PER_PORT)))
+		       br_opt_get(br, BROPT_VLAN_STATS_PER_PORT)) ||
+	    nla_put_u8(skb, IFLA_BR_FDB_INNER_VLAN_ENABLED,
+		       br_opt_get(br, BROPT_FDB_INNER_VLAN_ENABLED)))
 		return -EMSGSIZE;
 #endif
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 9853cfbb9d14..2c06220f5223 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -282,6 +282,7 @@ enum {
 struct net_bridge_fdb_key {
 	mac_addr addr;
 	u16 vlan_id;
+	u16 inner_vlan_id;
 };
 
 struct net_bridge_fdb_entry {
@@ -304,6 +305,7 @@ struct net_bridge_fdb_flush_desc {
 	unsigned long			flags_mask;
 	int				port_ifindex;
 	u16				vlan_id;
+	u16				inner_vlan_id;
 };
 
 #define MDB_PG_FLAGS_PERMANENT	BIT(0)
@@ -483,6 +485,7 @@ enum net_bridge_opts {
 	BROPT_VLAN_BRIDGE_BINDING,
 	BROPT_MCAST_VLAN_SNOOPING_ENABLED,
 	BROPT_MST_ENABLED,
+	BROPT_FDB_INNER_VLAN_ENABLED,
 };
 
 struct net_bridge {
@@ -842,27 +845,27 @@ void br_fdb_delete_by_port(struct net_bridge *br,
 			   const struct net_bridge_port *p, u16 vid, int do_all);
 struct net_bridge_fdb_entry *br_fdb_find_rcu(struct net_bridge *br,
 					     const unsigned char *addr,
-					     __u16 vid);
+					     __u16 vid, __u16 inner_vid);
 int br_fdb_test_addr(struct net_device *dev, unsigned char *addr);
 int br_fdb_fillbuf(struct net_bridge *br, void *buf, unsigned long count,
 		   unsigned long off);
 int br_fdb_add_local(struct net_bridge *br, struct net_bridge_port *source,
 		     const unsigned char *addr, u16 vid);
 void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
-		   const unsigned char *addr, u16 vid, unsigned long flags);
+		   const unsigned char *addr, u16 vid, u16 inner_vid, unsigned long flags);
 
 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
-		  struct net_device *dev, const unsigned char *addr, u16 vid,
+		  struct net_device *dev, const unsigned char *addr, u16 vid, u16 inner_vid,
 		  bool *notified, struct netlink_ext_ack *extack);
 int br_fdb_delete_bulk(struct nlmsghdr *nlh, struct net_device *dev,
 		       struct netlink_ext_ack *extack);
 int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device *dev,
-	       const unsigned char *addr, u16 vid, u16 nlh_flags,
+	       const unsigned char *addr, u16 vid, u16 inner_vid, u16 nlh_flags,
 	       bool *notified, struct netlink_ext_ack *extack);
 int br_fdb_dump(struct sk_buff *skb, struct netlink_callback *cb,
 		struct net_device *dev, struct net_device *fdev, int *idx);
 int br_fdb_get(struct sk_buff *skb, struct nlattr *tb[], struct net_device *dev,
-	       const unsigned char *addr, u16 vid, u32 portid, u32 seq,
+	       const unsigned char *addr, u16 vid, u16 inner_vid, u32 portid, u32 seq,
 	       struct netlink_ext_ack *extack);
 int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
 void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p);
@@ -1532,11 +1535,11 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING
 bool br_allowed_ingress(const struct net_bridge *br,
 			struct net_bridge_vlan_group *vg, struct sk_buff *skb,
-			u16 *vid, u8 *state,
+			u16 *vid, u16 *inner_vid, u8 *state,
 			struct net_bridge_vlan **vlan);
 bool br_allowed_egress(struct net_bridge_vlan_group *vg,
 		       const struct sk_buff *skb);
-bool br_should_learn(struct net_bridge_port *p, struct sk_buff *skb, u16 *vid);
+bool br_should_learn(struct net_bridge_port *p, struct sk_buff *skb, u16 *vid, u16 *inner_vid);
 struct sk_buff *br_handle_vlan(struct net_bridge *br,
 			       const struct net_bridge_port *port,
 			       struct net_bridge_vlan_group *vg,
@@ -1645,7 +1648,7 @@ static inline u16 br_vlan_flags(const struct net_bridge_vlan *v, u16 pvid)
 static inline bool br_allowed_ingress(const struct net_bridge *br,
 				      struct net_bridge_vlan_group *vg,
 				      struct sk_buff *skb,
-				      u16 *vid, u8 *state,
+				      u16 *vid, u16 *inner_vid, u8 *state,
 				      struct net_bridge_vlan **vlan)
 
 {
@@ -1660,7 +1663,7 @@ static inline bool br_allowed_egress(struct net_bridge_vlan_group *vg,
 }
 
 static inline bool br_should_learn(struct net_bridge_port *p,
-				   struct sk_buff *skb, u16 *vid)
+				   struct sk_buff *skb, u16 *vid, u16 *inner_vid)
 {
 	return true;
 }
@@ -2287,9 +2290,9 @@ static inline void br_switchdev_init(struct net_bridge *br)
 /* br_arp_nd_proxy.c */
 void br_recalculate_neigh_suppress_enabled(struct net_bridge *br);
 void br_do_proxy_suppress_arp(struct sk_buff *skb, struct net_bridge *br,
-			      u16 vid, struct net_bridge_port *p);
+			      u16 vid, u16 inner_vid, struct net_bridge_port *p);
 void br_do_suppress_nd(struct sk_buff *skb, struct net_bridge *br,
-		       u16 vid, struct net_bridge_port *p, struct nd_msg *msg);
+		       u16 vid, u16 inner_vid, struct net_bridge_port *p, struct nd_msg *msg);
 struct nd_msg *br_is_nd_neigh_msg(struct sk_buff *skb, struct nd_msg *m);
 bool br_is_neigh_suppress_enabled(const struct net_bridge_port *p, u16 vid);
 #endif
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 89f51ea4cabe..5820e3123f3d 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -530,10 +530,17 @@ struct sk_buff *br_handle_vlan(struct net_bridge *br,
 	return skb;
 }
 
+static u16 get_inner_vid(struct sk_buff *skb)
+{
+	struct vlan_hdr *vhdr = (struct vlan_hdr *)skb->data;
+
+	return ntohs(vhdr->h_vlan_TCI) & VLAN_VID_MASK;
+}
+
 /* Called under RCU */
 static bool __allowed_ingress(const struct net_bridge *br,
 			      struct net_bridge_vlan_group *vg,
-			      struct sk_buff *skb, u16 *vid,
+			      struct sk_buff *skb, u16 *vid, u16 *inner_vid,
 			      u8 *state,
 			      struct net_bridge_vlan **vlan)
 {
@@ -565,10 +572,15 @@ static bool __allowed_ingress(const struct net_bridge *br,
 
 			skb_pull(skb, ETH_HLEN);
 			skb_reset_mac_len(skb);
+			if (br_opt_get(br, BROPT_FDB_INNER_VLAN_ENABLED))
+				*inner_vid = *vid;
 			*vid = 0;
 			tagged = false;
 		} else {
 			tagged = true;
+			if (eth_type_vlan(skb->protocol) &&
+			    br_opt_get(br, BROPT_FDB_INNER_VLAN_ENABLED))
+				*inner_vid = get_inner_vid(skb);
 		}
 	} else {
 		/* Untagged frame */
@@ -640,7 +652,7 @@ static bool __allowed_ingress(const struct net_bridge *br,
 
 bool br_allowed_ingress(const struct net_bridge *br,
 			struct net_bridge_vlan_group *vg, struct sk_buff *skb,
-			u16 *vid, u8 *state,
+			u16 *vid, u16 *inner_vid, u8 *state,
 			struct net_bridge_vlan **vlan)
 {
 	/* If VLAN filtering is disabled on the bridge, all packets are
@@ -652,7 +664,7 @@ bool br_allowed_ingress(const struct net_bridge *br,
 		return true;
 	}
 
-	return __allowed_ingress(br, vg, skb, vid, state, vlan);
+	return __allowed_ingress(br, vg, skb, vid, inner_vid, state, vlan);
 }
 
 /* Called under RCU. */
@@ -676,7 +688,7 @@ bool br_allowed_egress(struct net_bridge_vlan_group *vg,
 }
 
 /* Called under RCU */
-bool br_should_learn(struct net_bridge_port *p, struct sk_buff *skb, u16 *vid)
+bool br_should_learn(struct net_bridge_port *p, struct sk_buff *skb, u16 *vid, u16 *inner_vid)
 {
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge *br = p->br;
@@ -690,8 +702,18 @@ bool br_should_learn(struct net_bridge_port *p, struct sk_buff *skb, u16 *vid)
 	if (!vg || !vg->num_vlans)
 		return false;
 
-	if (!br_vlan_get_tag(skb, vid) && skb->vlan_proto != br->vlan_proto)
-		*vid = 0;
+	if (!br_vlan_get_tag(skb, vid)) {
+		/* Tagged frame */
+		if (skb->vlan_proto != br->vlan_proto) {
+			if (br_opt_get(br, BROPT_FDB_INNER_VLAN_ENABLED))
+				*inner_vid = *vid;
+			*vid = 0;
+		} else {
+			if (eth_type_vlan(skb->protocol) &&
+			    br_opt_get(br, BROPT_FDB_INNER_VLAN_ENABLED))
+				*inner_vid = get_inner_vid(skb);
+		}
+	}
 
 	if (!*vid) {
 		*vid = br_get_pvid(vg);
diff --git a/net/core/neighbour.c b/net/core/neighbour.c
index 5e572f6eaf2c..6179af735685 100644
--- a/net/core/neighbour.c
+++ b/net/core/neighbour.c
@@ -1846,6 +1846,7 @@ const struct nla_policy nda_policy[NDA_MAX+1] = {
 	[NDA_NH_ID]		= { .type = NLA_U32 },
 	[NDA_FLAGS_EXT]		= NLA_POLICY_MASK(NLA_U32, NTF_EXT_MASK),
 	[NDA_FDB_EXT_ATTRS]	= { .type = NLA_NESTED },
+	[NDA_INNER_VLAN]	= { .type = NLA_U16 },
 };
 
 static int neigh_delete(struct sk_buff *skb, struct nlmsghdr *nlh,
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index dd142f444659..9f0ea849417e 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4397,7 +4397,7 @@ void rtmsg_ifinfo_newnet(int type, struct net_device *dev, unsigned int change,
 
 static int nlmsg_populate_fdb_fill(struct sk_buff *skb,
 				   struct net_device *dev,
-				   u8 *addr, u16 vid, u32 pid, u32 seq,
+				   u8 *addr, u16 vid, u16 inner_vid, u32 pid, u32 seq,
 				   int type, unsigned int flags,
 				   int nlflags, u16 ndm_state)
 {
@@ -4423,6 +4423,10 @@ static int nlmsg_populate_fdb_fill(struct sk_buff *skb,
 		if (nla_put(skb, NDA_VLAN, sizeof(u16), &vid))
 			goto nla_put_failure;
 
+	if (inner_vid)
+		if (nla_put(skb, NDA_INNER_VLAN, sizeof(u16), &inner_vid))
+			goto nla_put_failure;
+
 	nlmsg_end(skb, nlh);
 	return 0;
 
@@ -4439,7 +4443,7 @@ static inline size_t rtnl_fdb_nlmsg_size(const struct net_device *dev)
 	       0;
 }
 
-static void rtnl_fdb_notify(struct net_device *dev, u8 *addr, u16 vid, int type,
+static void rtnl_fdb_notify(struct net_device *dev, u8 *addr, u16 vid, u16 inner_vid, int type,
 			    u16 ndm_state)
 {
 	struct net *net = dev_net(dev);
@@ -4450,7 +4454,7 @@ static void rtnl_fdb_notify(struct net_device *dev, u8 *addr, u16 vid, int type,
 	if (!skb)
 		goto errout;
 
-	err = nlmsg_populate_fdb_fill(skb, dev, addr, vid,
+	err = nlmsg_populate_fdb_fill(skb, dev, addr, vid, inner_vid,
 				      0, 0, type, NTF_SELF, 0, ndm_state);
 	if (err < 0) {
 		kfree_skb(skb);
@@ -4469,7 +4473,7 @@ static void rtnl_fdb_notify(struct net_device *dev, u8 *addr, u16 vid, int type,
 int ndo_dflt_fdb_add(struct ndmsg *ndm,
 		     struct nlattr *tb[],
 		     struct net_device *dev,
-		     const unsigned char *addr, u16 vid,
+		     const unsigned char *addr, u16 vid, u16 inner_vid,
 		     u16 flags)
 {
 	int err = -EINVAL;
@@ -4487,7 +4491,7 @@ int ndo_dflt_fdb_add(struct ndmsg *ndm,
 		return err;
 	}
 
-	if (vid) {
+	if (vid || inner_vid) {
 		netdev_info(dev, "vlans aren't supported yet for dev_uc|mc_add()\n");
 		return err;
 	}
@@ -4535,7 +4539,7 @@ static int rtnl_fdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct nlattr *tb[NDA_MAX+1];
 	struct net_device *dev;
 	u8 *addr;
-	u16 vid;
+	u16 vid, inner_vid;
 	int err;
 
 	err = nlmsg_parse_deprecated(nlh, sizeof(*ndm), tb, NDA_MAX, NULL,
@@ -4571,6 +4575,10 @@ static int rtnl_fdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (err)
 		return err;
 
+	err = fdb_vid_parse(tb[NDA_INNER_VLAN], &inner_vid, extack);
+	if (err)
+		return err;
+
 	err = -EOPNOTSUPP;
 
 	/* Support fdb on master device the net/bridge default case */
@@ -4580,7 +4588,7 @@ static int rtnl_fdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 		const struct net_device_ops *ops = br_dev->netdev_ops;
 		bool notified = false;
 
-		err = ops->ndo_fdb_add(ndm, tb, dev, addr, vid,
+		err = ops->ndo_fdb_add(ndm, tb, dev, addr, vid, inner_vid,
 				       nlh->nlmsg_flags, &notified, extack);
 		if (err)
 			goto out;
@@ -4594,15 +4602,15 @@ static int rtnl_fdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 		if (dev->netdev_ops->ndo_fdb_add)
 			err = dev->netdev_ops->ndo_fdb_add(ndm, tb, dev, addr,
-							   vid,
+							   vid, inner_vid,
 							   nlh->nlmsg_flags,
 							   &notified, extack);
 		else
-			err = ndo_dflt_fdb_add(ndm, tb, dev, addr, vid,
+			err = ndo_dflt_fdb_add(ndm, tb, dev, addr, vid, inner_vid,
 					       nlh->nlmsg_flags);
 
 		if (!err && !notified) {
-			rtnl_fdb_notify(dev, addr, vid, RTM_NEWNEIGH,
+			rtnl_fdb_notify(dev, addr, vid, inner_vid, RTM_NEWNEIGH,
 					ndm->ndm_state);
 			ndm->ndm_flags &= ~NTF_SELF;
 		}
@@ -4617,7 +4625,7 @@ static int rtnl_fdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 int ndo_dflt_fdb_del(struct ndmsg *ndm,
 		     struct nlattr *tb[],
 		     struct net_device *dev,
-		     const unsigned char *addr, u16 vid)
+		     const unsigned char *addr, u16 vid, u16 inner_vid)
 {
 	int err = -EINVAL;
 
@@ -4649,7 +4657,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct net_device *dev;
 	__u8 *addr = NULL;
 	int err;
-	u16 vid;
+	u16 vid, inner_vid;
 
 	if (!netlink_capable(skb, CAP_NET_ADMIN))
 		return -EPERM;
@@ -4688,6 +4696,10 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		err = fdb_vid_parse(tb[NDA_VLAN], &vid, extack);
 		if (err)
 			return err;
+
+		err = fdb_vid_parse(tb[NDA_INNER_VLAN], &inner_vid, extack);
+		if (err)
+			return err;
 	}
 
 	if (dev->type != ARPHRD_ETHER) {
@@ -4706,7 +4718,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		ops = br_dev->netdev_ops;
 		if (!del_bulk) {
 			if (ops->ndo_fdb_del)
-				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid,
+				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, inner_vid,
 						       &notified, extack);
 		} else {
 			if (ops->ndo_fdb_del_bulk)
@@ -4726,10 +4738,10 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		ops = dev->netdev_ops;
 		if (!del_bulk) {
 			if (ops->ndo_fdb_del)
-				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid,
+				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, inner_vid,
 						       &notified, extack);
 			else
-				err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
+				err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid, inner_vid);
 		} else {
 			/* in case err was cleared by NTF_MASTER call */
 			err = -EOPNOTSUPP;
@@ -4739,7 +4751,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 		if (!err) {
 			if (!del_bulk && !notified)
-				rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH,
+				rtnl_fdb_notify(dev, addr, vid, inner_vid, RTM_DELNEIGH,
 						ndm->ndm_state);
 			ndm->ndm_flags &= ~NTF_SELF;
 		}
@@ -4765,7 +4777,7 @@ static int nlmsg_populate_fdb(struct sk_buff *skb,
 		if (*idx < cb->args[2])
 			goto skip;
 
-		err = nlmsg_populate_fdb_fill(skb, dev, ha->addr, 0,
+		err = nlmsg_populate_fdb_fill(skb, dev, ha->addr, 0, 0,
 					      portid, seq,
 					      RTM_NEWNEIGH, NTF_SELF,
 					      NLM_F_MULTI, NUD_PERMANENT);
@@ -5002,7 +5014,7 @@ static int rtnl_fdb_dump(struct sk_buff *skb, struct netlink_callback *cb)
 static int valid_fdb_get_strict(const struct nlmsghdr *nlh,
 				struct nlattr **tb, u8 *ndm_flags,
 				int *br_idx, int *brport_idx, u8 **addr,
-				u16 *vid, struct netlink_ext_ack *extack)
+				u16 *vid, u16 *inner_vid, struct netlink_ext_ack *extack)
 {
 	struct ndmsg *ndm;
 	int err, i;
@@ -5051,6 +5063,11 @@ static int valid_fdb_get_strict(const struct nlmsghdr *nlh,
 			if (err)
 				return err;
 			break;
+		case NDA_INNER_VLAN:
+			err = fdb_vid_parse(tb[i], inner_vid, extack);
+			if (err)
+				return err;
+			break;
 		case NDA_VNI:
 			break;
 		default:
@@ -5075,10 +5092,11 @@ static int rtnl_fdb_get(struct sk_buff *in_skb, struct nlmsghdr *nlh,
 	int br_idx = 0;
 	u8 *addr = NULL;
 	u16 vid = 0;
+	u16 inner_vid = 0;
 	int err;
 
 	err = valid_fdb_get_strict(nlh, tb, &ndm_flags, &br_idx,
-				   &brport_idx, &addr, &vid, extack);
+				   &brport_idx, &addr, &vid, &inner_vid, extack);
 	if (err < 0)
 		return err;
 
@@ -5146,7 +5164,7 @@ static int rtnl_fdb_get(struct sk_buff *in_skb, struct nlmsghdr *nlh,
 
 	if (br_dev)
 		dev = br_dev;
-	err = ops->ndo_fdb_get(skb, tb, dev, addr, vid,
+	err = ops->ndo_fdb_get(skb, tb, dev, addr, vid, inner_vid,
 			       NETLINK_CB(in_skb).portid,
 			       nlh->nlmsg_seq, extack);
 	if (err)
-- 
2.34.1

