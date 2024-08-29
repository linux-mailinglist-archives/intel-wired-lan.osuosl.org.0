Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0189649B6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 17:18:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0916419CC;
	Thu, 29 Aug 2024 15:18:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r0lFGeZF82_c; Thu, 29 Aug 2024 15:18:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5826419C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724944684;
	bh=t7RTWLeNuTd3THAPhgQZAWQBar62RfIOOxscc4k7O9c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xXG7tXtjJ9RlypvxxpRaRL7dhzBDHBqfQzzsHBiIHfx1r1xicx7r8eakaYVM35HtD
	 rsvWSpgnpGmn3AUqSI3sNwWrIVq1RBh0B2nYil/krNuoZi1+dDEFVj9K9PWVZNQixv
	 1MBLQCSX1aUfny9QN1Xoo8RRmUBOAGNbYnrzUIP6tFEVn9oocrHTIhYqLKqQO2G/iM
	 9Kyw3JK1xg++sHLIqbGq8xO0lYpbw4ir9YZJ0ZWGzXc0s09T4Fs1xB9i9LWk+9xXJp
	 3gzvHkYaFV0g0C2J38vbkv15UzA2hGHT1BqTGhUMB3xg3Utx21xsYXtcAoeB3B65WX
	 KqxiBtcLPvaEA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5826419C7;
	Thu, 29 Aug 2024 15:18:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 973471BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7BEEF40D37
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KY0nIO0EOKXa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 15:18:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CAB9B40CAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAB9B40CAB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CAB9B40CAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:17:59 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-319-ots-xb-_Nxuk0Ix-TkxfLg-1; Thu,
 29 Aug 2024 11:17:55 -0400
X-MC-Unique: ots-xb-_Nxuk0Ix-TkxfLg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 6019819560B4; Thu, 29 Aug 2024 15:17:53 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.217])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 7BD05300019C; Thu, 29 Aug 2024 15:17:48 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 29 Aug 2024 17:16:58 +0200
Message-ID: <c84fe3b76210a3a2224e16bc5c5826f3b71617f9.1724944117.git.pabeni@redhat.com>
In-Reply-To: <cover.1724944116.git.pabeni@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1724944678;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=t7RTWLeNuTd3THAPhgQZAWQBar62RfIOOxscc4k7O9c=;
 b=Gg/gd0e/36ghraVB8paTAk9gbyo8GUK8Bae6N+AAMKAaTvSQn527Sc7lU8ZVjfA/W1PkND
 zXKxGGuiMtQhSx1gxBbSVm3t3chXhtMnhhcLIKoYmeydQRjfBULXjyDYdBVP+kVt9PWs3y
 5DUyUvrs9voCwW3eDdepnsz9mgCIdUk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Gg/gd0e/
Subject: [Intel-wired-lan] [PATCH v5 net-next 05/12] net-shapers: implement
 delete support for NODE scope shaper
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

Leverage the previously introduced group operation to implement
the removal of NODE scope shaper, re-linking its leaves under the
the parent node before actually deleting the specified NODE scope
shaper.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v4 -> v5:
 - replace net_device* with binding* in most helpers
---
 net/shaper/shaper.c | 99 +++++++++++++++++++++++++++++++++++++++------
 1 file changed, 87 insertions(+), 12 deletions(-)

diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index f5e8464b8408..f0d594a34588 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -799,7 +799,7 @@ static int __net_shaper_delete(struct net_shaper_binding *binding,
 }
 
 static int __net_shaper_group(struct net_shaper_binding *binding,
-			      int leaves_count,
+			      bool cache_node, int leaves_count,
 			      const struct net_shaper_handle *leaves_handles,
 			      struct net_shaper_info *leaves,
 			      struct net_shaper_handle *node_handle,
@@ -850,12 +850,15 @@ static int __net_shaper_group(struct net_shaper_binding *binding,
 		}
 	}
 
-	/* For newly created node scope shaper, the following will update
-	 * the handle, due to id allocation.
-	 */
-	ret = net_shaper_cache_pre_insert(binding, node_handle, extack);
-	if (ret)
-		return ret;
+	if (cache_node) {
+		/* For newly created node scope shaper, the following will
+		 * update the handle, due to id allocation.
+		 */
+		ret = net_shaper_cache_pre_insert(binding, node_handle,
+						  extack);
+		if (ret)
+			return ret;
+	}
 
 	for (i = 0; i < leaves_count; ++i) {
 		leaf_handle = leaves_handles[i];
@@ -883,7 +886,8 @@ static int __net_shaper_group(struct net_shaper_binding *binding,
 
 	if (parent)
 		parent->leaves++;
-	net_shaper_cache_commit(binding, 1, node_handle, node);
+	if (cache_node)
+		net_shaper_cache_commit(binding, 1, node_handle, node);
 	net_shaper_cache_commit(binding, leaves_count, leaves_handles, leaves);
 	return 0;
 
@@ -892,6 +896,76 @@ static int __net_shaper_group(struct net_shaper_binding *binding,
 	return ret;
 }
 
+static int __net_shaper_pre_del_node(struct net_shaper_binding *binding,
+				     const struct net_shaper_handle *handle,
+				     const struct net_shaper_info *shaper,
+				     struct netlink_ext_ack *extack)
+{
+	struct net_shaper_data *data = net_shaper_binding_data(binding);
+	struct net_shaper_handle *leaves_handles, node_handle;
+	struct net_shaper_info *cur, *leaves, node = {};
+	int ret, leaves_count = 0;
+	unsigned long index;
+	bool cache_node;
+
+	if (!shaper->leaves)
+		return 0;
+
+	if (WARN_ON_ONCE(!data))
+		return -EINVAL;
+
+	/* Fetch the new node information. */
+	node_handle = shaper->parent;
+	cur = net_shaper_cache_lookup(binding, &node_handle);
+	if (cur) {
+		node = *cur;
+	} else {
+		/* A scope NODE shaper can be nested only to the NETDEV scope
+		 * shaper without creating the latter, this check may fail only
+		 * if the cache is in inconsistent status.
+		 */
+		if (WARN_ON_ONCE(node_handle.scope != NET_SHAPER_SCOPE_NETDEV))
+			return -EINVAL;
+	}
+
+	leaves = kcalloc(shaper->leaves,
+			 sizeof(struct net_shaper_info) +
+			 sizeof(struct net_shaper_handle), GFP_KERNEL);
+	if (!leaves)
+		return -ENOMEM;
+
+	leaves_handles = (struct net_shaper_handle *)&leaves[shaper->leaves];
+
+	/* Build the leaves arrays. */
+	xa_for_each(&data->shapers, index, cur) {
+		if (cur->parent.scope != handle->scope ||
+		    cur->parent.id != handle->id)
+			continue;
+
+		if (WARN_ON_ONCE(leaves_count == shaper->leaves)) {
+			ret = -EINVAL;
+			goto free;
+		}
+
+		net_shaper_index_to_handle(index,
+					   &leaves_handles[leaves_count]);
+		leaves[leaves_count++] = *cur;
+	}
+
+	/* When re-linking to the netdev shaper, avoid the eventual, implicit,
+	 * creation of the new node, would be surprising since the user is
+	 * doing a delete operation.
+	 */
+	cache_node = node_handle.scope != NET_SHAPER_SCOPE_NETDEV;
+	ret = __net_shaper_group(binding, cache_node, leaves_count,
+				 leaves_handles, leaves, &node_handle, &node,
+				 extack);
+
+free:
+	kfree(leaves);
+	return ret;
+}
+
 static int net_shaper_delete(struct net_shaper_binding *binding,
 			     const struct net_shaper_handle *handle,
 			     struct netlink_ext_ack *extack)
@@ -914,9 +988,10 @@ static int net_shaper_delete(struct net_shaper_binding *binding,
 	}
 
 	if (handle->scope == NET_SHAPER_SCOPE_NODE) {
-		/* TODO: implement support for scope NODE delete. */
-		ret = -EINVAL;
-		goto unlock;
+		ret = __net_shaper_pre_del_node(binding, handle, shaper,
+						extack);
+		if (ret)
+			goto unlock;
 	}
 
 	ret = __net_shaper_delete(binding, handle, shaper, extack);
@@ -972,7 +1047,7 @@ static int net_shaper_group(struct net_shaper_binding *binding,
 			old_nodes[old_nodes_count++] = leaves[i].parent;
 
 	mutex_lock(&data->lock);
-	ret = __net_shaper_group(binding, leaves_count, leaves_handles,
+	ret = __net_shaper_group(binding, true, leaves_count, leaves_handles,
 				 leaves, node_handle, node, extack);
 
 	/* Check if we need to delete any NODE left alone by the new leaves
-- 
2.45.2

