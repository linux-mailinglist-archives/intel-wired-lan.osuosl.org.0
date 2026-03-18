Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6F9hELy+umkGbgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:03:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 705852BDCA6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:03:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F136040BA6;
	Wed, 18 Mar 2026 15:03:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0COvWaMStLoy; Wed, 18 Mar 2026 15:03:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1E5240B34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773846198;
	bh=N5GGovMWPDFF8AAhYqWq6WCuZYPSvbfMRDbyACSGUuM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1LqKZl3lSdTm8tdSRm6lmGFX0dV9Lil1/31qyBjcJBmsuY0Px42o0H54jHEpEOm8C
	 DkqrTO8Se1t2wI7DxzAE+oIjlUrqP/cL+Ef+UojbYpd/DvsjP4WVjcMafpFKvNfLHy
	 jsShg/69/OoG2jQJppGjumq5fsCuhMUSomEUF2GIoLrttJ+uuaLT8nPadY7l0VIB3M
	 NoKmmBmXVNc4El69Rb1wFF/J9fvaVL1Zo1IZJSUK1CCyjNXtYWw8aqRZ9mYklI+O4n
	 XI1551gWfJBaS9FFV5SjuMxE3pRu3K5nU6cSjh1720f4PbK0+O6OGzif9pgUt5AHw7
	 d0ANA1LSQkkSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1E5240B34;
	Wed, 18 Mar 2026 15:03:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E501A1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:03:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2FCD81DFD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:03:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M0KE04crPFyu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:03:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=74.125.82.172;
 helo=mail-dy1-f172.google.com; envelope-from=stfomichev@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2434981DEE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2434981DEE
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com
 [74.125.82.172])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2434981DEE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:03:14 +0000 (UTC)
Received: by mail-dy1-f172.google.com with SMTP id
 5a478bee46e88-2c0bb213b16so12100eec.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773846194; x=1774450994;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=N5GGovMWPDFF8AAhYqWq6WCuZYPSvbfMRDbyACSGUuM=;
 b=ZmdCUAUwqAb3McodziNM5xJ/xo9E8nWf1XMirdn8zo8LA02qKeMFa4m4AdjbvHyflj
 SmV+eA2mJ+ktNlJH4mwZIXcZQy/jjOxASw1a0TfAbXf7yRl5mdJgHB+4kVsadhRQZqzC
 KVjtDrC87FiClYW2EmfOBoBFhxHNJCEFgScaNakhlPcn5RE9ziGIgDfhTWvKAwj+9GBP
 SA+j3HdM99Jsdawzyokl+qUImGJmN4pcSaqLpny+aXtzfa9szJq+SK0KywvMPycpLERd
 fB4FgLxDZCRZ9Bw08iEwx8XjqUaskDv+fZlUCLH2+WquEVvZSg4dh1eEzvY5OAmvcNtB
 bZRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU3X9IDaJWSTpIsIG+3H9nOMsiK9NHMzb6O2nURpSLvMbuBtkOG6rGx7FQvahjEbd9nDLmH/HPAj23TnpSC47g=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yytg6m4t7luRqDTIxfMLLrGHH2osXmWtVvyEIVZHgNu0S8rLCao
 +EsXyl+YxeAiAoQcK5irN4tPC30+7o63LxCq4u+nJIEMsfoXNvvzLpA=
X-Gm-Gg: ATEYQzxA/RVBEIbOirTbMWHFPYyuXOqH8zVHYq27a1eo1jzc2P7b4upRWbf8BNAaNl0
 y5hUDyRgb+/TLw9/hEihnulH1EEzKeGy3gnHUWRbCT3wWh/1Can5ycFXAGhlvFYVgQ02sKv7ZCF
 9bNSSruzh7MRS3CsB/0ceKcmkZTEA0U9nYf344eIwzi+wKNuWZi8kWhxKHnblB5UeLnXJRv5OEh
 lZUlkRNGnuDr1XhoxQ81s2nuszh7mX13GxNbfiySLplEZWVRYutG+a7UxGFuLNmCuNoTdf+qyM2
 8VofWx7SP8PIWHSp5zYnqezhFONz6QDeic0WO433YuuUDiM8TeG14DMFLkeV6smLgwxk0bClPTQ
 qVrTWEFxCwOXxYcS/JBRzEJntuc6bccJD1xsQTjcBG6p9HqPeGVd5MUWJ/Ir/mYBOKy4Fg2cInY
 QYpey4uvqpwuslG9S91JFi59GEl/19Fa+ByXXuWxg8Bbj8gu6m+6XiAbR71mtD+oqtXbgRCSL2I
 TrnUVXZzUN0SJzFavmEukNHgojP
X-Received: by 2002:a05:7301:1691:b0:2bd:d3f3:b0be with SMTP id
 5a478bee46e88-2c0e503eb7bmr2177414eec.20.1773846193273; 
 Wed, 18 Mar 2026 08:03:13 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2c0e5582dd5sm4001338eec.15.2026.03.18.08.03.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2026 08:03:12 -0700 (PDT)
From: Stanislav Fomichev <sdf@fomichev.me>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, corbet@lwn.net,
 skhan@linuxfoundation.org, andrew+netdev@lunn.ch,
 michael.chan@broadcom.com, pavan.chebbi@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 saeedm@nvidia.com, tariqt@nvidia.com, mbloch@nvidia.com,
 alexanderduyck@fb.com, kernel-team@meta.com, johannes@sipsolutions.net,
 sd@queasysnail.net, jianbol@nvidia.com, dtatulea@nvidia.com,
 sdf@fomichev.me, mohsin.bashr@gmail.com, jacob.e.keller@intel.com,
 willemb@google.com, skhawaja@google.com, bestswngs@gmail.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kselftest@vger.kernel.org,
 leon@kernel.org
Date: Wed, 18 Mar 2026 08:02:56 -0700
Message-ID: <20260318150305.123900-5-sdf@fomichev.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318150305.123900-1-sdf@fomichev.me>
References: <20260318150305.123900-1-sdf@fomichev.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=fomichev.me
Subject: [Intel-wired-lan] [PATCH net-next v2 04/13] net: move promiscuity
 handling into dev_rx_mode_work
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:sdf@fomichev.me,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,fomichev.me,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORGED_SENDER(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[fomichev.me];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 705852BDCA6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move unicast promiscuity tracking into dev_rx_mode_work so it runs
under netdev_ops_lock instead of under the addr_lock spinlock. This
is required because __dev_set_promiscuity calls dev_change_rx_flags
and __dev_notify_flags, both of which may need to sleep.

Change ASSERT_RTNL() to netdev_ops_assert_locked() in
__dev_set_promiscuity, netif_set_allmulti and __dev_change_flags
since these are now called from the work queue under the ops lock.

Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
---
 Documentation/networking/netdevices.rst |  4 ++
 net/core/dev.c                          | 79 +++++++++++++++++--------
 2 files changed, 57 insertions(+), 26 deletions(-)

diff --git a/Documentation/networking/netdevices.rst b/Documentation/networking/netdevices.rst
index dc83d78d3b27..5cdaa1a3dcc8 100644
--- a/Documentation/networking/netdevices.rst
+++ b/Documentation/networking/netdevices.rst
@@ -298,6 +298,10 @@ struct net_device synchronization rules
 	Notes: Sleepable version of ndo_set_rx_mode. Receives snapshots
 	of the unicast and multicast address lists.
 
+ndo_change_rx_flags:
+	Synchronization: rtnl_lock() semaphore. In addition, netdev instance
+	lock if the driver implements queue management or shaper API.
+
 ndo_setup_tc:
 	``TC_SETUP_BLOCK`` and ``TC_SETUP_FT`` are running under NFT locks
 	(i.e. no ``rtnl_lock`` and no device instance lock). The rest of
diff --git a/net/core/dev.c b/net/core/dev.c
index 77fdbe836754..d50d6dc6ac1f 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -9574,7 +9574,7 @@ static int __dev_set_promiscuity(struct net_device *dev, int inc, bool notify)
 	kuid_t uid;
 	kgid_t gid;
 
-	ASSERT_RTNL();
+	netdev_ops_assert_locked(dev);
 
 	promiscuity = dev->promiscuity + inc;
 	if (promiscuity == 0) {
@@ -9610,16 +9610,8 @@ static int __dev_set_promiscuity(struct net_device *dev, int inc, bool notify)
 
 		dev_change_rx_flags(dev, IFF_PROMISC);
 	}
-	if (notify) {
-		/* The ops lock is only required to ensure consistent locking
-		 * for `NETDEV_CHANGE` notifiers. This function is sometimes
-		 * called without the lock, even for devices that are ops
-		 * locked, such as in `dev_uc_sync_multiple` when using
-		 * bonding or teaming.
-		 */
-		netdev_ops_assert_locked(dev);
+	if (notify)
 		__dev_notify_flags(dev, old_flags, IFF_PROMISC, 0, NULL);
-	}
 	return 0;
 }
 
@@ -9641,7 +9633,7 @@ int netif_set_allmulti(struct net_device *dev, int inc, bool notify)
 	unsigned int old_flags = dev->flags, old_gflags = dev->gflags;
 	unsigned int allmulti, flags;
 
-	ASSERT_RTNL();
+	netdev_ops_assert_locked(dev);
 
 	allmulti = dev->allmulti + inc;
 	if (allmulti == 0) {
@@ -9671,12 +9663,36 @@ int netif_set_allmulti(struct net_device *dev, int inc, bool notify)
 	return 0;
 }
 
+/**
+ * dev_uc_promisc_update() - evaluate whether uc_promisc should be toggled.
+ * @dev: device
+ *
+ * Must be called under netif_addr_lock_bh.
+ * Return: +1 to enter promisc, -1 to leave, 0 for no change.
+ */
+static int dev_uc_promisc_update(struct net_device *dev)
+{
+	if (dev->priv_flags & IFF_UNICAST_FLT)
+		return 0;
+
+	if (!netdev_uc_empty(dev) && !dev->uc_promisc) {
+		dev->uc_promisc = true;
+		return 1;
+	}
+	if (netdev_uc_empty(dev) && dev->uc_promisc) {
+		dev->uc_promisc = false;
+		return -1;
+	}
+	return 0;
+}
+
 static void dev_rx_mode_work(struct work_struct *work)
 {
 	struct net_device *dev = container_of(work, struct net_device,
 					      rx_mode_work);
 	struct netdev_hw_addr_list uc_snap, mc_snap, uc_ref, mc_ref;
 	const struct net_device_ops *ops = dev->netdev_ops;
+	int promisc_inc;
 	int err;
 
 	__hw_addr_init(&uc_snap);
@@ -9704,15 +9720,28 @@ static void dev_rx_mode_work(struct work_struct *work)
 		if (!err)
 			err = __hw_addr_list_snapshot(&mc_ref, &dev->mc,
 						      dev->addr_len);
-		netif_addr_unlock_bh(dev);
 
 		if (err) {
 			__hw_addr_flush(&uc_snap);
 			__hw_addr_flush(&uc_ref);
 			__hw_addr_flush(&mc_snap);
+			netif_addr_unlock_bh(dev);
 			goto out;
 		}
 
+		promisc_inc = dev_uc_promisc_update(dev);
+
+		netif_addr_unlock_bh(dev);
+	} else {
+		netif_addr_lock_bh(dev);
+		promisc_inc = dev_uc_promisc_update(dev);
+		netif_addr_unlock_bh(dev);
+	}
+
+	if (promisc_inc)
+		__dev_set_promiscuity(dev, promisc_inc, false);
+
+	if (ops->ndo_set_rx_mode_async) {
 		ops->ndo_set_rx_mode_async(dev, &uc_snap, &mc_snap);
 
 		netif_addr_lock_bh(dev);
@@ -9721,6 +9750,10 @@ static void dev_rx_mode_work(struct work_struct *work)
 		__hw_addr_list_reconcile(&dev->mc, &mc_snap,
 					 &mc_ref, dev->addr_len);
 		netif_addr_unlock_bh(dev);
+	} else if (ops->ndo_set_rx_mode) {
+		netif_addr_lock_bh(dev);
+		ops->ndo_set_rx_mode(dev);
+		netif_addr_unlock_bh(dev);
 	}
 
 out:
@@ -9739,28 +9772,22 @@ static void dev_rx_mode_work(struct work_struct *work)
 void __dev_set_rx_mode(struct net_device *dev)
 {
 	const struct net_device_ops *ops = dev->netdev_ops;
+	int promisc_inc;
 
 	/* dev_open will call this function so the list will stay sane. */
 	if (!netif_up_and_present(dev))
 		return;
 
-	if (ops->ndo_set_rx_mode_async) {
+	if (ops->ndo_set_rx_mode_async || ops->ndo_change_rx_flags) {
 		queue_work(rx_mode_wq, &dev->rx_mode_work);
 		return;
 	}
 
-	if (!(dev->priv_flags & IFF_UNICAST_FLT)) {
-		/* Unicast addresses changes may only happen under the rtnl,
-		 * therefore calling __dev_set_promiscuity here is safe.
-		 */
-		if (!netdev_uc_empty(dev) && !dev->uc_promisc) {
-			__dev_set_promiscuity(dev, 1, false);
-			dev->uc_promisc = true;
-		} else if (netdev_uc_empty(dev) && dev->uc_promisc) {
-			__dev_set_promiscuity(dev, -1, false);
-			dev->uc_promisc = false;
-		}
-	}
+	/* Legacy path for non-ops locked HW devices. */
+
+	promisc_inc = dev_uc_promisc_update(dev);
+	if (promisc_inc)
+		__dev_set_promiscuity(dev, promisc_inc, false);
 
 	if (ops->ndo_set_rx_mode)
 		ops->ndo_set_rx_mode(dev);
@@ -9810,7 +9837,7 @@ int __dev_change_flags(struct net_device *dev, unsigned int flags,
 	unsigned int old_flags = dev->flags;
 	int ret;
 
-	ASSERT_RTNL();
+	netdev_ops_assert_locked(dev);
 
 	/*
 	 *	Set the flags on our device.
-- 
2.53.0

