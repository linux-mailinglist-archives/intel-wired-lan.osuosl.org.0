Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 246E3ADB68C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 18:21:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E8AB80DC3;
	Mon, 16 Jun 2025 16:21:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JVeO4RarMoHo; Mon, 16 Jun 2025 16:21:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 671688065A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750090884;
	bh=1xlGbr7S7dkulxlPf5XLC+Ja0lhJQ4XwBOGvbFljsao=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UuD+5zRpSqdC57UF0JGx35WyWn0Ke8QGRdyXiRIMmGVgKfpXR6kTN29CkdpnYyyUb
	 6MPXKjI/RX4sT/1MNoyquqD3eQjbBCiqdxRyrslvfYeOlGp18jn03w5J2KPuBiKKX/
	 5FA0T1TRHumJMKXTEeakaJopn/eMvcqP28GhYRP5UyOP00iaSyeJxv0Z843sZYHdy6
	 f7B3DPdqQQ4ZXgyx0IUri7pu6M/5Skbjsgzqng3tbJdNHA5bIFGsvu2O/7eneAaQa+
	 HzrIPDpnyCfqsHTCY1QlmMJ/sbnE3kXuvCOsvQnbrlodvaJ0KAsIfQ6Pf49DzBC8ZU
	 iPnvvMgCQ0eoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 671688065A;
	Mon, 16 Jun 2025 16:21:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D6AD816B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8B65407C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F829U_MiJ83C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 16:21:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102c; helo=mail-pj1-x102c.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 11102404BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11102404BB
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11102404BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:21 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 98e67ed59e1d1-3141f9ce4d1so587270a91.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 09:21:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750090881; x=1750695681;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1xlGbr7S7dkulxlPf5XLC+Ja0lhJQ4XwBOGvbFljsao=;
 b=C9bB6gF0jHSsTzkT8J6y1J0uupN1VDTzMrOdCMclK6jjlNJPw5AKZ3GYBvdVSvNV68
 w8AIJIVyj6J6CoU9ivG09rbexlbcxqetbyuG1u5XMW5HAToP4S/Bi1OWAFPVFXfezOX2
 q4jCUyUeKLWljtA2JkGch0TTTf0CzY40EFtMDaVEFBmcE4k4oGdYf6MWHa8vVQyZn7e0
 QBpK1AmD9nFA5rfaNIoVO80fHNsdY0ZyDO6BIjkq3UVA7kXbZhu6Uy/h++IiwQl+myRw
 quHjEXBBaDL6IWMMildygMFlbKoUmuyBW7LTK32GMkZfHC7tmhPU5sVXbS+Yv0uMrVzr
 ShEw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXw+c4rJ1vEigsAla8uTfD4B0eGfhddvLWVBM5B1ObO4djSrfrGT8QUMn+aTtZViMc5lPcHyptYhPcthA/VmU8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwHAsV8EA0E8Y+uU4Pd1fs/V09BuZHOkJE1Hg9kgACyUPDWU2W0
 nkO2uEK/wVFGZtI9GrRTg9R7j9YN9NPdvY3TMO/kwL/Q4WIQYBBkeWc=
X-Gm-Gg: ASbGncsixsUkIOQljGnsSeqJZ6ye0q6moYw8qnqgG2CmrMykfmxIINXZR9zncVd6bgc
 Rze6fpG7lMtHrb/lqSHgqFsidW9/r1oNGb+3mQHh13EPYxp+AnNbduBN1XiZFtbqVLOUwcg2IX5
 ZLOP97YWvEtnrP4p3GWq0bCXWugfWOhd7Pau5BqZ83+ZblsXLVtA8EDRteUGfykXY48I17wv3TH
 TkHZq/bgtiXAm6QDWUjWQgQzHiLppgEA+ATGT5NESHDOjA+PySGuSaSeZPX7YZXC2tY9m7nLOlG
 TW9DtaQ72XzxCm8GZcIoOqbAi1Ee2AP+gzVXYwSJIobnmts7jMAr+7TuwvAEcZfV49OFp0bbnlE
 AtU9643LcxLWQ8fyLkk8TnjQ=
X-Google-Smtp-Source: AGHT+IF7Gy6U2OL6gPix8g51SpcUE/2qYnFFOYPZXfOzRPgtiht0N+QO0UDM5lmm0Sw3NeYwiMvL/g==
X-Received: by 2002:a17:90b:1b48:b0:311:df4b:4b91 with SMTP id
 98e67ed59e1d1-313f1ca77e4mr16887983a91.7.1750090881242; 
 Mon, 16 Jun 2025 09:21:21 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 98e67ed59e1d1-313c1b6d56bsm9952895a91.46.2025.06.16.09.21.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 09:21:20 -0700 (PDT)
From: Stanislav Fomichev <stfomichev@gmail.com>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, tglx@linutronix.de,
 mingo@kernel.org, ruanjinjie@huawei.com, idosch@nvidia.com,
 razor@blackwall.org, petrm@nvidia.com, kuniyu@google.com, sdf@fomichev.me,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org, leon@kernel.org
Date: Mon, 16 Jun 2025 09:21:13 -0700
Message-ID: <20250616162117.287806-3-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616162117.287806-1-stfomichev@gmail.com>
References: <20250616162117.287806-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750090881; x=1750695681; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1xlGbr7S7dkulxlPf5XLC+Ja0lhJQ4XwBOGvbFljsao=;
 b=EGZrZZm1NXjtVZ6FODiP6eVUBunf+1l7Ku63OeX/2HliTqHRWvn6arxd52tflyUdii
 0dwzSIH2HJ3oXf5VdVSlBOMS0McytPI32J8Nd9+tzr2SkhOY7LaLg6wh0w+GZCggEiN0
 I8gNNxZd81Obph/85fj+y+9FFg3EwMsgQzC0k075nSVPj/zVIeQufbLs3MOhqro43fXj
 kJxqlw93xo53gW0GUQGAN7mLU9etgdhYLBRfvwYRERy1Bc6RyvB9XV7lSb0z8tXw5zZZ
 Ob5mvKPdXNUh5wpCCM/Dnnkzqr8aWPoaxjSMMPyhPPo5WvWVk1H/smWhr0i/fyzZNw3i
 clLQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=EGZrZZm1
Subject: [Intel-wired-lan] [PATCH net-next v5 2/6] vxlan: drop sock_lock
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

We won't be able to sleep soon in vxlan_offload_rx_ports and won't be
able to grab sock_lock. Instead of having separate spinlock to
manage sockets, rely on rtnl lock. This is similar to how geneve
manages its sockets.

Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
---
 drivers/net/vxlan/vxlan_core.c      | 35 ++++++++++++-----------------
 drivers/net/vxlan/vxlan_private.h   |  2 +-
 drivers/net/vxlan/vxlan_vnifilter.c | 18 ++++++---------
 3 files changed, 22 insertions(+), 33 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 97792de896b7..9d7249caf137 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1485,21 +1485,18 @@ static enum skb_drop_reason vxlan_snoop(struct net_device *dev,
 
 static bool __vxlan_sock_release_prep(struct vxlan_sock *vs)
 {
-	struct vxlan_net *vn;
+	ASSERT_RTNL();
 
 	if (!vs)
 		return false;
 	if (!refcount_dec_and_test(&vs->refcnt))
 		return false;
 
-	vn = net_generic(sock_net(vs->sock->sk), vxlan_net_id);
-	spin_lock(&vn->sock_lock);
 	hlist_del_rcu(&vs->hlist);
 	udp_tunnel_notify_del_rx_port(vs->sock,
 				      (vs->flags & VXLAN_F_GPE) ?
 				      UDP_TUNNEL_TYPE_VXLAN_GPE :
 				      UDP_TUNNEL_TYPE_VXLAN);
-	spin_unlock(&vn->sock_lock);
 
 	return true;
 }
@@ -2847,26 +2844,23 @@ static void vxlan_cleanup(struct timer_list *t)
 
 static void vxlan_vs_del_dev(struct vxlan_dev *vxlan)
 {
-	struct vxlan_net *vn = net_generic(vxlan->net, vxlan_net_id);
+	ASSERT_RTNL();
 
-	spin_lock(&vn->sock_lock);
 	hlist_del_init_rcu(&vxlan->hlist4.hlist);
 #if IS_ENABLED(CONFIG_IPV6)
 	hlist_del_init_rcu(&vxlan->hlist6.hlist);
 #endif
-	spin_unlock(&vn->sock_lock);
 }
 
 static void vxlan_vs_add_dev(struct vxlan_sock *vs, struct vxlan_dev *vxlan,
 			     struct vxlan_dev_node *node)
 {
-	struct vxlan_net *vn = net_generic(vxlan->net, vxlan_net_id);
 	__be32 vni = vxlan->default_dst.remote_vni;
 
+	ASSERT_RTNL();
+
 	node->vxlan = vxlan;
-	spin_lock(&vn->sock_lock);
 	hlist_add_head_rcu(&node->hlist, vni_head(vs, vni));
-	spin_unlock(&vn->sock_lock);
 }
 
 /* Setup stats when device is created */
@@ -3291,9 +3285,10 @@ static void vxlan_offload_rx_ports(struct net_device *dev, bool push)
 	struct vxlan_net *vn = net_generic(net, vxlan_net_id);
 	unsigned int i;
 
-	spin_lock(&vn->sock_lock);
+	ASSERT_RTNL();
+
 	for (i = 0; i < PORT_HASH_SIZE; ++i) {
-		hlist_for_each_entry_rcu(vs, &vn->sock_list[i], hlist) {
+		hlist_for_each_entry(vs, &vn->sock_list[i], hlist) {
 			unsigned short type;
 
 			if (vs->flags & VXLAN_F_GPE)
@@ -3307,7 +3302,6 @@ static void vxlan_offload_rx_ports(struct net_device *dev, bool push)
 				udp_tunnel_drop_rx_port(dev, vs->sock, type);
 		}
 	}
-	spin_unlock(&vn->sock_lock);
 }
 
 /* Initialize the device structure. */
@@ -3537,12 +3531,13 @@ static struct vxlan_sock *vxlan_socket_create(struct net *net, bool ipv6,
 					      __be16 port, u32 flags,
 					      int ifindex)
 {
-	struct vxlan_net *vn = net_generic(net, vxlan_net_id);
 	struct vxlan_sock *vs;
 	struct socket *sock;
 	unsigned int h;
 	struct udp_tunnel_sock_cfg tunnel_cfg;
 
+	ASSERT_RTNL();
+
 	vs = kzalloc(sizeof(*vs), GFP_KERNEL);
 	if (!vs)
 		return ERR_PTR(-ENOMEM);
@@ -3560,13 +3555,11 @@ static struct vxlan_sock *vxlan_socket_create(struct net *net, bool ipv6,
 	refcount_set(&vs->refcnt, 1);
 	vs->flags = (flags & VXLAN_F_RCV_FLAGS);
 
-	spin_lock(&vn->sock_lock);
 	hlist_add_head_rcu(&vs->hlist, vs_head(net, port));
 	udp_tunnel_notify_add_rx_port(sock,
 				      (vs->flags & VXLAN_F_GPE) ?
 				      UDP_TUNNEL_TYPE_VXLAN_GPE :
 				      UDP_TUNNEL_TYPE_VXLAN);
-	spin_unlock(&vn->sock_lock);
 
 	/* Mark socket as an encapsulation socket. */
 	memset(&tunnel_cfg, 0, sizeof(tunnel_cfg));
@@ -3590,26 +3583,27 @@ static struct vxlan_sock *vxlan_socket_create(struct net *net, bool ipv6,
 
 static int __vxlan_sock_add(struct vxlan_dev *vxlan, bool ipv6)
 {
-	struct vxlan_net *vn = net_generic(vxlan->net, vxlan_net_id);
 	bool metadata = vxlan->cfg.flags & VXLAN_F_COLLECT_METADATA;
 	struct vxlan_sock *vs = NULL;
 	struct vxlan_dev_node *node;
 	int l3mdev_index = 0;
 
+	ASSERT_RTNL();
+
 	if (vxlan->cfg.remote_ifindex)
 		l3mdev_index = l3mdev_master_upper_ifindex_by_index(
 			vxlan->net, vxlan->cfg.remote_ifindex);
 
 	if (!vxlan->cfg.no_share) {
-		spin_lock(&vn->sock_lock);
+		rcu_read_lock();
 		vs = vxlan_find_sock(vxlan->net, ipv6 ? AF_INET6 : AF_INET,
 				     vxlan->cfg.dst_port, vxlan->cfg.flags,
 				     l3mdev_index);
 		if (vs && !refcount_inc_not_zero(&vs->refcnt)) {
-			spin_unlock(&vn->sock_lock);
+			rcu_read_unlock();
 			return -EBUSY;
 		}
-		spin_unlock(&vn->sock_lock);
+		rcu_read_unlock();
 	}
 	if (!vs)
 		vs = vxlan_socket_create(vxlan->net, ipv6,
@@ -4875,7 +4869,6 @@ static __net_init int vxlan_init_net(struct net *net)
 	unsigned int h;
 
 	INIT_LIST_HEAD(&vn->vxlan_list);
-	spin_lock_init(&vn->sock_lock);
 	vn->nexthop_notifier_block.notifier_call = vxlan_nexthop_event;
 
 	for (h = 0; h < PORT_HASH_SIZE; ++h)
diff --git a/drivers/net/vxlan/vxlan_private.h b/drivers/net/vxlan/vxlan_private.h
index d328aed9feef..6c625fb29c6c 100644
--- a/drivers/net/vxlan/vxlan_private.h
+++ b/drivers/net/vxlan/vxlan_private.h
@@ -19,8 +19,8 @@ extern const struct rhashtable_params vxlan_vni_rht_params;
 /* per-network namespace private data for this module */
 struct vxlan_net {
 	struct list_head  vxlan_list;
+	/* sock_list is protected by rtnl lock */
 	struct hlist_head sock_list[PORT_HASH_SIZE];
-	spinlock_t	  sock_lock;
 	struct notifier_block nexthop_notifier_block;
 };
 
diff --git a/drivers/net/vxlan/vxlan_vnifilter.c b/drivers/net/vxlan/vxlan_vnifilter.c
index 186d0660669a..4ff56d9f8f28 100644
--- a/drivers/net/vxlan/vxlan_vnifilter.c
+++ b/drivers/net/vxlan/vxlan_vnifilter.c
@@ -40,11 +40,11 @@ static void vxlan_vs_add_del_vninode(struct vxlan_dev *vxlan,
 				     struct vxlan_vni_node *v,
 				     bool del)
 {
-	struct vxlan_net *vn = net_generic(vxlan->net, vxlan_net_id);
 	struct vxlan_dev_node *node;
 	struct vxlan_sock *vs;
 
-	spin_lock(&vn->sock_lock);
+	ASSERT_RTNL();
+
 	if (del) {
 		if (!hlist_unhashed(&v->hlist4.hlist))
 			hlist_del_init_rcu(&v->hlist4.hlist);
@@ -52,7 +52,7 @@ static void vxlan_vs_add_del_vninode(struct vxlan_dev *vxlan,
 		if (!hlist_unhashed(&v->hlist6.hlist))
 			hlist_del_init_rcu(&v->hlist6.hlist);
 #endif
-		goto out;
+		return;
 	}
 
 #if IS_ENABLED(CONFIG_IPV6)
@@ -67,23 +67,21 @@ static void vxlan_vs_add_del_vninode(struct vxlan_dev *vxlan,
 		node = &v->hlist4;
 		hlist_add_head_rcu(&node->hlist, vni_head(vs, v->vni));
 	}
-out:
-	spin_unlock(&vn->sock_lock);
 }
 
 void vxlan_vs_add_vnigrp(struct vxlan_dev *vxlan,
 			 struct vxlan_sock *vs,
 			 bool ipv6)
 {
-	struct vxlan_net *vn = net_generic(vxlan->net, vxlan_net_id);
 	struct vxlan_vni_group *vg = rtnl_dereference(vxlan->vnigrp);
 	struct vxlan_vni_node *v, *tmp;
 	struct vxlan_dev_node *node;
 
+	ASSERT_RTNL();
+
 	if (!vg)
 		return;
 
-	spin_lock(&vn->sock_lock);
 	list_for_each_entry_safe(v, tmp, &vg->vni_list, vlist) {
 #if IS_ENABLED(CONFIG_IPV6)
 		if (ipv6)
@@ -94,26 +92,24 @@ void vxlan_vs_add_vnigrp(struct vxlan_dev *vxlan,
 		node->vxlan = vxlan;
 		hlist_add_head_rcu(&node->hlist, vni_head(vs, v->vni));
 	}
-	spin_unlock(&vn->sock_lock);
 }
 
 void vxlan_vs_del_vnigrp(struct vxlan_dev *vxlan)
 {
 	struct vxlan_vni_group *vg = rtnl_dereference(vxlan->vnigrp);
-	struct vxlan_net *vn = net_generic(vxlan->net, vxlan_net_id);
 	struct vxlan_vni_node *v, *tmp;
 
+	ASSERT_RTNL();
+
 	if (!vg)
 		return;
 
-	spin_lock(&vn->sock_lock);
 	list_for_each_entry_safe(v, tmp, &vg->vni_list, vlist) {
 		hlist_del_init_rcu(&v->hlist4.hlist);
 #if IS_ENABLED(CONFIG_IPV6)
 		hlist_del_init_rcu(&v->hlist6.hlist);
 #endif
 	}
-	spin_unlock(&vn->sock_lock);
 }
 
 static void vxlan_vnifilter_stats_get(const struct vxlan_vni_node *vninode,
-- 
2.49.0

