Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4605AD14B75
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 19:18:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41AD860D90;
	Mon, 12 Jan 2026 18:18:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6xiQvvv_P7XY; Mon, 12 Jan 2026 18:18:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDD7160D93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768241927;
	bh=zwd6dDu7lItaCK0ooIefkkW4WrxEZYfI/qcoCv+2eFY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ta7HszWCeHFrU07LlqpB7OCeDExkEOuZktqkT7fHihApiRqPNMddhhm1U0BFI9Ngx
	 m1WjzLajCEE6o5r8qdOzQ8VBRmjSF7uBaIHG2MKGpCXKGbCyUgFQviPlzrxy4QmUB0
	 M/3H8VBQu7RYiCp4PHSuW9vOthtcXhlMxPzQ34rEmqIVZv8f5LI0uSJmD5yIcwpwZg
	 tbkc5IlfQSgLqbzdstuOEdjDRBHaHGyeDBtjNcPPI/GxkTgzSgkJQYcrHUN5xge7Ns
	 TrlTQ5DIb2NJAWv8hb+vgEw8PXsNwYjcluueReGQV19YygdAoSmSSvHO89l+CuBZvZ
	 1JOKw+E694WSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDD7160D93;
	Mon, 12 Jan 2026 18:18:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7FDF618D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 663C183CF8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gNuuW2xDm7MI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 18:17:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::530; helo=mail-pg1-x530.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6E8F883D12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E8F883D12
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E8F883D12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:08 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id
 41be03b00d2f7-c075ec1a58aso2603058a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 10:17:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768241828; x=1768846628;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=zwd6dDu7lItaCK0ooIefkkW4WrxEZYfI/qcoCv+2eFY=;
 b=U73S1m3b85eGrSuRK9oQYMOmCuka1JtRqKPkq05EKKUqoyPt5o96uEMKSZ95XF/G74
 jzJIfMsn8w5qoYLCQ/NoQpk5IAxcBm9rZMKUn3Z8SyIOe4jFWCSWL7YiWl1cRouUTKjz
 Kd4UpxNINsh+ommE1HjfAeZlf2tEgHjWyeCfM4uXlsLs8GcDFR2tKOP2ztXub/3IvFAy
 MNbSz6fPe85N8Jn1muUlEXv4rT4WK2q/hRYso8Qh7wR6I319vY9vTIF30gH63jahfuIj
 V34UI2ONMe7W7yKbbFArsauDQXsQIOL7yv9LsaFKpBVCcuy7zmIfnAuKD0l3G/fsI3xa
 iOTQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXwNOB+JqCv0V39NzUGmG3Ez/M0s38iEaKHcDuv+3qE01TvgbUkT97avOHR/II/i2NitP7BTw+cNHJLYUMlMsA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywgen44fGpnowbGcKrgRSIGUBZfrhaMJexsDFyM5acge3q86Jto
 luFMCQ+anJxyQKfV00DIaXyjOfUo4+q4eqPLg8/kuzVljp43TLOn0wKx
X-Gm-Gg: AY/fxX5/p1T/nRsROw2wCeJk+vDqW0VuRc/WkQuLn7dz1kG8pQ1tzuuEtGPeIMSHGwY
 Ym6PhbN/ZiXVrgZvGny9ribhTjFTLmmLUXYeafDf/48rpOaD7lxub3/T9xd7mpZnQqtZkCFGuvE
 soooXg95eGXRKJmaIxaU2qt/knrCcrNoJljuG2MeA56O7pG2aldDs69NGzI4Nbnz0oBYadBhVE2
 z4imLRQW8BSeANGaV0a8mIzq9zQPaeEvj0xX0NaENP/lnGwYlDga8tVUZcPXtb3S1g59A0kpNk1
 Xn7hVDa5AJsaDZofkHd+LBOhBwLiAkM/6Jvrb2w6+eei2XToIAY/lYmTMmc+bIB6dkt4N7XlVqS
 iH02GaxQrOr5uXCLTkedw4y1G4b61rpIhcIbGvPvRYPxk0wmMRkbr+JVBp1Ea5hSsSd2Tg0kig2
 wjp7WMAxl9kuOAsJYtXGgRJeps6L4IEt0oIi8wV01hvi69NURTK3KpMs+A2upDLrjVkA==
X-Google-Smtp-Source: AGHT+IGgnN4Y18bqXv+/bNspsRG2tcSPdS/aRKgm0fNhJX4T/PueCj4eRHzEu4W1mJ9daiNFBFQHQg==
X-Received: by 2002:a17:90b:5830:b0:340:ec8f:82d8 with SMTP id
 98e67ed59e1d1-34f68b6816bmr19325336a91.12.1768241827532; 
 Mon, 12 Jan 2026 10:17:07 -0800 (PST)
Received: from localhost.localdomain ([122.183.54.120])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-34f5f7c4141sm18165365a91.6.2026.01.12.10.17.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jan 2026 10:17:06 -0800 (PST)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: edumazet@google.com, horms@kernel.org, sdf@fomichev.me, kuba@kernel.org,
 andrew+netdev@lunn.ch, pabeni@redhat.com, jasowang@redhat.com,
 eperezma@redhat.com, mst@redhat.com, xuanzhuo@linux.alibaba.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, intel-wired-lan@lists.osuosl.org,
 virtualization@lists.linux.dev, netdev@vger.kernel.org,
 I Viswanath <viswanathiyyappan@gmail.com>
Date: Mon, 12 Jan 2026 23:46:21 +0530
Message-ID: <20260112181626.20117-2-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
References: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 Jan 2026 18:18:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768241828; x=1768846628; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zwd6dDu7lItaCK0ooIefkkW4WrxEZYfI/qcoCv+2eFY=;
 b=db8IwPyBXaBqnxy0OaRUoV12ebxQfYTromIOY4AoNcWGSvArLit9LJc0i3WJDMSxD0
 4V6RI+7agp8M/Qdxa1Cz1v5F1YEIcpjMFcy8lhbg9gGzXes5RdJJq4YYVjN40KXmlItU
 8OzdKc2cwhYPR0PJEzx52z5+8fnSQ02xDvmyJAcpYxK2KiihdI+iNZRFF1PfKkSFpjf9
 ujRZcfnyQwZBCW8gEuCrth8x8Jqjxm46We4Ubd2dTpkfS4Yb658QbmQWdA3lABixeeih
 sHcsy4Z5lhGWM5ODQD04AmQv7zsRh31tJDE51OrqIqIyG83BrbCKT0IKrZzxeCQmIuFH
 N9cA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=db8IwPyB
Subject: [Intel-wired-lan] [PATCH net-next v8 1/6] net: refactor set_rx_mode
 into snapshot and deferred I/O
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

Refactor set_rx_mode into two stages: a snapshot stage and the
actual I/O. When __dev_set_rx_mode() is called, the core takes a
snapshot of the current rx_mode config and commits it to
hardware later via a work item.

In this model, ndo_set_rx_mode() is responsible for customizing the
rx mode snapshot and deciding whether the work should happen or not,
while ndo_write_rx_mode() applies the snapshot to hardware.

Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
---
 include/linux/netdevice.h | 112 +++++++++++++++-
 net/core/dev.c            | 265 +++++++++++++++++++++++++++++++++++++-
 2 files changed, 370 insertions(+), 7 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index d99b0fbc1942..5f9268ac7b75 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1062,6 +1062,45 @@ struct netdev_net_notifier {
 	struct notifier_block *nb;
 };
 
+struct netif_cleanup_work {
+	struct work_struct work;
+	struct net_device *dev;
+};
+
+enum netif_rx_mode_cfg {
+	NETIF_RX_MODE_CFG_ALLMULTI,
+	NETIF_RX_MODE_CFG_PROMISC,
+	NETIF_RX_MODE_CFG_VLAN,
+	NETIF_RX_MODE_CFG_BROADCAST
+};
+
+enum netif_rx_mode_flags {
+	NETIF_RX_MODE_READY,
+
+	/* if set, rx_mode set work will be skipped */
+	NETIF_RX_MODE_SET_SKIP,
+
+	/* if set, uc/mc lists will not be part of rx_mode config */
+	NETIF_RX_MODE_UC_SKIP,
+	NETIF_RX_MODE_MC_SKIP
+};
+
+struct netif_rx_mode_config {
+	char	*uc_addrs;
+	char	*mc_addrs;
+	int	uc_count;
+	int	mc_count;
+	int	cfg;
+};
+
+struct netif_rx_mode_ctx {
+	struct netif_rx_mode_config *pending;
+	struct netif_rx_mode_config *ready;
+	struct work_struct work;
+	struct net_device *dev;
+	int flags;
+};
+
 /*
  * This structure defines the management hooks for network devices.
  * The following hooks can be defined; unless noted otherwise, they are
@@ -1114,9 +1153,14 @@ struct netdev_net_notifier {
  *	changes to configuration when multicast or promiscuous is enabled.
  *
  * void (*ndo_set_rx_mode)(struct net_device *dev);
- *	This function is called device changes address list filtering.
+ *	This function is called when device changes address list filtering.
  *	If driver handles unicast address filtering, it should set
- *	IFF_UNICAST_FLT in its priv_flags.
+ *	IFF_UNICAST_FLT in its priv_flags. This is used to configure
+ *	the rx_mode snapshot that will be written to the hardware.
+ *
+ * void (*ndo_write_rx_mode)(struct net_device *dev);
+ *	This function is scheduled after set_rx_mode and is responsible for
+ *	writing the rx_mode snapshot to the hardware.
  *
  * int (*ndo_set_mac_address)(struct net_device *dev, void *addr);
  *	This function  is called when the Media Access Control address
@@ -1437,6 +1481,7 @@ struct net_device_ops {
 	void			(*ndo_change_rx_flags)(struct net_device *dev,
 						       int flags);
 	void			(*ndo_set_rx_mode)(struct net_device *dev);
+	void			(*ndo_write_rx_mode)(struct net_device *dev);
 	int			(*ndo_set_mac_address)(struct net_device *dev,
 						       void *addr);
 	int			(*ndo_validate_addr)(struct net_device *dev);
@@ -1939,7 +1984,7 @@ enum netdev_reg_state {
  *	@ingress_queue:		XXX: need comments on this one
  *	@nf_hooks_ingress:	netfilter hooks executed for ingress packets
  *	@broadcast:		hw bcast address
- *
+ *	@rx_mode_ctx:		rx_mode work context
  *	@rx_cpu_rmap:	CPU reverse-mapping for RX completion interrupts,
  *			indexed by RX queue number. Assigned by driver.
  *			This must only be set if the ndo_rx_flow_steer
@@ -1971,6 +2016,8 @@ enum netdev_reg_state {
  *	@link_watch_list:	XXX: need comments on this one
  *
  *	@reg_state:		Register/unregister state machine
+ *	@needs_cleanup_work:	Should dev_close schedule the cleanup work?
+ *	@cleanup_work:		Cleanup work context
  *	@dismantle:		Device is going to be freed
  *	@needs_free_netdev:	Should unregister perform free_netdev?
  *	@priv_destructor:	Called from unregister
@@ -2350,6 +2397,7 @@ struct net_device {
 #endif
 
 	unsigned char		broadcast[MAX_ADDR_LEN];
+	struct netif_rx_mode_ctx *rx_mode_ctx;
 #ifdef CONFIG_RFS_ACCEL
 	struct cpu_rmap		*rx_cpu_rmap;
 #endif
@@ -2387,6 +2435,10 @@ struct net_device {
 
 	u8 reg_state;
 
+	bool needs_cleanup_work;
+
+	struct netif_cleanup_work *cleanup_work;
+
 	bool dismantle;
 
 	/** @moving_ns: device is changing netns, protected by @lock */
@@ -3373,6 +3425,60 @@ int dev_loopback_xmit(struct net *net, struct sock *sk, struct sk_buff *newskb);
 u16 dev_pick_tx_zero(struct net_device *dev, struct sk_buff *skb,
 		     struct net_device *sb_dev);
 
+/* Helpers to be used in the set_rx_mode implementation */
+static inline void netif_rx_mode_set_cfg(struct net_device *dev, int b,
+					 bool val)
+{
+	if (val)
+		dev->rx_mode_ctx->pending->cfg |= BIT(b);
+	else
+		dev->rx_mode_ctx->pending->cfg &= ~BIT(b);
+}
+
+static inline void netif_rx_mode_set_flag(struct net_device *dev, int b,
+					  bool val)
+{
+	if (val)
+		dev->rx_mode_ctx->flags |= BIT(b);
+	else
+		dev->rx_mode_ctx->flags &= ~BIT(b);
+}
+
+/* Helpers to be used in the write_rx_mode implementation */
+static inline int netif_rx_mode_get_cfg(struct net_device *dev, int b)
+{
+	return !!(dev->rx_mode_ctx->ready->cfg & BIT(b));
+}
+
+static inline int netif_rx_mode_get_flag(struct net_device *dev, int b)
+{
+	return !!(dev->rx_mode_ctx->flags & BIT(b));
+}
+
+static inline int netif_rx_mode_mc_count(struct net_device *dev)
+{
+	return dev->rx_mode_ctx->ready->mc_count;
+}
+
+static inline int netif_rx_mode_uc_count(struct net_device *dev)
+{
+	return dev->rx_mode_ctx->ready->uc_count;
+}
+
+void netif_schedule_rx_mode_work(struct net_device *dev);
+
+void netif_flush_rx_mode_work(struct net_device *dev);
+
+#define netif_rx_mode_for_each_uc_addr(ha_addr, dev, __i) \
+	for (__i = 0, ha_addr = (dev)->rx_mode_ctx->ready->uc_addrs; \
+	     __i < (dev)->rx_mode_ctx->ready->uc_count; \
+	     __i++, ha_addr += (dev)->addr_len)
+
+#define netif_rx_mode_for_each_mc_addr(ha_addr, dev, __i) \
+	for (__i = 0, ha_addr = (dev)->rx_mode_ctx->ready->mc_addrs; \
+	     __i < (dev)->rx_mode_ctx->ready->mc_count; \
+	     __i++, ha_addr += (dev)->addr_len)
+
 int __dev_queue_xmit(struct sk_buff *skb, struct net_device *sb_dev);
 int __dev_direct_xmit(struct sk_buff *skb, u16 queue_id);
 
diff --git a/net/core/dev.c b/net/core/dev.c
index c711da335510..072da874a958 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -1586,6 +1586,197 @@ void netif_state_change(struct net_device *dev)
 	}
 }
 
+/* This function attempts to copy the current state of the
+ * net device into pending (reallocating if necessary). If it fails,
+ * pending is guaranteed to be unmodified.
+ */
+static int __netif_prepare_rx_mode(struct net_device *dev)
+{
+	struct netif_rx_mode_config *pending = dev->rx_mode_ctx->pending;
+	bool skip_uc = false, skip_mc = false;
+	int uc_count = 0, mc_count = 0;
+	struct netdev_hw_addr *ha;
+	char *tmp;
+	int i;
+
+	skip_uc = netif_rx_mode_get_flag(dev, NETIF_RX_MODE_UC_SKIP);
+	skip_mc = netif_rx_mode_get_flag(dev, NETIF_RX_MODE_MC_SKIP);
+
+	/* The allocations need to be atomic since this will be called under
+	 * netif_addr_lock_bh()
+	 */
+	if (!skip_uc) {
+		uc_count = netdev_uc_count(dev);
+		tmp = krealloc(pending->uc_addrs, uc_count * dev->addr_len,
+			       GFP_ATOMIC);
+		if (!tmp)
+			return -ENOMEM;
+		pending->uc_addrs = tmp;
+	}
+
+	if (!skip_mc) {
+		mc_count = netdev_mc_count(dev);
+		tmp = krealloc(pending->mc_addrs, mc_count * dev->addr_len,
+			       GFP_ATOMIC);
+		if (!tmp)
+			return -ENOMEM;
+		pending->mc_addrs = tmp;
+	}
+
+	/* This function cannot fail after this point */
+	i = 0;
+	if (!skip_uc) {
+		pending->uc_count = uc_count;
+		netdev_for_each_uc_addr(ha, dev)
+			memcpy(pending->uc_addrs + (i++) * dev->addr_len,
+			       ha->addr, dev->addr_len);
+	}
+
+	i = 0;
+	if (!skip_mc) {
+		pending->mc_count = mc_count;
+		netdev_for_each_mc_addr(ha, dev)
+			memcpy(pending->mc_addrs + (i++) * dev->addr_len,
+			       ha->addr, dev->addr_len);
+	}
+	return 0;
+}
+
+static void netif_prepare_rx_mode(struct net_device *dev)
+{
+	int rc;
+
+	lockdep_assert_held(&dev->addr_list_lock);
+
+	rc = __netif_prepare_rx_mode(dev);
+	if (rc)
+		return;
+
+	netif_rx_mode_set_flag(dev, NETIF_RX_MODE_READY, true);
+}
+
+static void netif_write_rx_mode(struct work_struct *param)
+{
+	struct netif_rx_mode_ctx *ctx;
+	struct net_device *dev;
+
+	rtnl_lock();
+	ctx = container_of(param, struct netif_rx_mode_ctx, work);
+	dev = ctx->dev;
+
+	if (!netif_running(dev)) {
+		rtnl_unlock();
+		return;
+	}
+
+	/* Paranoia. */
+	if (WARN_ON(!dev->netdev_ops->ndo_write_rx_mode)) {
+		rtnl_unlock();
+		return;
+	}
+
+	/* We could introduce a new lock for this but reusing the addr
+	 * lock works well enough
+	 */
+	netif_addr_lock_bh(dev);
+
+	/* There's no point continuing if the pending config is not ready */
+	if (!netif_rx_mode_get_flag(dev, NETIF_RX_MODE_READY)) {
+		netif_addr_unlock_bh(dev);
+		rtnl_unlock();
+		return;
+	}
+
+	swap(ctx->ready, ctx->pending);
+	netif_rx_mode_set_flag(dev, NETIF_RX_MODE_READY, false);
+	netif_addr_unlock_bh(dev);
+
+	dev->netdev_ops->ndo_write_rx_mode(dev);
+	rtnl_unlock();
+}
+
+static int netif_alloc_rx_mode_ctx(struct net_device *dev)
+{
+	dev->rx_mode_ctx = kzalloc(sizeof(*dev->rx_mode_ctx), GFP_KERNEL);
+	if (!dev->rx_mode_ctx)
+		goto fail_all;
+
+	dev->rx_mode_ctx->ready = kzalloc(sizeof(*dev->rx_mode_ctx->ready),
+					  GFP_KERNEL);
+	if (!dev->rx_mode_ctx->ready)
+		goto fail_ready;
+
+	dev->rx_mode_ctx->pending = kzalloc(sizeof(*dev->rx_mode_ctx->pending),
+					    GFP_KERNEL);
+	if (!dev->rx_mode_ctx->pending)
+		goto fail_pending;
+
+	dev->rx_mode_ctx->dev = dev;
+	INIT_WORK(&dev->rx_mode_ctx->work, netif_write_rx_mode);
+	return 0;
+
+fail_pending:
+	kfree(dev->rx_mode_ctx->ready);
+
+fail_ready:
+	kfree(dev->rx_mode_ctx);
+
+fail_all:
+	return -ENOMEM;
+}
+
+static void netif_free_rx_mode_ctx(struct net_device *dev)
+{
+	if (!dev->rx_mode_ctx)
+		return;
+
+	cancel_work_sync(&dev->rx_mode_ctx->work);
+
+	kfree(dev->rx_mode_ctx->ready->uc_addrs);
+	kfree(dev->rx_mode_ctx->ready->mc_addrs);
+	kfree(dev->rx_mode_ctx->ready);
+
+	kfree(dev->rx_mode_ctx->pending->uc_addrs);
+	kfree(dev->rx_mode_ctx->pending->mc_addrs);
+	kfree(dev->rx_mode_ctx->pending);
+
+	kfree(dev->rx_mode_ctx);
+	dev->rx_mode_ctx = NULL;
+}
+
+static void netif_cleanup_work_fn(struct work_struct *param)
+{
+	struct netif_cleanup_work *ctx;
+	struct net_device *dev;
+
+	ctx = container_of(param, struct netif_cleanup_work, work);
+	dev = ctx->dev;
+
+	if (dev->netdev_ops->ndo_write_rx_mode)
+		netif_free_rx_mode_ctx(dev);
+}
+
+static int netif_alloc_cleanup_work(struct net_device *dev)
+{
+	dev->cleanup_work = kzalloc(sizeof(*dev->cleanup_work), GFP_KERNEL);
+	if (!dev->cleanup_work)
+		return -ENOMEM;
+
+	dev->cleanup_work->dev = dev;
+	INIT_WORK(&dev->cleanup_work->work, netif_cleanup_work_fn);
+	return 0;
+}
+
+static void netif_free_cleanup_work(struct net_device *dev)
+{
+	if (!dev->cleanup_work)
+		return;
+
+	flush_work(&dev->cleanup_work->work);
+	kfree(dev->cleanup_work);
+	dev->cleanup_work = NULL;
+}
+
 /**
  * __netdev_notify_peers - notify network peers about existence of @dev,
  * to be called when rtnl lock is already held.
@@ -1678,6 +1869,16 @@ static int __dev_open(struct net_device *dev, struct netlink_ext_ack *extack)
 	if (ops->ndo_validate_addr)
 		ret = ops->ndo_validate_addr(dev);
 
+	if (!ret && dev->needs_cleanup_work) {
+		if (!dev->cleanup_work)
+			ret = netif_alloc_cleanup_work(dev);
+		else
+			flush_work(&dev->cleanup_work->work);
+	}
+
+	if (!ret && ops->ndo_write_rx_mode)
+		ret = netif_alloc_rx_mode_ctx(dev);
+
 	if (!ret && ops->ndo_open)
 		ret = ops->ndo_open(dev);
 
@@ -1754,6 +1955,9 @@ static void __dev_close_many(struct list_head *head)
 		if (ops->ndo_stop)
 			ops->ndo_stop(dev);
 
+		if (dev->needs_cleanup_work)
+			schedule_work(&dev->cleanup_work->work);
+
 		netif_set_up(dev, false);
 		netpoll_poll_enable(dev);
 	}
@@ -9622,6 +9826,57 @@ int netif_set_allmulti(struct net_device *dev, int inc, bool notify)
 	return 0;
 }
 
+/* netif_schedule_rx_mode_work - Sets up the rx_config snapshot and
+ * schedules the deferred I/O.
+ */
+static void __netif_schedule_rx_mode_work(struct net_device *dev)
+{
+	const struct net_device_ops *ops = dev->netdev_ops;
+
+	if (ops->ndo_set_rx_mode)
+		ops->ndo_set_rx_mode(dev);
+
+	if (!ops->ndo_write_rx_mode)
+		return;
+
+	/* This part is only for drivers that implement ndo_write_rx_mode */
+
+	/* If rx_mode set is to be skipped, we don't schedule the work */
+	if (netif_rx_mode_get_flag(dev, NETIF_RX_MODE_SET_SKIP))
+		return;
+
+	netif_prepare_rx_mode(dev);
+	schedule_work(&dev->rx_mode_ctx->work);
+}
+
+void netif_schedule_rx_mode_work(struct net_device *dev)
+{
+	if (WARN_ON(!netif_running(dev)))
+		return;
+
+	netif_addr_lock_bh(dev);
+	__netif_schedule_rx_mode_work(dev);
+	netif_addr_unlock_bh(dev);
+}
+EXPORT_SYMBOL(netif_schedule_rx_mode_work);
+
+/* Drivers that implement rx mode as work flush the work item when closing
+ * or suspending. This is the substitute for those calls.
+ */
+void netif_flush_rx_mode_work(struct net_device *dev)
+{
+	/* Calling this function with RTNL held will result in a deadlock. */
+	if (WARN_ON(rtnl_is_locked()))
+		return;
+
+	/* Doing nothing is enough to "flush" work on a closed interface */
+	if (!netif_running(dev))
+		return;
+
+	flush_work(&dev->rx_mode_ctx->work);
+}
+EXPORT_SYMBOL(netif_flush_rx_mode_work);
+
 /*
  *	Upload unicast and multicast address lists to device and
  *	configure RX filtering. When the device doesn't support unicast
@@ -9630,8 +9885,6 @@ int netif_set_allmulti(struct net_device *dev, int inc, bool notify)
  */
 void __dev_set_rx_mode(struct net_device *dev)
 {
-	const struct net_device_ops *ops = dev->netdev_ops;
-
 	/* dev_open will call this function so the list will stay sane. */
 	if (!(dev->flags&IFF_UP))
 		return;
@@ -9652,8 +9905,7 @@ void __dev_set_rx_mode(struct net_device *dev)
 		}
 	}
 
-	if (ops->ndo_set_rx_mode)
-		ops->ndo_set_rx_mode(dev);
+	__netif_schedule_rx_mode_work(dev);
 }
 
 void dev_set_rx_mode(struct net_device *dev)
@@ -11324,6 +11576,9 @@ int register_netdevice(struct net_device *dev)
 		}
 	}
 
+	if (dev->netdev_ops->ndo_write_rx_mode)
+		dev->needs_cleanup_work = true;
+
 	if (((dev->hw_features | dev->features) &
 	     NETIF_F_HW_VLAN_CTAG_FILTER) &&
 	    (!dev->netdev_ops->ndo_vlan_rx_add_vid ||
@@ -12067,6 +12322,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 	dev->real_num_rx_queues = rxqs;
 	if (netif_alloc_rx_queues(dev))
 		goto free_all;
+
 	dev->ethtool = kzalloc(sizeof(*dev->ethtool), GFP_KERNEL_ACCOUNT);
 	if (!dev->ethtool)
 		goto free_all;
@@ -12150,6 +12406,7 @@ void free_netdev(struct net_device *dev)
 	kfree(dev->ethtool);
 	netif_free_tx_queues(dev);
 	netif_free_rx_queues(dev);
+	netif_free_cleanup_work(dev);
 
 	kfree(rcu_dereference_protected(dev->ingress_queue, 1));
 
-- 
2.47.3

