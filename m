Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABEC996204
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 10:12:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8197840B83;
	Wed,  9 Oct 2024 08:12:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XNKmA8U62NJX; Wed,  9 Oct 2024 08:12:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85B3D40B30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728461524;
	bh=Eui556oY87SbUJSjkwki1SLeRle62IC4AC++NE4LUXs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x31aqtRauiU/NoneKwz7naQqIJf9/252yTz+H1qGDY8SfQWOj5phr4nXpTSB+txfA
	 3FwmadC7hvvFF3QyF0dmLwEmtfWMeZ/ly0rEhqrMvYkWhS9hW9uBqmm1c3JfBAMztt
	 /VznIijDFBgn46IbXdF6qLBBl4LaWOHTPv/7Kk5j/vUqjRumb1oz7x6RqmI5gJ21ve
	 DWp1UVcDrbOXOg1XesbtU3RmNm7wZEVmfhf6I6eBgW77NIk3ZJyrXIY8evbk51sQen
	 z3MoPcLc+X+ys5uLb9DqPojUvBGOKpz4ujV23PAJhycBaB3J9UELZOpruhAVvjlEAS
	 JM/G1pqdfDelg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85B3D40B30;
	Wed,  9 Oct 2024 08:12:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A02A1BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5801360897
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uEELB4LEYQ4R for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 08:12:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 81FA260863
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81FA260863
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81FA260863
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:01 +0000 (UTC)
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-433-EfZXg6wnMXuELczmjNYNOA-1; Wed,
 09 Oct 2024 04:11:54 -0400
X-MC-Unique: EfZXg6wnMXuELczmjNYNOA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id D195D1934D76; Wed,  9 Oct 2024 08:10:56 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.225.249])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 917E219560A2; Wed,  9 Oct 2024 08:10:51 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  9 Oct 2024 10:09:53 +0200
Message-ID: <6da4ee03cae2b2a757d7b59e88baf09cc94c5ef1.1728460186.git.pabeni@redhat.com>
In-Reply-To: <cover.1728460186.git.pabeni@redhat.com>
References: <cover.1728460186.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1728461519;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Eui556oY87SbUJSjkwki1SLeRle62IC4AC++NE4LUXs=;
 b=A4KEZT9Js8Bv5Oynt8HebkK6HqmOvhJprPGuzTsP4VOkErceFZx2Z6YbDxTT4PEBnAHkHA
 pO9+0vJVq4l/l8NrV2lmCqdSEWAG4TxAX7Rvv80auPnYqd4T6CdWE7rVsjuNuIsrj1gApn
 af7kp756HLt/12DhN8jB1vb8PowOcsk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=A4KEZT9J
Subject: [Intel-wired-lan] [PATCH v9 net-next 07/15] net-shapers: implement
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
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

hook into netif_set_real_num_tx_queues() to cleanup any shaper
configured on top of the to-be-destroyed TX queues.

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v6 -> v7:
 - don't touch the H/W for the queue shaper, the driver
   is supposed to reset clean it up.
 - it's up to the net shaper enabled caller to acquire the
   dev lock
---
 net/core/dev.c      |  2 ++
 net/core/dev.h      |  4 ++++
 net/shaper/shaper.c | 48 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 54 insertions(+)

diff --git a/net/core/dev.c b/net/core/dev.c
index 6e727c49a6f7..b590eefce3b4 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -2949,6 +2949,8 @@ int netif_set_real_num_tx_queues(struct net_device *dev, unsigned int txq)
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
index ddd1999b3f27..85ad172833fc 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -1157,6 +1157,54 @@ void net_shaper_flush_netdev(struct net_device *dev)
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

