Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5299AD9652
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 22:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7189681092;
	Fri, 13 Jun 2025 20:33:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w_VonSWw4I_z; Fri, 13 Jun 2025 20:33:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BC3D80EE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749846813;
	bh=Z1eKBxLffGBEe4AlTfaor7d8YdO+Y5hGW4DOpCWQYdg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bNQ4vdDrSao1w0vTZQGXj8QGIPUqQ3BIifXTWO0T9qYy0dXQU0jt1O0l+FqOJOYXO
	 Jwcc54wsG3TaCw/RmSf9b5MfoFDLR3TNNxwSuSjVihQ4CrEaGgdRX8NjGt6iKOhYM1
	 Zw8UX48VrtXqfDR9uOg+ejOrHzmUlHqu6PI/C0TRM9ivz/pdBk9AxPd4nxKVrsXeka
	 qnimBCoVDOrJXsM7YJmv6xNW7U/VFMTarVjpvG8/oR4MaKpjn60tfaMPISvW1mpgbl
	 KPymN42em8tVF/laYHPx6qn7znX9GX4ERRTRH0RVNs+o0KkgA8boqKqydbxsfYkEkL
	 Y0WAO+yn/S+UA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BC3D80EE2;
	Fri, 13 Jun 2025 20:33:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 11763183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02B6360BF1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wd1rD49x5eGi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 20:33:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::536; helo=mail-pg1-x536.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3CED960671
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CED960671
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CED960671
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:30 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id
 41be03b00d2f7-b1396171fb1so1769099a12.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 13:33:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749846809; x=1750451609;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Z1eKBxLffGBEe4AlTfaor7d8YdO+Y5hGW4DOpCWQYdg=;
 b=A0wCAhVh+Zy0D8nwhr0agqQbaOgpWxP6h/2sxgWY4ya7Uy1w5h4xoxkEwSP60plpEu
 4pFLFvtb6kENUe3++Y5ScxttevFaCMWM9xaYYgaB2hgQy/zH4gpMbG7c6FIfl7++PYqQ
 gbhOEMX24fPJTX+EZtAFSdDrYQSQLFquWZyuQh0MEvT2zFvpgtMM7aqCA5+JvWrRvYls
 B3KshBdGSUpn374UXptHPYChPZHHmnt4xkbnHl2Nl7et2Vo/HrRZCUSZdeHB5+1EAOUJ
 7lyQ+q+fBfHvdF6JucyVAAGktvci5ZnMTWymabu+J/p8kl0lNtysToJZnE12Bsc3rzIj
 c9sg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/xe6YmKvO2Yd03pQF9QK9NcipV7/pausEWjoDc9+JEuBTHINmo2X4CsN51xEjIovc02hLImG485yqv8BM1hM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyrzim/PmMPBwuJX0TGHW2ayuKdoKoawaiy7deywEfIsnPYnWJq
 RnOMEKx67lPxRwKGGBXxZk+rH8r4OyVO9QCiFDlUZC3x0sxrkXhulbs=
X-Gm-Gg: ASbGncsXyZLaatA9j72u1QhHCSFVlSqRMHOFdsjlkq8p0XakX53efL47VwU9zhRWbVD
 ozUGk/GtrfNKSLwg4QU87zvK3vMd/f3yEfYsiW1CvHHrJsjtTytC1jSi6DoHcVis7ssmPurdLTp
 ab/XPnMHESES2JSwXy7cgXvm1rqI9CvKuJXYgJXwoDNlrx6OPjT0v40ncmzn8h9YVmodIfzAm9N
 7poiSqlmS1YsTajqgl9Eu7ovRafDrHsjNT/SCLS/MG/zQVv+fYeLyRNqlqLyd468PuvYI/bMNF3
 QkoRsVZHuKXVdmUxvZe/CnfkJA4Rr75qYZbhtOIrJ+8jJtF0KEcTm1cIsxMyXrbe9NNG4YYNBpC
 NdSly6i5DPy7oxKmlQnBjcT0=
X-Google-Smtp-Source: AGHT+IFzjhuaffrLRD3SnaPHtjYEGlUXNW0DyfRHXKa+uMaTmfULw+e9Y+axbj6oEJJJ9nwLktaA9A==
X-Received: by 2002:a05:6a21:6191:b0:21a:ecf5:ea71 with SMTP id
 adf61e73a8af0-21fbd4d6179mr1086802637.15.1749846809450; 
 Fri, 13 Jun 2025 13:33:29 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-748900051a6sm2084709b3a.42.2025.06.13.13.33.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Jun 2025 13:33:29 -0700 (PDT)
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
Date: Fri, 13 Jun 2025 13:33:21 -0700
Message-ID: <20250613203325.1127217-3-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613203325.1127217-1-stfomichev@gmail.com>
References: <20250613203325.1127217-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749846809; x=1750451609; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Z1eKBxLffGBEe4AlTfaor7d8YdO+Y5hGW4DOpCWQYdg=;
 b=hhRmav6FpaZBYIqShT0sffEiebDQ/EKcGW39n9BptN/zAu7zN3WUi9rPlOv8/RVZ6/
 SSlzeswRqOkOtGS6yTIJdxdVXBqh7SR9rH7CQzIZaTSNTTYk2KkuELVvEM9PtGrFu+YS
 7KKCrgqGUyWjdptfTiTzExB1rzpTOfJE3Qa2Qoh/+UowP87g7XP88aw1Y6I3Wol0j+Jd
 rU6F8a4CrbbmZaWjTppR1nmzogw8Wb9d3mKcYYeuLcgoaqYxGVBIHKn6p3BT7Sv39yMa
 XEHt2Z6vIp8Xf5FAbu0meCoxaYpM4Av0WJFVkL1a4kE2UFizVD4x8SaMPBTnb9jUR3Q7
 qFbw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=hhRmav6F
Subject: [Intel-wired-lan] [PATCH net-next v4 2/6] vxlan: drop sock_lock
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
 drivers/net/vxlan/vxlan_core.c      | 34 +++++++++++++----------------
 drivers/net/vxlan/vxlan_private.h   |  2 +-
 drivers/net/vxlan/vxlan_vnifilter.c | 18 ++++++---------
 3 files changed, 23 insertions(+), 31 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 97792de896b7..01362e98325c 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1487,19 +1487,19 @@ static bool __vxlan_sock_release_prep(struct vxlan_sock *vs)
 {
 	struct vxlan_net *vn;
 
+	ASSERT_RTNL();
+
 	if (!vs)
 		return false;
 	if (!refcount_dec_and_test(&vs->refcnt))
 		return false;
 
 	vn = net_generic(sock_net(vs->sock->sk), vxlan_net_id);
-	spin_lock(&vn->sock_lock);
 	hlist_del_rcu(&vs->hlist);
 	udp_tunnel_notify_del_rx_port(vs->sock,
 				      (vs->flags & VXLAN_F_GPE) ?
 				      UDP_TUNNEL_TYPE_VXLAN_GPE :
 				      UDP_TUNNEL_TYPE_VXLAN);
-	spin_unlock(&vn->sock_lock);
 
 	return true;
 }
@@ -2847,26 +2847,23 @@ static void vxlan_cleanup(struct timer_list *t)
 
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
@@ -3291,9 +3288,10 @@ static void vxlan_offload_rx_ports(struct net_device *dev, bool push)
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
@@ -3307,7 +3305,6 @@ static void vxlan_offload_rx_ports(struct net_device *dev, bool push)
 				udp_tunnel_drop_rx_port(dev, vs->sock, type);
 		}
 	}
-	spin_unlock(&vn->sock_lock);
 }
 
 /* Initialize the device structure. */
@@ -3537,12 +3534,13 @@ static struct vxlan_sock *vxlan_socket_create(struct net *net, bool ipv6,
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
@@ -3560,13 +3558,11 @@ static struct vxlan_sock *vxlan_socket_create(struct net *net, bool ipv6,
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
@@ -3590,26 +3586,27 @@ static struct vxlan_sock *vxlan_socket_create(struct net *net, bool ipv6,
 
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
@@ -4875,7 +4872,6 @@ static __net_init int vxlan_init_net(struct net *net)
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

