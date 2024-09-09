Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C111972504
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 00:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE50D60842;
	Mon,  9 Sep 2024 22:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FIV77nsVQXhU; Mon,  9 Sep 2024 22:11:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF1B86083E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725919896;
	bh=haaj6QWfZ3f4f/0CGzntQEj06240hoo6CdwmjyyTOcA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MyVTtJdaMoGwFAzqKGCPL7IToBKH/f5VXCa/Pl/vlG0uJw4bucSuPidMVp14klakp
	 WSSvz8K154cDAIFnQ/Ack/YEI8GbxhdDvxcdBJzC2hB4Tocofv6RYY0BFutsCMuJkO
	 K/1ssYWooHPVepqThNk1DX7ond6sVXhZRBILXjfetlV24E/+Jv65UwriYRr9EVPmO1
	 V64JlPk4voKenYPB6JQ5SC9tE4KWhyDEIq/+IxDJBc1hhi/eM98NDm8xzwNvgYmC3g
	 LiX9i90HkasR5/tiI6Vgp0aRd4Nwy39qRdcYN5rv5w8/0DIabXTcro38k6RBYx+EdA
	 HMu02ePvGyKtQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF1B86083E;
	Mon,  9 Sep 2024 22:11:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A55CD1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 22:11:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 935086083D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 22:11:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jPR7bbRlyG3a for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 22:11:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BC5C56083A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC5C56083A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC5C56083A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 22:11:32 +0000 (UTC)
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-410-BTWbuX9UNUWg65tVwves3w-1; Mon,
 09 Sep 2024 18:11:28 -0400
X-MC-Unique: BTWbuX9UNUWg65tVwves3w-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 321B91955DC3; Mon,  9 Sep 2024 22:11:26 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.56])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 53B671956086; Mon,  9 Sep 2024 22:11:21 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 10 Sep 2024 00:10:01 +0200
Message-ID: <634b63e19c1466fd1c3e7db4276e14b6b223cc86.1725919039.git.pabeni@redhat.com>
In-Reply-To: <cover.1725919039.git.pabeni@redhat.com>
References: <cover.1725919039.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725919891;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=haaj6QWfZ3f4f/0CGzntQEj06240hoo6CdwmjyyTOcA=;
 b=fi1E4z0PwR2B+tZ8Qr86S42lV+AdrYD+ouL7oV7zLG+GKNOoXG3+f2uRTmYb7PLNQS8trg
 Dt3H6XO9SfgdljP+rx9agsV95znBE36ajAcxvh9EnQ64EaER1TNV+J0Y7y2JSYGjTOyfKU
 hCwFGIuEBgC2paecrdZN593DfCIa8Ds=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fi1E4z0P
Subject: [Intel-wired-lan] [PATCH v7 net-next 07/15] net-shapers: implement
 shaper cleanup on queue deletion
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

hook into netif_set_real_num_tx_queues() to cleanup any shaper
configured on top of the to-be-destroyed TX queues.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v6 -> v7:
 - don't touch the H/W for the queue shaper, the driver
   is supposed to clean it up.
 - it's up to the net shaper enabled caller to acquire the
   dev lock
---
 net/core/dev.c      |  2 ++
 net/core/dev.h      |  4 ++++
 net/shaper/shaper.c | 48 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 54 insertions(+)

diff --git a/net/core/dev.c b/net/core/dev.c
index 0e7e13db94db..23c0d0acbc40 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -2948,6 +2948,8 @@ int netif_set_real_num_tx_queues(struct net_device *dev, unsigned int txq)
 		if (dev->num_tc)
 			netif_setup_tc(dev, txq);
 
+		net_shaper_set_real_num_tx_queues(dev, txq);
+
 		dev_qdisc_change_real_num_tx(dev, txq);
 
 		dev->real_num_tx_queues = txq;
diff --git a/net/core/dev.h b/net/core/dev.h
index 13c558874af3..d3ea92949ff3 100644
--- a/net/core/dev.h
+++ b/net/core/dev.h
@@ -37,8 +37,12 @@ void dev_addr_check(struct net_device *dev);
 
 #if IS_ENABLED(CONFIG_NET_SHAPER)
 void net_shaper_flush_netdev(struct net_device *dev);
+void net_shaper_set_real_num_tx_queues(struct net_device *dev,
+				       unsigned int txq);
 #else
 static inline void net_shaper_flush_netdev(struct net_device *dev) {}
+static inline void net_shaper_set_real_num_tx_queues(struct net_device *dev,
+						     unsigned int txq) {}
 #endif
 
 /* sysctls not referred to from outside net/core/ */
diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index b502918b0a76..2ddd52ec28e3 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -1159,6 +1159,54 @@ void net_shaper_flush_netdev(struct net_device *dev)
 	net_shaper_flush(&binding);
 }
 
+void net_shaper_set_real_num_tx_queues(struct net_device *dev,
+				       unsigned int txq)
+{
+	struct net_shaper_hierarchy *hierarchy;
+	struct net_shaper_binding binding;
+	int i;
+
+	binding.type = NET_SHAPER_BINDING_TYPE_NETDEV;
+	binding.netdev = dev;
+	hierarchy = net_shaper_hierarchy(&binding);
+	if (!hierarchy)
+		return;
+
+	/* Only drivers implementing shapers support ensure
+	 * the lock is acquired in advance.
+	 */
+	lockdep_assert_held(&dev->lock);
+
+	/* Take action only when decreasing the tx queue number. */
+	for (i = txq; i < dev->real_num_tx_queues; ++i) {
+		struct net_shaper_handle handle, parent_handle;
+		struct net_shaper *shaper;
+		u32 index;
+
+		handle.scope = NET_SHAPER_SCOPE_QUEUE;
+		handle.id = i;
+		shaper = net_shaper_lookup(&binding, &handle);
+		if (!shaper)
+			continue;
+
+		/* Don't touch the H/W for the queue shaper, the drivers already
+		 * deleted the queue and related resources.
+		 */
+		parent_handle = shaper->parent;
+		index = net_shaper_handle_to_index(&handle);
+		xa_erase(&hierarchy->shapers, index);
+		kfree_rcu(shaper, rcu);
+
+		/* The recursion on parent does the full job. */
+		if (parent_handle.scope != NET_SHAPER_SCOPE_NODE)
+			continue;
+
+		shaper = net_shaper_lookup(&binding, &parent_handle);
+		if (shaper && !--shaper->leaves)
+			__net_shaper_delete(&binding, shaper, NULL);
+	}
+}
+
 static int __init shaper_init(void)
 {
 	return genl_register_family(&net_shaper_nl_family);
-- 
2.45.2

