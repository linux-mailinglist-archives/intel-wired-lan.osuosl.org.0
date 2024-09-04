Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BF396BF40
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 15:57:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 545C7811F8;
	Wed,  4 Sep 2024 13:57:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I3z_N_dEAUwO; Wed,  4 Sep 2024 13:57:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56DC5811F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725458241;
	bh=/rDzmx9qvAFTo5DWPajpgBxxGC3BMj+Ow3FbdsiEZOE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NokK0HeP0sZ8MwWjPzE+OovhpzZSTWDpCpaLNVl/ScEHQ+M69vXVKqOo4gIgWlGLE
	 hN6LvQaZkBmMTVaiciMZNV6AHzO3R9TJ88A+KG045lTpTnfs0MTpd7tL+z4F3O/o3v
	 KWkcbDwCZ17OEYFhLvSN+vymOKFti4XLzn6GPvczaVF22uKduIx4YMnDkiNb6TA3jz
	 psRGAD9gqwLTD+3SFEcjFraM8lsqh3B814DS5iW3ehaICRojaPKYQn4oGN+Pytbsqe
	 OcoGQ4DIDc4taUi8CUAgAGLizVJVZpRXrp4scLfO2jm7DEduBy05/1YFqBuysyAYPk
	 BpymfxIn2RMog==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56DC5811F5;
	Wed,  4 Sep 2024 13:57:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 742A41BF479
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:57:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6DC646089F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:57:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OsAYoXdHvTGi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 13:57:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8E9996089D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E9996089D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E9996089D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:57:18 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-237-5iUOcPQ7P-iAxqGK2wZ5Gw-1; Wed,
 04 Sep 2024 09:57:14 -0400
X-MC-Unique: 5iUOcPQ7P-iAxqGK2wZ5Gw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 84E2E19560B5; Wed,  4 Sep 2024 13:57:11 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.225.58])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id CE3901956086; Wed,  4 Sep 2024 13:57:06 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  4 Sep 2024 15:53:38 +0200
Message-ID: <6ce5659240b0f0eb24c8afff4a0611659b089bed.1725457317.git.pabeni@redhat.com>
In-Reply-To: <cover.1725457317.git.pabeni@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725458237;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/rDzmx9qvAFTo5DWPajpgBxxGC3BMj+Ow3FbdsiEZOE=;
 b=IOEfmrJuR0emeiLTf49Bz2Gqnfql2ss/WUQTt+auC8yP+qnt3fL3iX9Am8NkCf/SFfh54c
 5zjnTln6RkzQMAhZj97dgDZnJW+07KpNNVMaWkv9Jv/E9W6KCnLN557q7O+bzI0G0674Mr
 NNrhoP+R1EKNcOGwcctV6PeyI+maP6k=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IOEfmrJu
Subject: [Intel-wired-lan] [PATCH v6 net-next 06/15] net-shapers: implement
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
 net/shaper/shaper.c | 87 ++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 75 insertions(+), 12 deletions(-)

diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index c409acbe768c..1255d532b36a 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -804,7 +804,8 @@ static int net_shaper_parent_from_leaves(int leaves_count,
 }
 
 static int __net_shaper_group(struct net_shaper_binding *binding,
-			      int leaves_count, struct net_shaper *leaves,
+			      bool update_node, int leaves_count,
+			      struct net_shaper *leaves,
 			      struct net_shaper *node,
 			      struct netlink_ext_ack *extack)
 {
@@ -848,12 +849,14 @@ static int __net_shaper_group(struct net_shaper_binding *binding,
 		}
 	}
 
-	/* For newly created node scope shaper, the following will update
-	 * the handle, due to id allocation.
-	 */
-	ret = net_shaper_pre_insert(binding, &node->handle, extack);
-	if (ret)
-		return ret;
+	if (update_node) {
+		/* For newly created node scope shaper, the following will
+		 * update the handle, due to id allocation.
+		 */
+		ret = net_shaper_pre_insert(binding, &node->handle, extack);
+		if (ret)
+			return ret;
+	}
 
 	for (i = 0; i < leaves_count; ++i) {
 		leaf_handle = leaves[i].handle;
@@ -878,7 +881,8 @@ static int __net_shaper_group(struct net_shaper_binding *binding,
 
 	if (parent)
 		parent->leaves++;
-	net_shaper_commit(binding, 1, node);
+	if (update_node)
+		net_shaper_commit(binding, 1, node);
 	net_shaper_commit(binding, leaves_count, leaves);
 	return 0;
 
@@ -887,6 +891,64 @@ static int __net_shaper_group(struct net_shaper_binding *binding,
 	return ret;
 }
 
+static int net_shaper_pre_del_node(struct net_shaper_binding *binding,
+				   const struct net_shaper *shaper,
+				   struct netlink_ext_ack *extack)
+{
+	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
+	struct net_shaper *cur, *leaves, node = {};
+	int ret, leaves_count = 0;
+	unsigned long index;
+	bool update_node;
+
+	if (!shaper->leaves)
+		return 0;
+
+	/* Fetch the new node information. */
+	node.handle = shaper->parent;
+	cur = net_shaper_lookup(binding, &node.handle);
+	if (cur) {
+		node = *cur;
+	} else {
+		/* A scope NODE shaper can be nested only to the NETDEV scope
+		 * shaper without creating the latter, this check may fail only
+		 * if the data is in inconsistent status.
+		 */
+		if (WARN_ON_ONCE(node.handle.scope != NET_SHAPER_SCOPE_NETDEV))
+			return -EINVAL;
+	}
+
+	leaves = kcalloc(shaper->leaves, sizeof(struct net_shaper),
+			 GFP_KERNEL);
+	if (!leaves)
+		return -ENOMEM;
+
+	/* Build the leaves arrays. */
+	xa_for_each(&hierarchy->shapers, index, cur) {
+		if (net_shaper_handle_cmp(&cur->parent, &shaper->handle))
+			continue;
+
+		if (WARN_ON_ONCE(leaves_count == shaper->leaves)) {
+			ret = -EINVAL;
+			goto free;
+		}
+
+		leaves[leaves_count++] = *cur;
+	}
+
+	/* When re-linking to the netdev shaper, avoid the eventual, implicit,
+	 * creation of the new node, would be surprising since the user is
+	 * doing a delete operation.
+	 */
+	update_node = node.handle.scope != NET_SHAPER_SCOPE_NETDEV;
+	ret = __net_shaper_group(binding, update_node, leaves_count,
+				 leaves, &node, extack);
+
+free:
+	kfree(leaves);
+	return ret;
+}
+
 static int net_shaper_delete(struct net_shaper_binding *binding,
 			     const struct net_shaper_handle *handle,
 			     struct netlink_ext_ack *extack)
@@ -910,9 +972,9 @@ static int net_shaper_delete(struct net_shaper_binding *binding,
 	}
 
 	if (handle->scope == NET_SHAPER_SCOPE_NODE) {
-		/* TODO: implement support for scope NODE delete. */
-		ret = -EINVAL;
-		goto unlock;
+		ret = net_shaper_pre_del_node(binding, shaper, extack);
+		if (ret)
+			goto unlock;
 	}
 
 	ret = __net_shaper_delete(binding, shaper, extack);
@@ -977,7 +1039,8 @@ static int net_shaper_group(struct net_shaper_binding *binding,
 		}
 	}
 
-	ret = __net_shaper_group(binding, leaves_count, leaves, node, extack);
+	ret = __net_shaper_group(binding, true, leaves_count, leaves, node,
+				 extack);
 
 	/* Check if we need to delete any nde left alone by the new leaves
 	 * linkage.
-- 
2.45.2

