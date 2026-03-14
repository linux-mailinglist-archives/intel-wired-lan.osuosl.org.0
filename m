Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2J5uC+iotWmw3AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:28:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7077F28E71C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:28:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0A5B81332;
	Sat, 14 Mar 2026 18:28:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dha0FEncvvqA; Sat, 14 Mar 2026 18:28:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 021B18131E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773512932;
	bh=4KgmmudIxXUanwK3aFbv0ip54pwkZrkMg6RJuyR+qxA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1XWuCX4Ev14CTNeKFvojcelMvnXy3ikaL/MH6ilfd6I1NrJHxohpEhPvQjjurf8qo
	 ne5Xo5YV2C8epmHzx73GadluXhDJ6drSCWS4JXlwDCLRsFgAOvB1xwQS7pDKSiuw2F
	 Fji/L44US8QfDUt0zhvligmkRWikay8vb3sc2mA/oZ+8M2RMfMpoPPHxcqB/93lGVf
	 BeUT+1lcJvOd/o/3c4FJ7/vBvFB1EoN6Y0vfj3qw4Xbi0OW19VqKnepJg465Na9/8H
	 m5Zmi3WpWNWnjaP0m5KzL5xfbkfExHssUaDi9xcB1BVdGYevrXUGWL8onePV8TaGN/
	 as5Yvkcy8yoBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 021B18131E;
	Sat, 14 Mar 2026 18:28:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 535701B2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 44F8B413CA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:28:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Klh206l8crtt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 18:28:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::631; helo=mail-pl1-x631.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A38240F74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A38240F74
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A38240F74
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:28:49 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-2aea68839a5so26022625ad.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 11:28:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773512929; x=1774117729;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=4KgmmudIxXUanwK3aFbv0ip54pwkZrkMg6RJuyR+qxA=;
 b=DokUpHSykZFHorEPJ4Ppt3+gzbiZKab5PzO7Y7rPiNziIBXCY3mEa+8TXUzUXZ3Fy6
 Mi4/T6R4xAde9juahW3UdL9lCKqEbSMEE4dq4nsLVi3h965tdtC+2qsBM8UmAmHIHarz
 frpTgWR5mEx4fiCrVR96T/ON6R7YOylqaqjJuY9OoaU7i+P7zA/K0R9FEeWk8YYvzZ+2
 05gIXCg8bzZwT47HrIT7BUALPHfNmb83rGVq+PqmzulYAeYNWArIIK66uMwnY/rRE2vg
 O41O6fYkPNUX1qbzVcWnPtH7Z6GuRDKfFucmq21jJmTydllAhVhqMTmaO4OLESBzsazD
 rp+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUrR0b2hpwyGTIUtu9F1oWm/kjtqJ2uKMCTMQRxoFutPHRgDu2GYkMj4WZ4pIJjYxnFf4XDwihQhRshu+yczpw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxt+KaHbMXEPaTyJQZiOk23bYFAfxRH/I64zrK+MHN/pvwzbe+G
 E4lGrfkp2ysN6U692eMoiPwY49jBCysLk0Jl+IBCJHWS8V7xgpxrL3w5
X-Gm-Gg: ATEYQzwvETIXlJsEZ5Xnq4PE4FG72+Y15ucQvG/rEFz0i5wSEuJq0UmhKsjI3MFnqIH
 ZiNpDavqz5ZC++mMl3/0C3kLP7VgiT0lwKnT66TQK+tK+ggCkkdVB2moguibhlh4+M5D4Q+F+n2
 hiZZhdKT6a99tBjRfw0+N6SEzIxVeQiiCr450O9Lxdjn+3lKbGLkM2m+6YcYHFDGF13ScvCaQvj
 Ebe2ruE+olY+DUfNcHczazgEcyHnj/+md98YWVfmNTuOpA+A8c8A1sfnhNu924jaWp4whuopac/
 gnJ2FWN05Wd/ADlJrXYJpnBAsFhfSM3eBkGFbiB1mqatRsWQuO2wg0mWgc9z/z1Jq8wEnjE2YZt
 tMyttUbTyaTBR3qGkAKj5j02c6Dz8qdaQ7dPtsv5dxgGz3B1jSooooNBW7po3H7LvzAkzMqyVST
 oNGYwrxVBZEAQpJTw/a+CncnsW2uPtypS5PZ4RUr8CsShW1oyF6Xxx1CAiSr0Y9dGwQGO1SMVdH
 MzLFw==
X-Received: by 2002:a17:902:ea09:b0:2b0:4cbe:fbea with SMTP id
 d9443c01a7336-2b04cbf0114mr7880195ad.25.1773512928560; 
 Sat, 14 Mar 2026 11:28:48 -0700 (PDT)
Received: from localhost.localdomain ([122.168.66.151])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2aece62c581sm77673525ad.33.2026.03.14.11.28.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2026 11:28:47 -0700 (PDT)
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
Date: Sat, 14 Mar 2026 23:58:03 +0530
Message-ID: <20260314182809.362808-2-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773512929; x=1774117729; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4KgmmudIxXUanwK3aFbv0ip54pwkZrkMg6RJuyR+qxA=;
 b=TndfeAjzGZrLut9HtlPgQrOummzg9MAnSvYXEKk2fPgOekTWx55+tBa1ZyQbGvPDL6
 Wehrgdx1ckehA7YNjjJ83nWDimaLFrXwEGf0cOOANP4nxaHx0wlExKloDmQyDjmpzuvE
 DRUf2KYQ+XakYOmnXL2K1m+BRoJnL/94Ok7je2/a3RRiBj8T1cw0OsyM1KTXAWX8raSR
 MorQ57ZRc9OcvTldDj+bl75OonqKJenRub2fmxkaQzyFpCtYirL5/zKtXiU1rsiEBXZ0
 5GAFOvrlDLYO7N5R7jAzq7Wa8HfvyEp9WDtFvytvMlJJ2Hb1OCy6jRep6gnSSbL007lF
 O1Cw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=TndfeAjz
Subject: [Intel-wired-lan] [PATCH net-next v9 1/7] net: core: Add state
 tracking for async netdev ops
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: 7077F28E71C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Async netdev ops are tricky because of the following problems:

1) Freeing the context associated with async netdev ops might require
   waiting for completion of the associated work which might require the
   rtnl lock or the instance lock. However this will deadlock in
   __dev_close_many as the cleanup is done with those locks already held.

2) We need a way to enable/disable async netdev ops depending on the PM
   state to allow/prevent hardware access as appropriate.

We solve these problems by introducing a state variable to track
the current state of netdev. This can take the following values:
- ACTIVE (up and normal operation)
- DOWN (down)
- INACTIVE (in suspend/shutdown)

To solve 1, we set the state to down in __dev_close_many. In the
associated op handler, we check for the current state and return if
the netdev is down.

To solve 2, the commit introduces the following functions:
- netif_enable_async_ops  -> sets state to ACTIVE
- netif_disable_async_ops -> sets state to INACTIVE and cancels any
			     pending work as required.

The op implementation can use the state information to do the required
processing.

Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
---
 include/linux/netdevice.h | 29 ++++++++++++++
 net/core/dev.c            | 84 ++++++++++++++++++++++++++++++++++++++-
 2 files changed, 111 insertions(+), 2 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index ae269a2e7f4d..6d426dc66af9 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1062,6 +1062,16 @@ struct netdev_net_notifier {
 	struct notifier_block *nb;
 };
 
+enum netif_async_state {
+	NETIF_ASYNC_ACTIVE,
+	NETIF_ASYNC_DOWN,
+	NETIF_ASYNC_INACTIVE
+};
+
+struct netif_async_ctx {
+	enum netif_async_state state;
+};
+
 /*
  * This structure defines the management hooks for network devices.
  * The following hooks can be defined; unless noted otherwise, they are
@@ -2027,6 +2037,8 @@ enum netdev_reg_state {
  *	@sfp_bus:	attached &struct sfp_bus structure.
  *
  *	@qdisc_tx_busylock: lockdep class annotating Qdisc->busylock spinlock
+ *	@async_ctx	  : Context required for async ops
+ *	@needs_async_ctx  : Does dev need async op context?
  *
  *	@proto_down:	protocol port state information can be sent to the
  *			switch driver and used to set the phys state of the
@@ -2454,6 +2466,8 @@ struct net_device {
 	struct phy_device	*phydev;
 	struct sfp_bus		*sfp_bus;
 	struct lock_class_key	*qdisc_tx_busylock;
+	struct netif_async_ctx  *async_ctx;
+	bool			needs_async_ctx;
 	bool			proto_down;
 	bool			irq_affinity_auto;
 	bool			rx_cpu_rmap_auto;
@@ -3376,6 +3390,21 @@ int dev_loopback_xmit(struct net *net, struct sock *sk, struct sk_buff *newskb);
 u16 dev_pick_tx_zero(struct net_device *dev, struct sk_buff *skb,
 		     struct net_device *sb_dev);
 
+void netif_disable_async_ops(struct net_device *dev);
+void netif_enable_async_ops(struct net_device *dev);
+
+static inline void netif_set_async_state(struct net_device *dev,
+					 enum netif_async_state state)
+{
+	dev->async_ctx->state = state;
+}
+
+static inline enum netif_async_state
+netif_get_async_state(struct net_device *dev)
+{
+	return dev->async_ctx->state;
+}
+
 int __dev_queue_xmit(struct sk_buff *skb, struct net_device *sb_dev);
 int __dev_direct_xmit(struct sk_buff *skb, u16 queue_id);
 
diff --git a/net/core/dev.c b/net/core/dev.c
index 200d44883fc1..b1797bd28a6b 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -1664,6 +1664,33 @@ static int napi_kthread_create(struct napi_struct *n)
 	return err;
 }
 
+static int __netif_alloc_async_ctx(struct net_device *dev)
+{
+	dev->async_ctx = kzalloc_obj(*dev->async_ctx);
+	if (!dev->async_ctx)
+		return -ENOMEM;
+
+	netif_set_async_state(dev, NETIF_ASYNC_ACTIVE);
+	return 0;
+}
+
+static int netif_alloc_async_ctx(struct net_device *dev)
+{
+	int ret;
+
+	ret = __netif_alloc_async_ctx(dev);
+	return ret;
+}
+
+static void netif_free_async_ctx(struct net_device *dev)
+{
+	if (!dev->async_ctx)
+		return;
+
+	kfree(dev->async_ctx);
+	dev->async_ctx = NULL;
+}
+
 static int __dev_open(struct net_device *dev, struct netlink_ext_ack *extack)
 {
 	const struct net_device_ops *ops = dev->netdev_ops;
@@ -1698,14 +1725,18 @@ static int __dev_open(struct net_device *dev, struct netlink_ext_ack *extack)
 	if (ops->ndo_validate_addr)
 		ret = ops->ndo_validate_addr(dev);
 
+	if (!ret && dev->needs_async_ctx)
+		ret = netif_alloc_async_ctx(dev);
+
 	if (!ret && ops->ndo_open)
 		ret = ops->ndo_open(dev);
 
 	netpoll_poll_enable(dev);
 
-	if (ret)
+	if (ret) {
 		clear_bit(__LINK_STATE_START, &dev->state);
-	else {
+		netif_free_async_ctx(dev);
+	} else {
 		netif_set_up(dev, true);
 		dev_set_rx_mode(dev);
 		dev_activate(dev);
@@ -1772,6 +1803,11 @@ static void __dev_close_many(struct list_head *head)
 
 		netdev_ops_assert_locked(dev);
 
+		if (dev->needs_async_ctx) {
+			netif_set_async_state(dev, NETIF_ASYNC_DOWN);
+			netif_free_async_ctx(dev);
+		}
+
 		if (ops->ndo_stop)
 			ops->ndo_stop(dev);
 
@@ -1821,6 +1857,50 @@ void netif_close(struct net_device *dev)
 }
 EXPORT_SYMBOL(netif_close);
 
+/* netif_disable_async_ops - disable execution of async NDOs.
+ *
+ * To be used in cases of the device shutting down, suspending or
+ * failing to resume.
+ *
+ * Should be called in the shutdown callback and in the PM suspend
+ * callbacks: @suspend(), @freeze(), @poweroff() and in the error
+ * path of PM resume callbacks.
+ */
+void netif_disable_async_ops(struct net_device *dev)
+{
+	netdev_lock_ops_compat(dev);
+
+	if (!dev->needs_async_ctx || !netif_running(dev)) {
+		netdev_unlock_ops_compat(dev);
+		return;
+	}
+
+	netif_set_async_state(dev, NETIF_ASYNC_INACTIVE);
+	netdev_unlock_ops_compat(dev);
+}
+EXPORT_SYMBOL(netif_disable_async_ops);
+
+/* netif_enable_async_ops - enable execution of async NDOs.
+ *
+ * To be used when the device attempts to resume or fails to suspend.
+ *
+ * Should be called in the PM resume callbacks: @resume(), @thaw(),
+ * @restore() and in the error path of PM suspend callbacks.
+ */
+void netif_enable_async_ops(struct net_device *dev)
+{
+	netdev_lock_ops_compat(dev);
+
+	if (!dev->needs_async_ctx || !netif_running(dev)) {
+		netdev_unlock_ops_compat(dev);
+		return;
+	}
+
+	netif_set_async_state(dev, NETIF_ASYNC_ACTIVE);
+	netdev_unlock_ops_compat(dev);
+}
+EXPORT_SYMBOL(netif_enable_async_ops);
+
 void netif_disable_lro(struct net_device *dev)
 {
 	struct net_device *lower_dev;
-- 
2.47.3

