Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 654DF98C99D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 01:53:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F09274062A;
	Tue,  1 Oct 2024 23:53:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yl1-ymVtsCWy; Tue,  1 Oct 2024 23:53:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD70D40624
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727826830;
	bh=8jeH1LephSM3GFjcVzcycSI9hrM1DyHIRSwagoq7Cvo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gesjQfbGANf2c7LjwESJfBMfAGyjyYS8DbabnZ7n7yL21hBBjPyEJm2ohAvU3A17f
	 PhG1PzUQ1J932OQqE74Wq7VVK2RgVK0HKIkAUcJ49bOzZqBDIoapYCxUrrFQSORJdw
	 QAnMMkfYqmyvxGMwlbSBFmBVX1mCpxHYWZ0553+BFm9CtldnOOd5TxPf1evFTRyW8s
	 2p0EMOICPJonQqlBz7xfR9SKU1Zuxy0BXaIdwrheqhrsknGcnhhQYD78MAU3eTAqpF
	 iSI+qseIyr5rF/cLodNy2/a0eCkBuSt2xE+cnToCL/WW6Csm1NQVnksaJrf1xY6h3x
	 3Fruak5cUOrEQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD70D40624;
	Tue,  1 Oct 2024 23:53:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 260301BF31D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 23:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8D8C4061C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 23:53:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RTKEWSPu2HR3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 23:53:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::529; helo=mail-pg1-x529.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 82AF04061A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82AF04061A
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82AF04061A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 23:53:46 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id
 41be03b00d2f7-7db90a28cf6so221705a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Oct 2024 16:53:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727826826; x=1728431626;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8jeH1LephSM3GFjcVzcycSI9hrM1DyHIRSwagoq7Cvo=;
 b=VuIxOOpATh1dK0DtczkN9Ksxi/eSIrI+uk9g31qipPRp1qg+7AwtHppIMD6rptdeb4
 mCpKsCZh4jqCVy/KTu6OC9/xa4A3TzYmECQElgfz2//qaIk+8O/ZaNVzNAE8qesMwdUz
 ZsLRtFARTQTXM/H0Oeu7ZYy+qfmz69aniSn2n92BRlvsiIg2TeO7LxF0/ZIk7eNDlhiy
 Dcf176/pqot21aLMU+TNI9BEXH23ynIq2pQc4wRWDnkb7Xwq3xDTWm4qgUyAb0TI+XBt
 UVsMYzQDHkWdoxb8+1VsEMlJxfjsp5WspV4+5XVY2qsMatzRbh6VLWvAhwGYdrn+JRk5
 bNkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXhIrNi86U8+ZgwhnMbSc706eL/0IwZp6jUOD2wsiOV5Pr8ze5ID5xPGnV6oYN02V+xpDgCbmQ2qcQeJ8DxLeE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyK5MxBVttZlQRCFVFZJ66Zm1aNtpsyMMCo59S3K9ZaFmvVUDk5
 J2xC9QVaRZ79375emNZCtLpntQpJBn2tZIu4GEJH1JvtUCMWFFWL2Bh7FebLqKo=
X-Google-Smtp-Source: AGHT+IHnD47ZafzdaY5Hlr1/2gXXQgmcG0+t+WA3Vp+OIdQfqS4Lc5McbW2j0MHbRJNSn6aoWeQjew==
X-Received: by 2002:a17:90a:f484:b0:2da:8b9f:5b74 with SMTP id
 98e67ed59e1d1-2e1853e76femr1920261a91.13.1727826825726; 
 Tue, 01 Oct 2024 16:53:45 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e18f89e973sm213130a91.29.2024.10.01.16.53.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2024 16:53:45 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Oct 2024 23:52:34 +0000
Message-Id: <20241001235302.57609-4-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241001235302.57609-1-jdamato@fastly.com>
References: <20241001235302.57609-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727826826; x=1728431626; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8jeH1LephSM3GFjcVzcycSI9hrM1DyHIRSwagoq7Cvo=;
 b=YtgHl8YdtOZ1IWiIqgmU6pkazuOWsMZcsoxBMYaEwaVTfAMJ8eqCzTk7KKmfuZ1TeO
 rGO/Xo8fYUjHOwiAbZlIDq83MVUG2PkJdFu5Jy0MZkGcNi6zZ445MCx4NPBge8w80Nhm
 BCtcvQn0+O358jqTkf37gbRD0wedrowwWIVNw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=YtgHl8Yd
Subject: [Intel-wired-lan] [RFC net-next v4 3/9] net: napi: Make
 gro_flush_timeout per-NAPI
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 mkarsten@uwaterloo.ca, Joe Damato <jdamato@fastly.com>, bjorn@rivosinc.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Breno Leitao <leitao@debian.org>, willemdebruijn.kernel@gmail.com,
 amritha.nambiar@intel.com, Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, sdf@fomichev.me,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jiri Pirko <jiri@resnulli.us>, Johannes Berg <johannes.berg@intel.com>,
 skhawaja@google.com, Kory Maincent <kory.maincent@bootlin.com>,
 sridhar.samudrala@intel.com, David Ahern <dsahern@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow per-NAPI gro_flush_timeout setting.

The existing sysfs parameter is respected; writes to sysfs will write to
all NAPI structs for the device and the net_device gro_flush_timeout
field. Reads from sysfs will read from the net_device field.

The ability to set gro_flush_timeout on specific NAPI instances will be
added in a later commit, via netdev-genl.

Note that idpf has embedded napi_struct in its internals and has
established some series of asserts that involve the size of napi
structure. Since this change increases the napi_struct size from 400 to
416 (according to pahole on my system), I've increased the assertion in
idpf by 16 bytes. No attention whatsoever was paid to the cacheline
placement of idpf internals as a result of this change.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 .../networking/net_cachelines/net_device.rst  |  2 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  2 +-
 include/linux/netdevice.h                     |  3 +-
 net/core/dev.c                                | 12 +++---
 net/core/dev.h                                | 40 +++++++++++++++++++
 net/core/net-sysfs.c                          |  2 +-
 6 files changed, 51 insertions(+), 10 deletions(-)

diff --git a/Documentation/networking/net_cachelines/net_device.rst b/Documentation/networking/net_cachelines/net_device.rst
index eeeb7c925ec5..3d02ae79c850 100644
--- a/Documentation/networking/net_cachelines/net_device.rst
+++ b/Documentation/networking/net_cachelines/net_device.rst
@@ -98,7 +98,6 @@ struct_netdev_queue*                _rx                     read_mostly
 unsigned_int                        num_rx_queues                                                   
 unsigned_int                        real_num_rx_queues      -                   read_mostly         get_rps_cpu
 struct_bpf_prog*                    xdp_prog                -                   read_mostly         netif_elide_gro()
-unsigned_long                       gro_flush_timeout       -                   read_mostly         napi_complete_done
 unsigned_int                        gro_max_size            -                   read_mostly         skb_gro_receive
 unsigned_int                        gro_ipv4_max_size       -                   read_mostly         skb_gro_receive
 rx_handler_func_t*                  rx_handler              read_mostly         -                   __netif_receive_skb_core
@@ -182,4 +181,5 @@ struct_devlink_port*                devlink_port
 struct_dpll_pin*                    dpll_pin                                                        
 struct hlist_head                   page_pools
 struct dim_irq_moder*               irq_moder
+unsigned_long                       gro_flush_timeout
 u32                                 napi_defer_hard_irqs
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index f0537826f840..fcdf73486d46 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -438,7 +438,7 @@ struct idpf_q_vector {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_q_vector, 112,
-			    424 + 2 * sizeof(struct dim),
+			    440 + 2 * sizeof(struct dim),
 			    8 + sizeof(cpumask_var_t));
 
 struct idpf_rx_queue_stats {
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 55764efc5c93..33897edd16c8 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -377,6 +377,7 @@ struct napi_struct {
 	struct list_head	dev_list;
 	struct hlist_node	napi_hash_node;
 	int			irq;
+	unsigned long		gro_flush_timeout;
 	u32			defer_hard_irqs;
 };
 
@@ -2075,7 +2076,6 @@ struct net_device {
 	int			ifindex;
 	unsigned int		real_num_rx_queues;
 	struct netdev_rx_queue	*_rx;
-	unsigned long		gro_flush_timeout;
 	unsigned int		gro_max_size;
 	unsigned int		gro_ipv4_max_size;
 	rx_handler_func_t __rcu	*rx_handler;
@@ -2398,6 +2398,7 @@ struct net_device {
 
 	/** @irq_moder: dim parameters used if IS_ENABLED(CONFIG_DIMLIB). */
 	struct dim_irq_moder	*irq_moder;
+	unsigned long		gro_flush_timeout;
 	u32			napi_defer_hard_irqs;
 
 	u8			priv[] ____cacheline_aligned
diff --git a/net/core/dev.c b/net/core/dev.c
index 748739958d2a..056ed44f766f 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6226,12 +6226,12 @@ bool napi_complete_done(struct napi_struct *n, int work_done)
 
 	if (work_done) {
 		if (n->gro_bitmask)
-			timeout = READ_ONCE(n->dev->gro_flush_timeout);
+			timeout = napi_get_gro_flush_timeout(n);
 		n->defer_hard_irqs_count = napi_get_defer_hard_irqs(n);
 	}
 	if (n->defer_hard_irqs_count > 0) {
 		n->defer_hard_irqs_count--;
-		timeout = READ_ONCE(n->dev->gro_flush_timeout);
+		timeout = napi_get_gro_flush_timeout(n);
 		if (timeout)
 			ret = false;
 	}
@@ -6366,7 +6366,7 @@ static void busy_poll_stop(struct napi_struct *napi, void *have_poll_lock,
 
 	if (flags & NAPI_F_PREFER_BUSY_POLL) {
 		napi->defer_hard_irqs_count = napi_get_defer_hard_irqs(napi);
-		timeout = READ_ONCE(napi->dev->gro_flush_timeout);
+		timeout = napi_get_gro_flush_timeout(napi);
 		if (napi->defer_hard_irqs_count && timeout) {
 			hrtimer_start(&napi->timer, ns_to_ktime(timeout), HRTIMER_MODE_REL_PINNED);
 			skip_schedule = true;
@@ -6648,6 +6648,7 @@ void netif_napi_add_weight(struct net_device *dev, struct napi_struct *napi,
 	hrtimer_init(&napi->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL_PINNED);
 	napi->timer.function = napi_watchdog;
 	napi_set_defer_hard_irqs(napi, READ_ONCE(dev->napi_defer_hard_irqs));
+	napi_set_gro_flush_timeout(napi, READ_ONCE(dev->gro_flush_timeout));
 	init_gro_hash(napi);
 	napi->skb = NULL;
 	INIT_LIST_HEAD(&napi->rx_list);
@@ -11053,7 +11054,7 @@ void netdev_sw_irq_coalesce_default_on(struct net_device *dev)
 	WARN_ON(dev->reg_state == NETREG_REGISTERED);
 
 	if (!IS_ENABLED(CONFIG_PREEMPT_RT)) {
-		dev->gro_flush_timeout = 20000;
+		netdev_set_gro_flush_timeout(dev, 20000);
 		netdev_set_defer_hard_irqs(dev, 1);
 	}
 }
@@ -11991,7 +11992,6 @@ static void __init net_dev_struct_check(void)
 	CACHELINE_ASSERT_GROUP_MEMBER(struct net_device, net_device_read_rx, ifindex);
 	CACHELINE_ASSERT_GROUP_MEMBER(struct net_device, net_device_read_rx, real_num_rx_queues);
 	CACHELINE_ASSERT_GROUP_MEMBER(struct net_device, net_device_read_rx, _rx);
-	CACHELINE_ASSERT_GROUP_MEMBER(struct net_device, net_device_read_rx, gro_flush_timeout);
 	CACHELINE_ASSERT_GROUP_MEMBER(struct net_device, net_device_read_rx, gro_max_size);
 	CACHELINE_ASSERT_GROUP_MEMBER(struct net_device, net_device_read_rx, gro_ipv4_max_size);
 	CACHELINE_ASSERT_GROUP_MEMBER(struct net_device, net_device_read_rx, rx_handler);
@@ -12003,7 +12003,7 @@ static void __init net_dev_struct_check(void)
 #ifdef CONFIG_NET_XGRESS
 	CACHELINE_ASSERT_GROUP_MEMBER(struct net_device, net_device_read_rx, tcx_ingress);
 #endif
-	CACHELINE_ASSERT_GROUP_SIZE(struct net_device, net_device_read_rx, 100);
+	CACHELINE_ASSERT_GROUP_SIZE(struct net_device, net_device_read_rx, 92);
 }
 
 /*
diff --git a/net/core/dev.h b/net/core/dev.h
index b3792219879b..26e598aa56c3 100644
--- a/net/core/dev.h
+++ b/net/core/dev.h
@@ -174,6 +174,46 @@ static inline void netdev_set_defer_hard_irqs(struct net_device *netdev,
 		napi_set_defer_hard_irqs(napi, defer);
 }
 
+/**
+ * napi_get_gro_flush_timeout - get the gro_flush_timeout
+ * @n: napi struct to get the gro_flush_timeout from
+ *
+ * Return: the per-NAPI value of the gro_flush_timeout field.
+ */
+static inline unsigned long
+napi_get_gro_flush_timeout(const struct napi_struct *n)
+{
+	return READ_ONCE(n->gro_flush_timeout);
+}
+
+/**
+ * napi_set_gro_flush_timeout - set the gro_flush_timeout for a napi
+ * @n: napi struct to set the gro_flush_timeout
+ * @timeout: timeout value to set
+ *
+ * napi_set_gro_flush_timeout sets the per-NAPI gro_flush_timeout
+ */
+static inline void napi_set_gro_flush_timeout(struct napi_struct *n,
+					      unsigned long timeout)
+{
+	WRITE_ONCE(n->gro_flush_timeout, timeout);
+}
+
+/**
+ * netdev_set_gro_flush_timeout - set gro_flush_timeout of a netdev's NAPIs
+ * @netdev: the net_device for which all NAPIs will have gro_flush_timeout set
+ * @timeout: the timeout value to set
+ */
+static inline void netdev_set_gro_flush_timeout(struct net_device *netdev,
+						unsigned long timeout)
+{
+	struct napi_struct *napi;
+
+	WRITE_ONCE(netdev->gro_flush_timeout, timeout);
+	list_for_each_entry(napi, &netdev->napi_list, dev_list)
+		napi_set_gro_flush_timeout(napi, timeout);
+}
+
 int rps_cpumask_housekeeping(struct cpumask *mask);
 
 #if defined(CONFIG_DEBUG_NET) && defined(CONFIG_BPF_SYSCALL)
diff --git a/net/core/net-sysfs.c b/net/core/net-sysfs.c
index 25125f356a15..2d9afc6e2161 100644
--- a/net/core/net-sysfs.c
+++ b/net/core/net-sysfs.c
@@ -409,7 +409,7 @@ NETDEVICE_SHOW_RW(tx_queue_len, fmt_dec);
 
 static int change_gro_flush_timeout(struct net_device *dev, unsigned long val)
 {
-	WRITE_ONCE(dev->gro_flush_timeout, val);
+	netdev_set_gro_flush_timeout(dev, val);
 	return 0;
 }
 
-- 
2.25.1

