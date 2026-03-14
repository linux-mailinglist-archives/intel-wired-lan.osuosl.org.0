Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBkiMPCotWmw3AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3764F28E723
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7E6F413D6;
	Sat, 14 Mar 2026 18:29:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tc7GgvRLPlZs; Sat, 14 Mar 2026 18:29:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEFCA413D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773512941;
	bh=bTvcRjBg7RZQjPVbwsm/XKOCF/7oOgDehhwAe6xkRiI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IkI5kwMHYTR7mVJydGa8E7lRhHfWrDuwH9ETadXWbe6VImCfUmkJ1gIsDrpEF3xmO
	 ikE8UQ3UkUKY5w15wzCvoK2NtNvjIMAEXwXmHyJDlRIl46W+ch6EK5SD7UpAVfUHAV
	 Q26hwcIQ+d/hAWJQZlRZeNcOLABUOWJXCexVoutyEqUrSkxYUGGTLM3/8j2lkis5XL
	 Mt26FLWpfANpuhhyyMUAYoQtnZ7umwJx2xpcF7kVVdaUEQbb1d376XmJaKK2JQFMLy
	 hllEo2w7lQKBJaYfAjmW4blZrz+C6gfEEq/IJffKBO5BZrLWjkMPFtmLckTVZQk4fk
	 aBerZr5cakf2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEFCA413D0;
	Sat, 14 Mar 2026 18:29:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C2C291B4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A8C4E413CA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LAh5MroVxDzo for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 18:28:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B1A7740F74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1A7740F74
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1A7740F74
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:28:59 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-2a9296b3926so25748695ad.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 11:28:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773512939; x=1774117739;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=bTvcRjBg7RZQjPVbwsm/XKOCF/7oOgDehhwAe6xkRiI=;
 b=WHQVtpONGZpOynMYFlAhcjKTHaYj3OXV9S/K7G9JLZp4jPsFX2UNhBN+MCxCkux6jF
 d0VHKvctWnpIa9Za3f23un/zk/8Xav8mV9dGCaX7wo3H9tXxi4WxZgwIwkcbCNNPp05N
 YDFFgugxzRv8E/chHB7QWioa7KRpbVaD/bJM9nG/FCzSA9avi88eKyQKEQo/YSFFNici
 41SIYBfJOX8VvFA28n5sDI4ZV86xgK0k+Mr5ZUArEq0wrLJfOAgEv9yd6kAEmjzoO6+t
 eLW4Pzcb67C4YqlZoGon6FCluDErTWJBzfbxY7gI1XsAjhohrqjuoZh03wI920iMAnCJ
 tM3Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVb3ppIdGBqYk4ckdl38kahx66O05UPfzzp0i2v1p60LX3KkqymaO0C1vppT5yLSZ5deGpHfRYY7QGi59XRu2U=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy0LL5PhiQfWKluw4DCRHggq2w4k2lDaK/VboYW8U8u+ueNj6JQ
 6i8no5twqQY6MC6VEqiX1gwFa0ZYdRjnxWVUg96M7z+2J3qoYK0jGXjm
X-Gm-Gg: ATEYQzwHhP8EBke7Q6iBB6kEu9YL46ZhAxoeTcrY/yHq2DTjiXP6VHN3NwjE7CBuNu1
 AVA/cAYUejpQ1guFRIIXTZKM9uZ0Z+RoaCuAsJno8r9Mul3wDKRYSO0Jzdhvw7SMxc7lbrLFqF1
 SuBezPKl+sq/nH0IgIB7CksPv9dQf6tGIoqXrHjz7Kbz7wUX5SViFWyPnkP/erhBeks8FCqa2Ps
 vwa4zB6KC2SPWe9puOWEJ75U22h32eHsKZRkZuQRFKaNpEzvpLhQKmc9fUCHbfFl9OSjw/osqa1
 whKe4AJ6Uz0e+KVIOBgWHZwvOS4ZM5U/dsKpbPLB/EHZruQk8mZ1l0Qfq7dcLUTk+tDiGAJeQMA
 eehvUSG+X3Q5d/p8CFqwSdwAFN80FuiySWJ1JTukHzIpv+lOBRB7r1mWJeXno/L9g6exySyPiTS
 QHWjp8B4uzRq+qIrA5C/mQGjrRo8glaWHHjUt7dVtAoNmrVXL+YMgFtFMnUOwGuiDjjGjgEqr0H
 gnr4X4VqVpgRlwQ
X-Received: by 2002:a17:902:ce92:b0:2ae:41d1:344b with SMTP id
 d9443c01a7336-2aeca967ad1mr74232365ad.6.1773512938770; 
 Sat, 14 Mar 2026 11:28:58 -0700 (PDT)
Received: from localhost.localdomain ([122.168.66.151])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2aece62c581sm77673525ad.33.2026.03.14.11.28.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2026 11:28:58 -0700 (PDT)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: stfomichev@gmail.com, horms@kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, eperezma@redhat.com, xuanzhuo@linux.alibaba.com,
 jasowang@redhat.com, mst@redhat.com, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 virtualization@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, I Viswanath <viswanathiyyappan@gmail.com>
Date: Sat, 14 Mar 2026 23:58:04 +0530
Message-ID: <20260314182809.362808-3-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773512939; x=1774117739; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bTvcRjBg7RZQjPVbwsm/XKOCF/7oOgDehhwAe6xkRiI=;
 b=HLLrdEXgvi8ip7MsIA06bGNI9Ywfka2BKOlOcSBgEp6+O2lgXzrI1xOyNVfkpKDuBl
 UsMqj06nwydLdLfoCH1b6z6JraJQLVbxlJHZzspjVbjy0tg69fBcUH0igoSt68LpuTuD
 YwGtqGIjL9dbDLjFRx0tpkWN6J/Khu0vu7Tq30ljKX49dhWkVsIIItaKpYz36fxVbivV
 L5CtU6c92qSaEJhbKppsyZVXip/xcjsBvIL3KXglposI/IOibFBuUpf2BpLCMHtN7YHs
 Qp1CM6on0iHH3ONoHZxGMzexVFuEQu4GjwwYRxmrnmCSgrYFLncf1WoX6xOwVbN2ZIxT
 NZ+g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=HLLrdEXg
Subject: [Intel-wired-lan] [PATCH net-next v9 2/7] net: core: Introduce
 callback ndo_set_rx_mode_async
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:horms@kernel.org,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:eperezma@redhat.com,m:xuanzhuo@linux.alibaba.com,m:jasowang@redhat.com,m:mst@redhat.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:ronak.doshi@broadcom.com,m:pcnet32@frontier.com,m:bcm-kernel-feedback-list@broadcom.com,m:netdev@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:viswanathiyyappan@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,redhat.com,lunn.ch,davemloft.net,linux.alibaba.com,intel.com,broadcom.com,frontier.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[broadcom.com,vger.kernel.org,lists.linux.dev,lists.osuosl.org,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3764F28E723
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The set_rx_mode callback is invoked under the addr_lock spinlock which
makes it illegal to sleep. This means set_rx_mode is prone to
sleep-in-atomic bugs as drivers have a tendency to do the I/O directly
in the callback.

This problem can be avoided if set_rx_mode were done in 2 stages: snapshot
and commit. A handful of drivers implement this idea by implementing the
rx_mode update as work and scheduling it in the set_rx_mode callback.

Implement this idea in net/core as this is not driver specific. To
facilitate this transition, a new async callback set_rx_mode_async
is introduced.

When this callback is provided, the set_rx_mode callback customizes
the snapshot creation and the work behaviour as required while the
set_rx_mode_async callback is run async as work and commits the
prepared snapshot.

Apart from this, the drivers need to be updated to have all the RX mode
updates pass through the netif_set_rx_mode helper to ensure correctness.

Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
---
 include/linux/netdevice.h |  94 +++++++++++++-
 include/net/netdev_lock.h |   8 ++
 net/core/dev.c            | 251 +++++++++++++++++++++++++++++++++++++-
 3 files changed, 347 insertions(+), 6 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 6d426dc66af9..a69377068f4a 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1068,7 +1068,36 @@ enum netif_async_state {
 	NETIF_ASYNC_INACTIVE
 };
 
+enum netif_rx_mode_cfg {
+	NETIF_RX_MODE_CFG_ALLMULTI,
+	NETIF_RX_MODE_CFG_PROMISC,
+	NETIF_RX_MODE_CFG_BROADCAST
+};
+
+enum netif_rx_mode_flags {
+	NETIF_RX_MODE_READY,
+	NETIF_RX_MODE_UC_SKIP,
+	NETIF_RX_MODE_MC_SKIP
+};
+
+struct netif_rx_mode_config {
+	char    *uc_addrs;
+	char    *mc_addrs;
+	int     uc_count;
+	int     mc_count;
+	int     cfg;
+};
+
+struct netif_rx_mode_work {
+	struct netif_rx_mode_config *pending;
+	struct netif_rx_mode_config *ready;
+	struct work_struct work;
+	struct net_device *dev;
+	int flags;
+};
+
 struct netif_async_ctx {
+	struct netif_rx_mode_work *rx_mode_work;
 	enum netif_async_state state;
 };
 
@@ -1124,9 +1153,15 @@ struct netif_async_ctx {
  *	changes to configuration when multicast or promiscuous is enabled.
  *
  * void (*ndo_set_rx_mode)(struct net_device *dev);
- *	This function is called device changes address list filtering.
+ *	This function is called when device changes address list filtering.
  *	If driver handles unicast address filtering, it should set
- *	IFF_UNICAST_FLT in its priv_flags.
+ *	IFF_UNICAST_FLT in its priv_flags. If the ndo_set_rx_mode_async
+ *	callback is provided, This would be used to set up the
+ *	rx mode snapshot that will be committed by ndo_set_rx_mode_async.
+ *
+ * void (*ndo_set_rx_mode_async)(struct net_device *dev);
+ *	This function will be scheduled by dev_set_rx_mode and is
+ *	responsible for committing the rx_mode snapshot to the hardware.
  *
  * int (*ndo_set_mac_address)(struct net_device *dev, void *addr);
  *	This function  is called when the Media Access Control address
@@ -1447,6 +1482,7 @@ struct net_device_ops {
 	void			(*ndo_change_rx_flags)(struct net_device *dev,
 						       int flags);
 	void			(*ndo_set_rx_mode)(struct net_device *dev);
+	void			(*ndo_set_rx_mode_async)(struct net_device *dev);
 	int			(*ndo_set_mac_address)(struct net_device *dev,
 						       void *addr);
 	int			(*ndo_validate_addr)(struct net_device *dev);
@@ -3405,6 +3441,60 @@ netif_get_async_state(struct net_device *dev)
 	return dev->async_ctx->state;
 }
 
+void netif_set_rx_mode(struct net_device *dev);
+
+/* Helpers to be used in the set_rx_mode callback */
+static inline void netif_set_rx_mode_cfg(struct net_device *dev, int b,
+					 bool val)
+{
+	if (val)
+		dev->async_ctx->rx_mode_work->pending->cfg |= BIT(b);
+	else
+		dev->async_ctx->rx_mode_work->pending->cfg &= ~BIT(b);
+}
+
+static inline void netif_set_rx_mode_flag(struct net_device *dev, int b,
+					  bool val)
+{
+	if (val)
+		dev->async_ctx->rx_mode_work->flags |= BIT(b);
+	else
+		dev->async_ctx->rx_mode_work->flags &= ~BIT(b);
+}
+
+/* Helpers to be used in the set_rx_mode_async callback */
+static inline bool netif_get_rx_mode_cfg(struct net_device *dev, int b)
+{
+	return !!(dev->async_ctx->rx_mode_work->ready->cfg & BIT(b));
+}
+
+static inline bool netif_get_rx_mode_flag(struct net_device *dev, int b)
+{
+	return !!(dev->async_ctx->rx_mode_work->flags & BIT(b));
+}
+
+static inline int netif_rx_mode_uc_count(struct net_device *dev)
+{
+	return dev->async_ctx->rx_mode_work->ready->uc_count;
+}
+
+static inline int netif_rx_mode_mc_count(struct net_device *dev)
+{
+	return dev->async_ctx->rx_mode_work->ready->mc_count;
+}
+
+#define netif_rx_mode_for_each_uc_addr(ha_addr, dev, __i) \
+	for (__i = 0, \
+	     ha_addr = (dev)->async_ctx->rx_mode_work->ready->uc_addrs; \
+	     __i < (dev)->async_ctx->rx_mode_work->ready->uc_count; \
+	     __i++, ha_addr += (dev)->addr_len)
+
+#define netif_rx_mode_for_each_mc_addr(ha_addr, dev, __i) \
+	for (__i = 0, \
+	     ha_addr = (dev)->async_ctx->rx_mode_work->ready->mc_addrs; \
+	     __i < (dev)->async_ctx->rx_mode_work->ready->mc_count; \
+	     __i++, ha_addr += (dev)->addr_len)
+
 int __dev_queue_xmit(struct sk_buff *skb, struct net_device *sb_dev);
 int __dev_direct_xmit(struct sk_buff *skb, u16 queue_id);
 
diff --git a/include/net/netdev_lock.h b/include/net/netdev_lock.h
index 3d3aef80beac..118fa89232a0 100644
--- a/include/net/netdev_lock.h
+++ b/include/net/netdev_lock.h
@@ -80,6 +80,14 @@ netdev_ops_assert_locked_or_invisible(const struct net_device *dev)
 		netdev_ops_assert_locked(dev);
 }
 
+static inline bool netdev_trylock_ops_compat(struct net_device *dev)
+{
+	if (netdev_need_ops_lock(dev))
+		return netdev_trylock(dev);
+	else
+		return rtnl_trylock();
+}
+
 static inline void netdev_lock_ops_compat(struct net_device *dev)
 {
 	if (netdev_need_ops_lock(dev))
diff --git a/net/core/dev.c b/net/core/dev.c
index b1797bd28a6b..acf46a304d62 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -1664,6 +1664,92 @@ static int napi_kthread_create(struct napi_struct *n)
 	return err;
 }
 
+static void dev_set_rx_mode_async(struct work_struct *param)
+{
+	struct netif_rx_mode_work *ctx;
+	struct net_device *dev;
+
+	ctx = container_of(param, struct netif_rx_mode_work, work);
+	dev = ctx->dev;
+
+	/* This handler requires the instance lock and we cancel this work
+	 * in dev_close where it is already held, resulting in a deadlock.
+	 * Avoid that scenario by trying to acquire the lock and bailing
+	 * out when we are in teardown.
+	 */
+	while (!netdev_trylock_ops_compat(dev)) {
+		if (netif_get_async_state(dev) == NETIF_ASYNC_DOWN)
+			return;
+
+		msleep(20);
+	}
+
+	/* We could introduce a new lock for this but reusing the addr
+	 * lock works well enough
+	 */
+	netif_addr_lock_bh(dev);
+	if (!netif_get_rx_mode_flag(dev, NETIF_RX_MODE_READY)) {
+		netif_addr_unlock_bh(dev);
+		goto out;
+	}
+	swap(ctx->ready, ctx->pending);
+	netif_set_rx_mode_flag(dev, NETIF_RX_MODE_READY, false);
+	netif_addr_unlock_bh(dev);
+
+	dev->netdev_ops->ndo_set_rx_mode_async(dev);
+out:
+	netdev_unlock_ops_compat(dev);
+}
+
+static int netif_alloc_rx_mode_ctx(struct net_device *dev)
+{
+	struct netif_rx_mode_work *rx_mode_work;
+
+	rx_mode_work = kzalloc_obj(*rx_mode_work);
+	if (!rx_mode_work)
+		goto fail;
+
+	rx_mode_work->ready = kzalloc_obj(*rx_mode_work->ready);
+	if (!rx_mode_work->ready)
+		goto fail_ready;
+
+	rx_mode_work->pending = kzalloc_obj(*rx_mode_work->pending);
+	if (!rx_mode_work->pending)
+		goto fail_pending;
+
+	INIT_WORK(&rx_mode_work->work, dev_set_rx_mode_async);
+	rx_mode_work->dev = dev;
+
+	dev->async_ctx->rx_mode_work = rx_mode_work;
+	return 0;
+
+fail_pending:
+	kfree(rx_mode_work->ready);
+fail_ready:
+	kfree(rx_mode_work);
+fail:
+	return -ENOMEM;
+}
+
+static void netif_free_rx_mode_ctx(struct net_device *dev)
+{
+	if (!dev->async_ctx->rx_mode_work)
+		return;
+
+	cancel_work_sync(&dev->async_ctx->rx_mode_work->work);
+
+	kfree(dev->async_ctx->rx_mode_work->ready->uc_addrs);
+	kfree(dev->async_ctx->rx_mode_work->ready->mc_addrs);
+	kfree(dev->async_ctx->rx_mode_work->ready);
+
+	kfree(dev->async_ctx->rx_mode_work->pending->uc_addrs);
+	kfree(dev->async_ctx->rx_mode_work->pending->mc_addrs);
+	kfree(dev->async_ctx->rx_mode_work->pending);
+
+	kfree(dev->async_ctx->rx_mode_work);
+	dev->async_ctx->rx_mode_work = NULL;
+}
+
 static int __netif_alloc_async_ctx(struct net_device *dev)
 {
 	dev->async_ctx = kzalloc_obj(*dev->async_ctx);
@@ -1676,17 +1762,27 @@ static int __netif_alloc_async_ctx(struct net_device *dev)
 
 static int netif_alloc_async_ctx(struct net_device *dev)
 {
+	const struct net_device_ops *ops = dev->netdev_ops;
 	int ret;
 
 	ret = __netif_alloc_async_ctx(dev);
+
+	if (!ret && ops->ndo_set_rx_mode_async)
+		ret = netif_alloc_rx_mode_ctx(dev);
+
 	return ret;
 }
 
 static void netif_free_async_ctx(struct net_device *dev)
 {
+	const struct net_device_ops *ops = dev->netdev_ops;
+
 	if (!dev->async_ctx)
 		return;
 
+	if (ops->ndo_set_rx_mode_async)
+		netif_free_rx_mode_ctx(dev);
+
 	kfree(dev->async_ctx);
 	dev->async_ctx = NULL;
 }
@@ -1868,6 +1964,8 @@ EXPORT_SYMBOL(netif_close);
  */
 void netif_disable_async_ops(struct net_device *dev)
 {
+	const struct net_device_ops *ops = dev->netdev_ops;
+
 	netdev_lock_ops_compat(dev);
 
 	if (!dev->needs_async_ctx || !netif_running(dev)) {
@@ -1877,6 +1975,9 @@ void netif_disable_async_ops(struct net_device *dev)
 
 	netif_set_async_state(dev, NETIF_ASYNC_INACTIVE);
 	netdev_unlock_ops_compat(dev);
+
+	if (ops->ndo_set_rx_mode_async)
+		cancel_work_sync(&dev->async_ctx->rx_mode_work->work);
 }
 EXPORT_SYMBOL(netif_disable_async_ops);
 
@@ -9749,6 +9850,88 @@ int netif_set_allmulti(struct net_device *dev, int inc, bool notify)
 	return 0;
 }
 
+static int __netif_prepare_rx_mode(struct net_device *dev)
+{
+	bool skip_uc = false, skip_mc = false;
+	struct netif_rx_mode_config *pending;
+	int uc_count = 0, mc_count = 0;
+	struct netdev_hw_addr *ha;
+	char *tmp;
+	int i;
+
+	pending = dev->async_ctx->rx_mode_work->pending;
+
+	skip_uc = netif_get_rx_mode_flag(dev, NETIF_RX_MODE_UC_SKIP);
+	skip_mc = netif_get_rx_mode_flag(dev, NETIF_RX_MODE_MC_SKIP);
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
+
+		i = 0;
+		pending->uc_addrs = tmp;
+		pending->uc_count = uc_count;
+		netdev_for_each_uc_addr(ha, dev)
+			memcpy(pending->uc_addrs + (i++) * dev->addr_len,
+			       ha->addr, dev->addr_len);
+	}
+
+	if (!skip_mc) {
+		mc_count = netdev_mc_count(dev);
+		tmp = krealloc(pending->mc_addrs, mc_count * dev->addr_len,
+			       GFP_ATOMIC);
+		if (!tmp)
+			return -ENOMEM;
+
+		i = 0;
+		pending->mc_addrs = tmp;
+		pending->mc_count = mc_count;
+		netdev_for_each_mc_addr(ha, dev)
+			memcpy(pending->mc_addrs + (i++) * dev->addr_len,
+			       ha->addr, dev->addr_len);
+	}
+
+	return 0;
+}
+
+/* Attempt to prepare the rx_mode snapshot and if successful,
+ * signal that it's ready.
+ */
+static int netif_prepare_rx_mode(struct net_device *dev)
+{
+	int rc;
+
+	lockdep_assert_held(&dev->addr_list_lock);
+	rc = __netif_prepare_rx_mode(dev);
+	netif_set_rx_mode_flag(dev, NETIF_RX_MODE_READY, (rc == 0));
+	return rc;
+}
+
+static void netif_schedule_rx_mode_work(struct net_device *dev)
+{
+	const struct net_device_ops *ops = dev->netdev_ops;
+
+	if (ops->ndo_set_rx_mode)
+		ops->ndo_set_rx_mode(dev);
+
+	if (!ops->ndo_set_rx_mode_async)
+		return;
+
+	if (netif_get_async_state(dev) == NETIF_ASYNC_INACTIVE)
+		return;
+
+	if (netif_prepare_rx_mode(dev))
+		return;
+
+	schedule_work(&dev->async_ctx->rx_mode_work->work);
+}
+
 /*
  *	Upload unicast and multicast address lists to device and
  *	configure RX filtering. When the device doesn't support unicast
@@ -9757,8 +9940,6 @@ int netif_set_allmulti(struct net_device *dev, int inc, bool notify)
  */
 void __dev_set_rx_mode(struct net_device *dev)
 {
-	const struct net_device_ops *ops = dev->netdev_ops;
-
 	/* dev_open will call this function so the list will stay sane. */
 	if (!(dev->flags&IFF_UP))
 		return;
@@ -9779,8 +9960,7 @@ void __dev_set_rx_mode(struct net_device *dev)
 		}
 	}
 
-	if (ops->ndo_set_rx_mode)
-		ops->ndo_set_rx_mode(dev);
+	netif_schedule_rx_mode_work(dev);
 }
 
 void dev_set_rx_mode(struct net_device *dev)
@@ -9790,6 +9970,66 @@ void dev_set_rx_mode(struct net_device *dev)
 	netif_addr_unlock_bh(dev);
 }
 
+/* netif_set_rx_mode() - Helper to centralize RX mode requests in core.
+ *
+ * If ndo_set_rx_mode_async is provided, perform the required
+ * setup and invoke ndo_set_rx_mode_async callback. Otherwise this is the
+ * same as invoking the ndo_set_rx_mode callback.
+ *
+ * If ndo_set_rx_mode_async is implemented, the driver must perform all
+ * RX mode updates via this function and invoking the set_rx_mode callback
+ * directly is a bug.
+ */
+void netif_set_rx_mode(struct net_device *dev)
+{
+	const struct net_device_ops *ops = dev->netdev_ops;
+	struct netif_rx_mode_work *ctx;
+	bool netif_down;
+	int rc = 0;
+
+	if (WARN_ON(!ops->ndo_set_rx_mode))
+		return;
+
+	if (!ops->ndo_set_rx_mode_async) {
+		ops->ndo_set_rx_mode(dev);
+		return;
+	}
+
+	netdev_ops_assert_locked(dev);
+
+	netif_down = !netif_running(dev);
+	if (netif_down) {
+		rc = __netif_alloc_async_ctx(dev);
+		if (!rc)
+			rc = netif_alloc_rx_mode_ctx(dev);
+		if (rc)
+			goto out;
+	}
+
+	netif_addr_lock_bh(dev);
+	ops->ndo_set_rx_mode(dev);
+	rc = netif_prepare_rx_mode(dev);
+	if (rc) {
+		netif_addr_unlock_bh(dev);
+		goto out;
+	}
+
+	/* There might be a work scheduled by dev_set_rx_mode before
+	 * this function's execution that could be using outdated
+	 * config. Clear the ready bit to prevent that work's execution.
+	 */
+	ctx = dev->async_ctx->rx_mode_work;
+	swap(ctx->ready, ctx->pending);
+	netif_set_rx_mode_flag(dev, NETIF_RX_MODE_READY, false);
+	netif_addr_unlock_bh(dev);
+
+	ops->ndo_set_rx_mode_async(dev);
+out:
+	if (netif_down)
+		netif_free_async_ctx(dev);
+}
+EXPORT_SYMBOL(netif_set_rx_mode);
+
 /**
  * netif_get_flags() - get flags reported to userspace
  * @dev: device
@@ -11451,6 +11691,9 @@ int register_netdevice(struct net_device *dev)
 		}
 	}
 
+	if (dev->netdev_ops->ndo_set_rx_mode_async)
+		dev->needs_async_ctx = true;
+
 	if (((dev->hw_features | dev->features) &
 	     NETIF_F_HW_VLAN_CTAG_FILTER) &&
 	    (!dev->netdev_ops->ndo_vlan_rx_add_vid ||
-- 
2.47.3

