Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8177550D198
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Apr 2022 14:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E8F560E8A;
	Sun, 24 Apr 2022 12:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9IglQMWNJ_yr; Sun, 24 Apr 2022 12:10:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 056AC60BD1;
	Sun, 24 Apr 2022 12:10:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49D5A1BF402
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46F7D8196A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZTCLoQSL1A2o for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 12:10:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E6FD818D7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:10:05 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id w4so17132807wrg.12
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 05:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I0KjIpgEpGIs4Rcz1EDMb7v+ywRUzPgRr1Wdx2LhcoQ=;
 b=JpShRDd1K+3yyW8TIXsTt7wIzaR6We1AUaCQvjdA3qMFQclqqfa9qSw9TPSrF2B41Q
 a/xhHMhPJBLyEtGW1SR5LNxMVJW752HklVLCX7yxFH1uIdPoODunnvNr2kPKeboxivdX
 TJZCtxlaSWe/bi32w7qXaAXmf9JRSqNFDJVr/N8eY3b6ei+muQanMWMoEyy3rzb+qOmx
 oc3x6j5xGDNhuhfFy+/1WulYfK69sqeclOiSOieV2GeTKd1qGL23NRPTJMYVb+d1vHOf
 AjTrzoopnTlkZg250yri3NR16A603irB+VMC1j8f/fvD1ED4dBQ3hINC9mBY297Yeb08
 CwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I0KjIpgEpGIs4Rcz1EDMb7v+ywRUzPgRr1Wdx2LhcoQ=;
 b=1Np1g6oUZUt2UUlmEeYXvI4tWA4Pg//eK7E5MiOEZPVDlLArdBktYzhP5Rf+NcoY+t
 t9doCmazPQ3TgmyWv+QdJaJRGUZcupyzzs96+UdmnlQ6QakXlKDcN4uWVG8wcVlYM65Y
 Q/P4twqmhkC2ZDLHJ9Yj93/pLgqrZ3rwpHBZ4z9iNEGtZEMX7/+i+5l7K1FJsVYfoc1K
 FvtSaSYiC3jRpu2+15sn5xSbrtoubBx45JdLJMePZ5LSwUthr8tfzeqdyWe9+ozruW/u
 YH0IPR8ans45WIn2qWaL4URWANyVgG0+A6y6BEPv7vdTIyYern+QjhMyay8cbynZLB/E
 TeXQ==
X-Gm-Message-State: AOAM530zURgoE9UlppgvuxAcwG8JObBKdmn9Y1dq9mdedcWM3770SBoc
 w1X3gyN+v2sSqpwLDTzGaLU=
X-Google-Smtp-Source: ABdhPJwUw1ySDEmq0PqHdCAoAGnA5ID6F9MYTG+U/K72N/vzyNdoDaSFaRzqzK2bYgjgVjo16QaZBw==
X-Received: by 2002:a5d:474f:0:b0:20a:cb5c:bbd7 with SMTP id
 o15-20020a5d474f000000b0020acb5cbbd7mr8573031wrs.21.1650802203454; 
 Sun, 24 Apr 2022 05:10:03 -0700 (PDT)
Received: from alaa-emad ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 v11-20020a056000144b00b0020a9c02f60dsm6352660wrx.50.2022.04.24.05.10.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Apr 2022 05:10:02 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Sun, 24 Apr 2022 14:09:44 +0200
Message-Id: <c3a882e4fb6f9228f704ebe3c1fcace14ee6cdf2.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 1/2] rtnetlink: add extack
 support in fdb del handlers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: eng.alaamohamedsoliman.am@gmail.com, shshaikh@marvell.com,
 jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com,
 alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, razor@blackwall.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, claudiu.manoil@nxp.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add extack support to .ndo_fdb_del in netdevice.h and
all related methods.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V3:
        fix errors reported by checkpatch.pl
---
 drivers/net/ethernet/intel/ice/ice_main.c        | 4 ++--
 drivers/net/ethernet/mscc/ocelot_net.c           | 4 ++--
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 2 +-
 drivers/net/macvlan.c                            | 2 +-
 drivers/net/vxlan/vxlan_core.c                   | 2 +-
 include/linux/netdevice.h                        | 2 +-
 net/bridge/br_fdb.c                              | 2 +-
 net/bridge/br_private.h                          | 2 +-
 net/core/rtnetlink.c                             | 4 ++--
 9 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d768925785ca..7b55d8d94803 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5678,10 +5678,10 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
 static int
 ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
 	    struct net_device *dev, const unsigned char *addr,
-	    __always_unused u16 vid)
+	    __always_unused u16 vid, struct netlink_ext_ack *extack)
 {
 	int err;
-
+
 	if (ndm->ndm_state & NUD_PERMANENT) {
 		netdev_err(dev, "FDB only supports static addresses\n");
 		return -EINVAL;
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index 247bc105bdd2..e07c64e3159c 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -774,14 +774,14 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],

 static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			       struct net_device *dev,
-			       const unsigned char *addr, u16 vid)
+			       const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
 {
 	struct ocelot_port_private *priv = netdev_priv(dev);
 	struct ocelot_port *ocelot_port = &priv->port;
 	struct ocelot *ocelot = ocelot_port->ocelot;
 	int port = priv->chip_port;

-	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge);
+	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge, extack);
 }

 static int ocelot_port_fdb_dump(struct sk_buff *skb,
diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
index d320567b2cca..51fa23418f6a 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
@@ -368,7 +368,7 @@ static int qlcnic_set_mac(struct net_device *netdev, void *p)

 static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			struct net_device *netdev,
-			const unsigned char *addr, u16 vid)
+			const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
 {
 	struct qlcnic_adapter *adapter = netdev_priv(netdev);
 	int err = -EOPNOTSUPP;
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index 069e8824c264..ffd34d9f7049 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1017,7 +1017,7 @@ static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],

 static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			   struct net_device *dev,
-			   const unsigned char *addr, u16 vid)
+			   const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
 {
 	struct macvlan_dev *vlan = netdev_priv(dev);
 	int err = -EINVAL;
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index de97ff98d36e..cf2f60037340 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1280,7 +1280,7 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
 /* Delete entry (via netlink) */
 static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 			    struct net_device *dev,
-			    const unsigned char *addr, u16 vid)
+			    const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
 {
 	struct vxlan_dev *vxlan = netdev_priv(dev);
 	union vxlan_addr ip;
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 28ea4f8269d4..d0d2a8f33c73 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1509,7 +1509,7 @@ struct net_device_ops {
 					       struct nlattr *tb[],
 					       struct net_device *dev,
 					       const unsigned char *addr,
-					       u16 vid);
+					       u16 vid, struct netlink_ext_ack *extack);
 	int			(*ndo_fdb_dump)(struct sk_buff *skb,
 						struct netlink_callback *cb,
 						struct net_device *dev,
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 6ccda68bd473..5bfce2e9a553 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1110,7 +1110,7 @@ static int __br_fdb_delete(struct net_bridge *br,
 /* Remove neighbor entry with RTM_DELNEIGH */
 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 		  struct net_device *dev,
-		  const unsigned char *addr, u16 vid)
+		  const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
 {
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p = NULL;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 18ccc3d5d296..95348c1c9ce5 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -780,7 +780,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 		   const unsigned char *addr, u16 vid, unsigned long flags);

 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
-		  struct net_device *dev, const unsigned char *addr, u16 vid);
+		  struct net_device *dev, const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack);
 int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device *dev,
 	       const unsigned char *addr, u16 vid, u16 nlh_flags,
 	       struct netlink_ext_ack *extack);
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 4041b3e2e8ec..99b30ae58a47 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4223,7 +4223,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		const struct net_device_ops *ops = br_dev->netdev_ops;

 		if (ops->ndo_fdb_del)
-			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
+			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, extack);

 		if (err)
 			goto out;
@@ -4235,7 +4235,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (ndm->ndm_flags & NTF_SELF) {
 		if (dev->netdev_ops->ndo_fdb_del)
 			err = dev->netdev_ops->ndo_fdb_del(ndm, tb, dev, addr,
-							   vid);
+							   vid, extack);
 		else
 			err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);

--
2.36.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
